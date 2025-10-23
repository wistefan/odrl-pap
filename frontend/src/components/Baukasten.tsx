import { useEffect, useState } from 'react';
import { Form, Row, Col } from 'react-bootstrap';
import { UiService } from '../api/services/UiService';
import type { Mappings, OdrlPolicyJson } from '../services/api';
import ConstraintBuilder from './ConstraintBuilder';
import TargetEditor from './TargetEditor';
import AssigneeEditor from './AssigneeEditor';
import PolicySummary from './PolicySummary';

interface BaukastenProps {
  policy: OdrlPolicyJson;
  setPolicy: (policy: OdrlPolicyJson) => void;
}

const Baukasten = ({ policy, setPolicy }: BaukastenProps) => {
  const [mappings, setMappings] = useState<Mappings | null>(null);

  useEffect(() => {
    UiService.getMappings().then(setMappings).catch(console.error);
  }, []);

  const handlePermissionChange = (field: string, value: any) => {
    const newPolicy = { ...policy };
    if (!newPolicy['odrl:permission']) {
      newPolicy['odrl:permission'] = {};
    }
    newPolicy['odrl:permission'][field] = value;
    setPolicy(newPolicy);
  };

  const setPermission = (newPermission: any) => {
    setPolicy({ ...policy, 'odrl:permission': newPermission });
  }

  if (!mappings) {
    return <p>Loading mappings...</p>;
  }

  const permission = policy['odrl:permission'] || {};

  return (
    <Row>
      <Col md={7}>
        <Form>
          <Form.Group as={Row} className="mb-3">
            <Form.Label column sm={2}>Target</Form.Label>
            <Col sm={10}>
              <TargetEditor
                target={permission['odrl:target']}
                setTarget={(target) => handlePermissionChange('odrl:target', target)}
                mappings={mappings}
              />
            </Col>
          </Form.Group>

          <Form.Group as={Row} className="mb-3">
            <Form.Label column sm={2}>Assignee</Form.Label>
            <Col sm={10}>
              <AssigneeEditor
                assignee={permission['odrl:assignee']}
                setAssignee={(assignee) => handlePermissionChange('odrl:assignee', assignee)}
                mappings={mappings}
              />
            </Col>
          </Form.Group>

          <Form.Group as={Row} className="mb-3">
            <Form.Label column sm={2}>Action</Form.Label>
            <Col sm={10}>
              <Form.Select
                value={permission['odrl:action'] || ''}
                onChange={(e) => handlePermissionChange('odrl:action', e.target.value)}
              >
                <option>Select an action</option>
                {(mappings as any).actions?.map((action: any) => (
                  <option key={action.name} value={action.name}>{action.name} - {action.description}</option>
                ))}
              </Form.Select>
            </Col>
          </Form.Group>

          <hr />
          <h5>Constraints</h5>
          <ConstraintBuilder
            parent={permission}
            setParent={setPermission}
            mappings={mappings}
          />

        </Form>
      </Col>
      <Col md={5}>
        <PolicySummary policy={policy} />
      </Col>
    </Row>
  );
};

export default Baukasten;