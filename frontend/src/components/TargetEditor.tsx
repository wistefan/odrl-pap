import { Form, Row, Col, Stack } from 'react-bootstrap';
import { useState } from 'react';
import type { Mappings } from '../services/api';
import ConstraintBuilder from './ConstraintBuilder';

interface TargetEditorProps {
  target: any;
  setTarget: (target: any) => void;
  mappings: Mappings;
}

const TargetEditor = ({ target, setTarget, mappings }: TargetEditorProps) => {
  const [simpleTargetType, setSimpleTargetType] = useState('text'); // 'text' or 'dropdown'

  const isCollection = typeof target === 'object' && target !== null && target['@type'] === 'AssetCollection';

  const setType = (type: 'simple' | 'collection') => {
    if (type === 'simple') {
      setTarget(''); // Reset to a simple string
      setSimpleTargetType('text'); // Default to text input for simple
    } else {
      setTarget({ '@type': 'AssetCollection', 'odrl:refinement': [] });
    }
  };

  const anyMappings = mappings as any;
  const availableTargets = anyMappings.targets;

  return (
    <Stack gap={3}>
      <Row>
        <Col>
          <Form.Check
            type="radio"
            id="simple-target"
            label="Simple Target"
            checked={!isCollection}
            onChange={() => setType('simple')}
          />
          <Form.Check
            type="radio"
            id="collection-target"
            label="Asset Collection"
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
                id="simple-target-text"
                label="Custom Target"
                checked={simpleTargetType === 'text'}
                onChange={() => {
                  setSimpleTargetType('text');
                  setTarget(''); // Clear value when switching type
                }}
              />
              <Form.Check
                type="radio"
                id="simple-target-dropdown"
                label="Select from options"
                checked={simpleTargetType === 'dropdown'}
                onChange={() => {
                  setSimpleTargetType('dropdown');
                  setTarget({ '@id': '' }); // Clear value when switching type
                }}
                disabled={!availableTargets || availableTargets.length === 0}
              />
            </Col>
          </Row>
          <Row>
            <Col>
              {simpleTargetType === 'text' ? (
                <Form.Control
                  type="text"
                  placeholder="Enter Target URL"
                  value={target || ''}
                  onChange={(e) => setTarget(e.target.value)}
                />
              ) : (
                <Form.Select
                  value={target?.['@id'] || ''}
                  onChange={(e) => setTarget({ '@id': e.target.value })}
                >
                  <option>Select a target</option>
                  {availableTargets?.map((t: any) => (
                    <option key={t.name} value={t.name}>{t.name} - {t.description}</option>
                  ))}
                </Form.Select>
              )}
            </Col>
          </Row>
        </Stack>
      ) : (
        <Stack gap={3} className="p-3 border rounded">
          <h5>Asset Collection</h5>
          <hr/>
          <h6>Refinements</h6>
          <ConstraintBuilder
            parent={target}
            setParent={setTarget}
            mappings={mappings}
          />
        </Stack>
      )}
    </Stack>
  );
};

export default TargetEditor;
