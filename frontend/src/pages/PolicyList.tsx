import { useEffect, useState } from 'react';
import { Table, Button } from 'react-bootstrap';
import { PapService } from '../api/services/PapService';
import type { Policy } from '../services/api';
import { Link } from 'react-router-dom';

const PolicyList = () => {
  const [policies, setPolicies] = useState<Policy[]>([]);

  useEffect(() => {
    PapService.getPolicies()
      .then(setPolicies)
      .catch(console.error);
  }, []);

  const handleDelete = (id: string) => {
    PapService.deletePolicyById(id)
      .then(() => {
        setPolicies(policies.filter(p => p.id !== id));
      })
      .catch(console.error);
  };

  return (
    <>
      <h1>Policies</h1>
      <Link to="/new" className="btn btn-primary mb-3">New Policy</Link>
      <Table striped bordered hover>
        <thead>
          <tr>
            <th>ID</th>
            <th>ODRL UID</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          {policies.map(policy => (
            <tr key={policy.id}>
              <td>{policy.id}</td>
              <td>{policy['odrl:uid']}</td>
              <td>
                <Link to={`/edit/${policy.id}`} className="btn btn-sm btn-primary me-2">Edit</Link>
                <Button variant="danger" size="sm" onClick={() => handleDelete(policy.id!)}>Delete</Button>
              </td>
            </tr>
          ))}
        </tbody>
      </Table>
    </>
  );
};

export default PolicyList;