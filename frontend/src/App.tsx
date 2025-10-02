import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Layout from './components/Layout';
import PolicyList from './pages/PolicyList';
import PolicyEditor from './pages/PolicyEditor';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Layout />}>
          <Route index element={<PolicyList />} />
          <Route path="new" element={<PolicyEditor />} />
          <Route path="edit/:id" element={<PolicyEditor />} />
        </Route>
      </Routes>
    </Router>
  );
}

export default App;