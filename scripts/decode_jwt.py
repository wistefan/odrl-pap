#!/usr/bin/env python3
import base64
import json
import sys

def decode_jwt_part(encoded_part):
    # Add padding if needed
    padding = len(encoded_part) % 4
    if padding:
        encoded_part += '=' * (4 - padding)
    
    decoded_bytes = base64.urlsafe_b64decode(encoded_part)
    return json.loads(decoded_bytes.decode('utf-8'))

# Default token if none provided
default_token = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6ImotRVBtdTB1R1ROZnEwNlJMa1hWWVBsemhpcjlPbkx4TWxnbXhGamVmOTQifQ.eyJqdGkiOiJteVRlc3RUb2tlbiIsImlzcyI6ImRpZDp3ZWI6d3Jvbmcub3JnIiwidmVyaWZpYWJsZUNyZWRlbnRpYWwiOnsidHlwZSI6W10sImlzc3VlciI6ImRpZDp3ZWI6d3Jvbmcub3JnIiwiaWQiOiJ1cm46bXktaWQiLCJjcmVkZW50aWFsU3ViamVjdCI6eyJyb2xlc0FuZER1dGllcyI6W3sidGFyZ2V0IjoiZGlkOndlYjp3cm9uZy5vcmciLCJyb2xlTmFtZXMiOlsiT3duZXIiXX1dfX19.VU5TSUdORURfVE9LRU5fRk9SX1RFU1RJTkdfT05MWQ"

# Get token from command line argument or use default
if len(sys.argv) > 1:
    full_token = sys.argv[1]
    print(f"Using token from command line argument")
else:
    full_token = default_token
    print(f"Using default hardcoded token: {default_token}")

parts = full_token.split('.')
if len(parts) >= 2:
    print("JWT Header:")
    decoded_header = decode_jwt_part(parts[0])
    print(json.dumps(decoded_header, indent=2))
    
    print("\nJWT Payload:")
    decoded_payload = decode_jwt_part(parts[1])
    print(json.dumps(decoded_payload, indent=2))

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] in ['--help', '-h']:
        print("Usage: python decode_jwt.py [JWT_TOKEN]")
        print("       If no token provided, uses hardcoded default")
        sys.exit(0)
