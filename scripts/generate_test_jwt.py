#!/usr/bin/env python3
"""
Generate JWT tokens with different payloads for ODRL-PAP testing.
Note: This generates unsigned tokens for testing purposes only.
"""

import base64
import json
import argparse
from typing import Dict, Any, List


def base64url_encode(data: bytes) -> str:
    """Base64URL encode without padding."""
    return base64.urlsafe_b64encode(data).decode('utf-8').rstrip('=')


def create_jwt_payload(
    issuer: str = "did:web:kordat.org",
    credential_issuer: str = "did:web:kordat.org", 
    target_org: str = "did:web:test.org",
    role_names: List[str] = None
) -> Dict[str, Any]:
    """Create a JWT payload with the specified parameters."""
    if role_names is None:
        role_names = ["Owner"]
    
    return {
        "jti": "myTestToken",
        "iss": issuer,
        "verifiableCredential": {
            "type": [],
            "issuer": credential_issuer,
            "id": "urn:my-id",
            "credentialSubject": {
                "rolesAndDuties": [{
                    "target": target_org,
                    "roleNames": role_names
                }]
            }
        }
    }


def create_jwt_header() -> Dict[str, Any]:
    """Create a standard JWT header."""
    return {
        "alg": "RS256",
        "typ": "JWT",
        "kid": "j-EPmu0uGTNfq06RLkXVYPlzhir9OnLxMlgmxFjef94"
    }


def generate_unsigned_jwt(payload: Dict[str, Any]) -> str:
    """Generate an unsigned JWT token (for testing only)."""
    header = create_jwt_header()
    
    # Encode header and payload
    header_b64 = base64url_encode(json.dumps(header, separators=(',', ':')).encode())
    payload_b64 = base64url_encode(json.dumps(payload, separators=(',', ':')).encode())
    
    # Create unsigned token (signature is just "UNSIGNED")
    signature = base64url_encode(b"UNSIGNED_TOKEN_FOR_TESTING_ONLY")
    
    return f"{header_b64}.{payload_b64}.{signature}"


def decode_jwt_payload(token: str) -> Dict[str, Any]:
    """Decode and return the payload from a JWT token."""
    parts = token.split('.')
    if len(parts) != 3:
        raise ValueError("Invalid JWT format")
    
    # Add padding if needed
    payload_part = parts[1]
    padding = len(payload_part) % 4
    if padding:
        payload_part += '=' * (4 - padding)
    
    decoded_bytes = base64.urlsafe_b64decode(payload_part)
    return json.loads(decoded_bytes.decode('utf-8'))


def main():
    parser = argparse.ArgumentParser(description='Generate JWT tokens for ODRL-PAP testing')
    parser.add_argument('--issuer', default='did:web:test.org', help='JWT issuer')
    parser.add_argument('--credential-issuer', help='Verifiable credential issuer (defaults to --issuer)')
    parser.add_argument('--target', help='Target organization (defaults to --issuer)')
    parser.add_argument('--roles', nargs='+', default=['Owner'], help='Role names')
    parser.add_argument('--decode', help='Decode an existing JWT token')
    parser.add_argument('--format', choices=['token', 'payload', 'both'], default='both', 
                       help='Output format')
    
    args = parser.parse_args()
    
    if args.decode:
        try:
            payload = decode_jwt_payload(args.decode)
            print("Decoded JWT payload:")
            print(json.dumps(payload, indent=2))
        except Exception as e:
            print(f"Error decoding JWT: {e}")
        return
    
    # Set defaults
    credential_issuer = args.credential_issuer or args.issuer
    target_org = args.target or args.issuer
    
    # Create payload
    payload = create_jwt_payload(
        issuer=args.issuer,
        credential_issuer=credential_issuer,
        target_org=target_org,
        role_names=args.roles
    )
    
    # Generate token
    token = generate_unsigned_jwt(payload)
    
    # Output based on format
    if args.format in ['payload', 'both']:
        print("JWT Payload:")
        print(json.dumps(payload, indent=2))
        if args.format == 'both':
            print()
    
    if args.format in ['token', 'both']:
        print("JWT Token:")
        print(token)


# Predefined test scenarios
TEST_SCENARIOS = {
    'default': {
        'issuer': 'did:web:test.org',
        'description': 'Default test organization'
    },
    'marketplace': {
        'issuer': 'did:web:marketplace.dome.org',
        'credential_issuer': 'did:web:marketplace.dome.org',
        'target': 'did:web:marketplace.dome.org',
        'roles': ['Administrator', 'DataProvider'],
        'description': 'DOME Marketplace scenario'
    },
    'external_org': {
        'issuer': 'did:web:external.company.com',
        'credential_issuer': 'did:web:external.company.com', 
        'target': 'did:web:test.org',
        'roles': ['Reader'],
        'description': 'External organization accessing test resources'
    },
    'multi_role': {
        'issuer': 'did:web:admin.org',
        'roles': ['Owner', 'Administrator', 'DataProcessor'],
        'description': 'Organization with multiple roles'
    }
}


def generate_test_scenarios():
    """Generate tokens for all predefined test scenarios."""
    print("# JWT Test Scenarios for ODRL-PAP")
    print("# Generated tokens for testing different access patterns\n")
    
    for scenario_name, config in TEST_SCENARIOS.items():
        print(f"## Scenario: {scenario_name}")
        print(f"# {config['description']}")
        
        payload = create_jwt_payload(
            issuer=config.get('issuer', 'did:web:test.org'),
            credential_issuer=config.get('credential_issuer', config.get('issuer', 'did:web:test.org')),
            target_org=config.get('target', config.get('issuer', 'did:web:test.org')),
            role_names=config.get('roles', ['Owner'])
        )
        
        token = generate_unsigned_jwt(payload)
        
        print(f"export JWT_{scenario_name.upper()}='{token}'")
        print()


if __name__ == '__main__':
    import sys
    
    if len(sys.argv) > 1 and sys.argv[1] == 'scenarios':
        generate_test_scenarios()
    else:
        main()
