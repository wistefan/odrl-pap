import { Form, Row, Col, Button, Stack } from 'react-bootstrap';
import type { Mappings } from '../services/api';
import { useState, useEffect } from 'react';

interface ConstraintBuilderProps {
  parent: any;
  setParent: (newParent: any) => void;
  mappings: Mappings;
}

const ConstraintBuilder = ({ parent, setParent, mappings }: ConstraintBuilderProps) => {
  const [internalConstraints, setInternalConstraints] = useState([]);
  const [logicalType, setLogicalType] = useState('and');

  // When the component initializes or the parent constraint changes, update internal state
  useEffect(() => {
    const constraint = parent['odrl:constraint'];
    if (constraint) {
      if (constraint['@type'] === 'odrl:LogicalConstraint') {
        if (constraint['odrl:or']) {
          setLogicalType('or');
          setInternalConstraints(constraint['odrl:or']);
        } else if (constraint['odrl:xone']) {
          setLogicalType('xone');
          setInternalConstraints(constraint['odrl:xone']);
        }
      } else if (Array.isArray(constraint)) {
        setLogicalType('and');
        setInternalConstraints(constraint);
      }
    }
  }, [parent['odrl:constraint']]);

  // When internal state changes, update the parent
  useEffect(() => {
    if (logicalType === 'and') {
      setParent({ ...parent, 'odrl:constraint': internalConstraints });
    } else {
      const logicalKey = `odrl:${logicalType}`;
      const logicalConstraint = {
        '@type': 'odrl:LogicalConstraint',
        [logicalKey]: internalConstraints,
      };
      setParent({ ...parent, 'odrl:constraint': logicalConstraint });
    }
  }, [internalConstraints, logicalType]);

  const handleConstraintChange = (index: number, field: string, value: any) => {
    const newConstraints = [...internalConstraints];
    newConstraints[index] = { ...newConstraints[index], [field]: value };
    setInternalConstraints(newConstraints);
  };

  const addConstraint = () => {
    setInternalConstraints([...internalConstraints, {}]);
  };

  const removeConstraint = (index: number) => {
    const newConstraints = [...internalConstraints];
    newConstraints.splice(index, 1);
    setInternalConstraints(newConstraints);
  };

  const anyMappings = mappings as any;
  const leftOperands = anyMappings.leftOperands ?? anyMappings.operands;
  const rightOperands = anyMappings.rightOperands ?? anyMappings.operands;

  const getRightOperandType = (constraint: any) => {
    const rightOperand = constraint['odrl:rightOperand'];
    if (!rightOperand) return 'named';
    if (rightOperand['@value'] !== undefined) return 'literal';
    return 'named';
  }

  const handleRightOperandTypeChange = (index: number, type: 'named' | 'literal') => {
    if (type === 'named') {
      handleConstraintChange(index, 'odrl:rightOperand', { '@id': '' });
    } else {
      handleConstraintChange(index, 'odrl:rightOperand', { '@value': '', '@type': '' });
    }
  }

  return (
    <Stack gap={3}>
      {internalConstraints.length > 1 && (
        <Row>
          <Col md={4}>
            <Form.Group>
              <Form.Label>Constraint Grouping</Form.Label>
              <Form.Select value={logicalType} onChange={(e) => setLogicalType(e.target.value)}>
                <option value="and">All must be true (AND)</option>
                <option value="or">Any can be true (OR)</option>
                <option value="xone">Only one can be true (XONE)</option>
              </Form.Select>
            </Form.Group>
          </Col>
        </Row>
      )}

      {internalConstraints.map((constraint: any, index: number) => (
        <Row key={index} className="g-2 align-items-center p-2 border rounded">
          <Col md={3}>
            <Form.Select
              value={constraint['odrl:leftOperand']?.['@id'] || ''}
              onChange={(e) => handleConstraintChange(index, 'odrl:leftOperand', { '@id': e.target.value })}
            >
              <option>Select Left Operand</option>
              {leftOperands?.map((op: any) => (
                <option key={op.name} value={op.name}>{op.name} - {op.description}</option>
              ))}
            </Form.Select>
          </Col>
          <Col md={2}>
            <Form.Select
              value={constraint['odrl:operator']?.['@id'] || ''}
              onChange={(e) => handleConstraintChange(index, 'odrl:operator', { '@id': e.target.value })}
            >
              <option>Select Operator</option>
              {anyMappings.operators?.map((op: any) => (
                <option key={op.name} value={op.name}>{op.name} - {op.description}</option>
              ))}
            </Form.Select>
          </Col>
          <Col md={7}>
            <Row>
                <Col sm={4}>
                    <Form.Select value={getRightOperandType(constraint)} onChange={(e) => handleRightOperandTypeChange(index, e.target.value as any)}>
                        <option value="named">Named Value</option>
                        <option value="literal">Literal Value</option>
                    </Form.Select>
                </Col>
                <Col sm={8}>
                    {getRightOperandType(constraint) === 'named' ? (
                        <Form.Select
                            value={constraint['odrl:rightOperand']?.['@id'] || ''}
                            onChange={(e) => handleConstraintChange(index, 'odrl:rightOperand', { '@id': e.target.value })}
                            >
                            <option>Select Right Operand</option>
                            {rightOperands?.map((op: any) => (
                                <option key={op.name} value={op.name}>{op.name} - {op.description}</option>
                            ))}
                        </Form.Select>
                    ) : (
                        <Stack direction="horizontal" gap={2}>
                            <Form.Control
                                type="text"
                                placeholder="Value"
                                value={constraint['odrl:rightOperand']?.['@value'] || ''}
                                onChange={(e) => handleConstraintChange(index, 'odrl:rightOperand', { ...constraint['odrl:rightOperand'], '@value': e.target.value })}
                                />
                            <Form.Control
                                type="text"
                                placeholder="Type (e.g. xsd:date)"
                                value={constraint['odrl:rightOperand']?.['@type'] || ''}
                                onChange={(e) => handleConstraintChange(index, 'odrl:rightOperand', { ...constraint['odrl:rightOperand'], '@type': e.target.value })}
                                />
                        </Stack>
                    )}
                </Col>
            </Row>
          </Col>
          <Col md={12} className="d-flex justify-content-end mt-2">
            <Button variant="danger" size="sm" onClick={() => removeConstraint(index)}>Remove Constraint</Button>
          </Col>
        </Row>
      ))}
      <Row>
        <Col>
          <Button variant="success" onClick={addConstraint}>+ Add Constraint</Button>
        </Col>
      </Row>
    </Stack>
  );
};

export default ConstraintBuilder;