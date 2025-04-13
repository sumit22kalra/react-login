import React, { useState } from 'react';
import axios from 'axios';

const SQLRunner = () => {
  const [sql, setSql] = useState('');
  const [result, setResult] = useState('');
  const [error, setError] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError('');
    setResult('');
    const res = await axios.post('http://localhost/react-login/api/sql/run-sql.php', { sql_query: sql });
      console.log("Result" ,res);
    // try {
    //   const res = await axios.post('http://localhost/react-login/api/sql/run-sql.php', { sql_query: sql });
    //   console.log("Result" ,res);
    //   setResult(res.data);
    // } catch (err) {
    //     console.log("error",err);
    //   setError(err.response?.data || 'An error occurred');
    // }
  };

  return (
    <div className="p-4">
      <h2>Run SQL Query</h2>
      <form onSubmit={handleSubmit}>
        <textarea
          rows="10"
          cols="80"
          value={sql}
          onChange={(e) => setSql(e.target.value)}
          placeholder="Write SQL here..."
        ></textarea><br/>
        <button type="submit">Run Query</button>
      </form>
      <div style={{ marginTop: '20px' }}>
        {error && <div style={{ color: 'red' }}>❌ {error}</div>}
        {result && (
          <pre style={{ background: '#f4f4f4', padding: '10px' }}>
            {typeof result === 'object' ? JSON.stringify(result, null, 2) : result}
          </pre>
        )}
      </div>
    </div>
  );
};

export default SQLRunner;
