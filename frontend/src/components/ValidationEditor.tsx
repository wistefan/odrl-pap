import { Form, Row, Col, Stack, Button, Alert } from 'react-bootstrap';
import { useState } from 'react';
import type { TestRequest } from '../services/api';

interface ValidationEditorProps {
  testRequest: TestRequest;
  setTestRequest: (testRequest: TestRequest) => void;
}

const ValidationEditor = ({ testRequest, setTestRequest }: ValidationEditorProps) => {
  const [jwtPayloadInput, setJwtPayloadInput] = useState('{}');
  const [jwtError, setJwtError] = useState('');
  const [authType, setAuthType] = useState('none'); // 'none', 'manual', 'jwt'

  const handleChange = (field: keyof TestRequest, value: any) => {
    setTestRequest({ ...testRequest, [field]: value });
  };

  const handleHeaderChange = (field: string, value: string) => {
    const newHeaders = { ...(testRequest.headers || {}), [field]: value };
    handleChange('headers', newHeaders);
  };

  const base64UrlEncode = (str: string) => {
    return btoa(str).replace(/\+/g, '-').replace(/\//g, '_').replace(/=/g, '');
  };

  const generateJwt = () => {
    console.log('generateJwt called');
    try {
      const header = { alg: 'none', typ: 'JWT' };
      const payload = JSON.parse(jwtPayloadInput);
      console.log('Parsed payload:', payload);

      const encodedHeader = base64UrlEncode(JSON.stringify(header));
      const encodedPayload = base64UrlEncode(JSON.stringify(payload));

      const jwt = `${encodedHeader}.${encodedPayload}.`; // Unsigned JWT
      console.log('Generated JWT:', jwt);
      handleHeaderChange('authorization', `Bearer ${jwt}`);
      setJwtError('');
    } catch (e: any) {
      console.error('JWT generation error:', e);
      setJwtError('Invalid JSON payload for JWT');
    }
  };

  return (
    <Stack gap={3}>
      <Row>
        <Col sm={4}>
          <Form.Group>
            <Form.Label>Method</Form.Label>
            <Form.Select value={testRequest.method || ''} onChange={(e) => handleChange('method', e.target.value)}>
              <option>Select Method</option>
              <option value="GET">GET</option>
              <option value="POST">POST</option>
              <option value="PUT">PUT</option>
              <option value="PATCH">PATCH</option>
              <option value="DELETE">DELETE</option>
            </Form.Select>
          </Form.Group>
        </Col>
        <Col sm={8}>
          <Form.Group>
            <Form.Label>Host</Form.Label>
            <Form.Control
              type="text"
              placeholder="e.g., example.com"
              value={testRequest.host || ''}
              onChange={(e) => handleChange('host', e.target.value)}
            />
          </Form.Group>
        </Col>
      </Row>
      <Form.Group>
        <Form.Label>Path</Form.Label>
        <Form.Control
          type="text"
          placeholder="e.g., /my/resource"
          value={testRequest.path || ''}
          onChange={(e) => handleChange('path', e.target.value)}
        />
      </Form.Group>
      <hr />
      <h5>Headers</h5>
      <Row>
        <Col>
          <Form.Group>
            <Form.Label>Content-Type</Form.Label>
            <Form.Control
              type="text"
              value={testRequest.headers?.['content-type'] || 'application/json'}
              onChange={(e) => handleHeaderChange('content-type', e.target.value)}
            />
          </Form.Group>
        </Col>
        <Col>
          <Form.Group>
            <Form.Label>Authorization Type</Form.Label>
            <Form.Select value={authType} onChange={(e) => {
                setAuthType(e.target.value as any);
                if (e.target.value === 'none') handleHeaderChange('authorization', '');
            }}>
                <option value="none">None</option>
                <option value="manual">Manual Bearer Token</option>
                <option value="jwt">JWT Helper</option>
            </Form.Select>
          </Form.Group>
        </Col>
      </Row>
      {authType === 'manual' && (
        <Form.Group>
          <Form.Label>Authorization Header</Form.Label>
          <Form.Control
            type="text"
            placeholder="e.g., Bearer ..."
            value={testRequest.headers?.authorization || ''}
            onChange={(e) => handleHeaderChange('authorization', e.target.value)}
          />
        </Form.Group>
      )}
      {authType === 'jwt' && (
        <Stack gap={2}>
          <h5>JWT Helper</h5>
          <Form.Group>
            <Form.Label>JWT Payload (JSON)</Form.Label>
            <Form.Control
              as="textarea"
              rows={5}
              value={jwtPayloadInput}
              onChange={(e) => setJwtPayloadInput(e.target.value)}
              isInvalid={!!jwtError}
            />
            <Form.Control.Feedback type="invalid">{jwtError}</Form.Control.Feedback>
          </Form.Group>
          {jwtError && <Alert variant="danger">{jwtError}</Alert>}
          <Button variant="secondary" onClick={generateJwt}>Generate Unsigned JWT</Button>
        </Stack>
      )}
      <hr />
      <Form.Group>
        <Form.Label>Body</Form.Label>
        <Form.Control
          as="textarea"
          rows={8}
          placeholder='Enter JSON body'
          value={typeof testRequest.body === 'string' ? testRequest.body : JSON.stringify(testRequest.body, null, 2)}
          onChange={(e) => handleChange('body', e.target.value)}
        />
      </Form.Group>
    </Stack>
  );
};

export default ValidationEditor;