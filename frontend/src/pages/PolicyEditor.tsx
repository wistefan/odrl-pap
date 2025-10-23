import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { Form, Button, Tabs, Tab, Modal, Alert } from 'react-bootstrap';
import { PapService } from '../api/services/PapService';
import { UiService } from '../api/services/UiService';
import type { OdrlPolicyJson, Policy, TestRequest, ValidationResponse } from '../services/api';
import Baukasten from '../components/Baukasten';
import ValidationEditor from '../components/ValidationEditor';

const NEW_POLICY_TEMPLATE = {
  '@context': 'http://www.w3.org/ns/odrl/2/',
  '@type': 'odrl:Policy',
  'odrl:permission': {},
};

const DEFAULT_TEST_REQUEST: TestRequest = {
    method: 'GET',
    host: 'example.com',
    path: '/',
    headers: {
        'content-type': 'application/json'
    },
    body: {}
}

const PolicyEditor = () => {
  const { id } = useParams();
  const navigate = useNavigate();
  const [policy, setPolicy] = useState<OdrlPolicyJson>({});
  const [key, setKey] = useState('baukasten');

  // Validation state
  const [showValidation, setShowValidation] = useState(false);
  const [testRequest, setTestRequest] = useState<TestRequest>(DEFAULT_TEST_REQUEST);
  const [validationResult, setValidationResult] = useState<ValidationResponse | null>(null);
  const [validationError, setValidationError] = useState('');

  useEffect(() => {
    if (id) {
      PapService.getPolicyById(id)
        .then((p: Policy) => setPolicy(JSON.parse(p.odrl!)))
        .catch(console.error);
    } else {
      // Create a new policy with a generated UID
      const newPolicy = {
        ...NEW_POLICY_TEMPLATE,
        'odrl:uid': crypto.randomUUID(),
      };
      setPolicy(newPolicy);
    }
  }, [id]);

  const handleSave = () => {
    const requestBody = policy;
    if (id) {
      PapService.createPolicyWithId(id, requestBody)
        .then(() => navigate('/'))
        .catch(console.error);
    } else {
      PapService.createPolicy(requestBody)
        .then(() => navigate('/'))
        .catch(console.error);
    }
  };

  const handleValidate = () => {
    try {
      // The body from the textarea is a string, try to parse it.
      const body = typeof testRequest.body === 'string' ? JSON.parse(testRequest.body) : testRequest.body;
      const finalTestRequest = { ...testRequest, body };

      const requestBody = { policy, testRequest: finalTestRequest };
      UiService.validatePolicy(requestBody)
        .then(setValidationResult)
        .catch(err => setValidationError(err.message));
    } catch (e: any) {
      setValidationError('Invalid JSON in body');
    }
  };

  const handleCloseValidation = () => {
    setShowValidation(false);
    setValidationResult(null);
    setValidationError('');
  }

  return (
    <>
      <h1>{id ? 'Edit Policy' : 'New Policy'}</h1>
      <Tabs
        id="policy-editor-tabs"
        activeKey={key}
        onSelect={(k) => setKey(k!)}
        className="mb-3"
      >
        <Tab eventKey="baukasten" title="Baukasten">
          <Baukasten policy={policy} setPolicy={setPolicy} />
        </Tab>
        <Tab eventKey="odrl" title="Raw ODRL">
          <Form.Control
            as="textarea"
            rows={20}
            value={JSON.stringify(policy, null, 2)}
            onChange={(e) => setPolicy(JSON.parse(e.target.value))}
          />
        </Tab>
      </Tabs>
      <hr />
      <Button variant="primary" onClick={handleSave}>Save</Button>
      <Button variant="secondary" className="ms-2" onClick={() => navigate('/')}>Cancel</Button>
      <Button variant="info" className="ms-2" onClick={() => setShowValidation(true)}>Validate</Button>

      {/* Validation Modal */}
      <Modal show={showValidation} onHide={handleCloseValidation} size="lg">
        <Modal.Header closeButton>
          <Modal.Title>Validate Policy</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <ValidationEditor testRequest={testRequest} setTestRequest={setTestRequest} />
          {validationResult && (
            <Alert variant={validationResult.allow ? 'success' : 'danger'} className="mt-3">
              <Alert.Heading>Validation Result</Alert.Heading>
              <pre>{JSON.stringify(validationResult, null, 2)}</pre>
            </Alert>
          )}
          {validationError && (
            <Alert variant="danger" className="mt-3">{validationError}</Alert>
          )}
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleCloseValidation}>Close</Button>
          <Button variant="primary" onClick={handleValidate}>Run Validation</Button>
        </Modal.Footer>
      </Modal>
    </>
  );
};

export default PolicyEditor;
