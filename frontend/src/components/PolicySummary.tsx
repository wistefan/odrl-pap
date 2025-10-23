import { Card, ListGroup, Badge, Stack, Button, Collapse } from 'react-bootstrap';
import { useState } from 'react';
import type { OdrlPolicyJson } from '../services/api';

interface PolicySummaryProps {
  policy: OdrlPolicyJson;
}

// Helper to render any kind of operand (string, @id, @value)
const renderOperand = (operand: any): string => {
  if (!operand) return '(not set)';
  if (typeof operand === 'string') return operand;
  if (operand['@id']) return operand['@id'].replace('odrl:', '');
  if (operand['@value']) return `'${operand['@value']}' (${operand['@type']})`;
  return JSON.stringify(operand);
}

const renderConstraint = (constraint: any, index: number) => (
  <ListGroup.Item key={index} as="li" className="d-flex justify-content-between align-items-start">
    <div className="ms-2 me-auto">
      <div className="fw-bold">Constraint</div>
      <Stack direction="horizontal" gap={2}>
        <Badge bg="secondary">{renderOperand(constraint['odrl:leftOperand'])}</Badge>
        <span className="fw-bold text-primary">{renderOperand(constraint['odrl:operator'])}</span>
        <Badge bg="secondary">{renderOperand(constraint['odrl:rightOperand'])}</Badge>
      </Stack>
    </div>
  </ListGroup.Item>
);

const renderRefinements = (refinements: any[]) => {
    if (!refinements || refinements.length === 0) return null;
    return (
        <div className="mt-2 ms-4">
            <h6>Refinements:</h6>
            <ListGroup as="ol" numbered>
                {refinements.map(renderConstraint)}
            </ListGroup>
        </div>
    );
};

const PolicySummary = ({ policy }: PolicySummaryProps) => {
  const [showJson, setShowJson] = useState(false);

  if (!policy) return null;

  const permission = policy['odrl:permission'] || {};
  const { 'odrl:target': target, 'odrl:assignee': assignee, 'odrl:action': action, 'odrl:constraint': constraint } = permission;

  const renderEntity = (entity: any, name: string) => {
    if (!entity) return <>{name}: (not set)</>;
    if (typeof entity === 'string') return <>{name}: {entity}</>;
    if (entity['@type']) {
      return (
        <>
          {name}: {entity['@type']}
          {renderRefinements(entity['odrl:refinement'])}
        </>
      );
    }
    return <>{name}: {JSON.stringify(entity)}</>;
  }

  const renderConstraints = () => {
    if (!constraint) return null;

    // Logical Constraint
    if (constraint['@type'] === 'odrl:LogicalConstraint') {
        const operator = Object.keys(constraint).find(k => k.startsWith('odrl:'));
        const constraints = operator ? constraint[operator] : [];
        return (
            <>
                <div className="fw-bold mt-3">Constraints <Badge bg="info">{operator?.replace('odrl:', '').toUpperCase()}</Badge></div>
                <ListGroup as="ol" numbered>{constraints.map(renderConstraint)}</ListGroup>
            </>
        )
    }

    // Array of constraints (implicit AND)
    if (Array.isArray(constraint)) {
        return (
            <>
                <div className="fw-bold mt-3">Constraints <Badge bg="info">AND</Badge></div>
                <ListGroup as="ol" numbered>{constraint.map(renderConstraint)}</ListGroup>
            </>
        )
    }

    // Single constraint
    return (
        <>
            <div className="fw-bold mt-3">Constraint</div>
            <ListGroup as="ol"><ListGroup.Item>{renderConstraint(constraint, 0)}</ListGroup.Item></ListGroup>
        </>
    )
  }

  return (
    <Card bg="light">
      <Card.Header as="h5" className="d-flex justify-content-between align-items-center">
        Policy Summary
        <Button variant="outline-secondary" size="sm" onClick={() => setShowJson(!showJson)}>
          {showJson ? 'Hide JSON' : 'Show JSON'}
        </Button>
      </Card.Header>
      <Card.Body>
        <Collapse in={!showJson}>
          <div>
            <Card.Text>
              <strong>UID:</strong> {policy['odrl:uid'] || '(not set)'}
            </Card.Text>
            <hr />
            <h6>Permission</h6>
            <ListGroup variant="flush">
              <ListGroup.Item>{renderEntity(target, 'Target')}</ListGroup.Item>
              <ListGroup.Item>{renderEntity(assignee, 'Assignee')}</ListGroup.Item>
              <ListGroup.Item>Action: {action || '(not set)'}</ListGroup.Item>
            </ListGroup>
            {renderConstraints()}
          </div>
        </Collapse>
        <Collapse in={showJson}>
          <div>
            <pre><code>{JSON.stringify(policy, null, 2)}</code></pre>
          </div>
        </Collapse>
      </Card.Body>
    </Card>
  );
};

export default PolicySummary;
