import { Form, Row, Col, Stack } from 'react-bootstrap';
import { useState } from 'react';
import type { Mappings } from '../services/api';
import ConstraintBuilder from './ConstraintBuilder';

interface AssigneeEditorProps {
  assignee: any;
  setAssignee: (assignee: any) => void;
  mappings: Mappings;
}

const AssigneeEditor = ({ assignee, setAssignee, mappings }: AssigneeEditorProps) => {
  const [simpleAssigneeType, setSimpleAssigneeType] = useState('text'); // 'text' or 'dropdown'

  const isCollection = typeof assignee === 'object' && assignee !== null && assignee['@type'] === 'PartyCollection';

  const setType = (type: 'simple' | 'collection') => {
    if (type === 'simple') {
      setAssignee(''); // Reset to a simple string
      setSimpleAssigneeType('text'); // Default to text input for simple
    } else {
      setAssignee({ '@type': 'PartyCollection', 'odrl:refinement': [] });
    }
  };

  const anyMappings = mappings as any;
  const availableAssignees = anyMappings.assignees;

  return (
    <Stack gap={3}>
      <Row>
        <Col>
          <Form.Check
            type="radio"
            id="simple-assignee"
            label="Simple Assignee"
            checked={!isCollection}
            onChange={() => setType('simple')}
          />
          <Form.Check
            type="radio"
            id="collection-assignee"
            label="Party Collection"
            checked={isCollection}
            onChange={() => setType('collection')}
          />
        </Col>
      </Row>

      {!isCollection ? (
        <Stack gap={2} className="p-3 border rounded">
          <Row>
            <Col>
              <Form.Check
                type="radio"
                id="simple-assignee-text"
                label="Custom Assignee"
                checked={simpleAssigneeType === 'text'}
                onChange={() => {
                  setSimpleAssigneeType('text');
                  setAssignee(''); // Clear value when switching type
                }}
              />
              <Form.Check
                type="radio"
                id="simple-assignee-dropdown"
                label="Select from options"
                checked={simpleAssigneeType === 'dropdown'}
                onChange={() => {
                  setSimpleAssigneeType('dropdown');
                  setAssignee({ '@id': '' }); // Clear value when switching type
                }}
                disabled={!availableAssignees || availableAssignees.length === 0}
              />
            </Col>
          </Row>
          <Row>
            <Col>
              {simpleAssigneeType === 'text' ? (
                <Form.Control
                  type="text"
                  placeholder="Enter Assignee ID"
                  value={assignee || ''}
                  onChange={(e) => setAssignee(e.target.value)}
                />
              ) : (
                <Form.Select
                  value={assignee?.['@id'] || ''}
                  onChange={(e) => setAssignee({ '@id': e.target.value })}
                >
                  <option>Select an assignee</option>
                  {availableAssignees?.map((a: any) => (
                    <option key={a.name} value={a.name}>{a.name} - {a.description}</option>
                  ))}
                </Form.Select>
              )}
            </Col>
          </Row>
        </Stack>
      ) : (
        <Stack gap={3} className="p-3 border rounded">
          <h5>Party Collection</h5>
          <hr/>
          <h6>Refinements</h6>
          <ConstraintBuilder
            parent={assignee}
            setParent={setAssignee}
            mappings={mappings}
          />
        </Stack>
      )}
    </Stack>
  );
};

export default AssigneeEditor;
