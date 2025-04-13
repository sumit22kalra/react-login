import React, { useState, useEffect } from "react";
import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
import axios from "axios";
import Login from "./Login";
import { AddCountry } from "./AddCountry";
import { DisplayState } from "./DisplayState"; 
import { CountryManagement } from "./CountryManagement";
import SQLRunner from "./sql";
function App() {
  const [token, setToken] = useState(localStorage.getItem("token"));
  const [user, setUser] = useState(null); 
  // Function to fetch user details from verify_token.php
  const fetchUserDetails = async () => {
    if (!token) return;

    try {
      const response = await axios.post("http://localhost/react-login/api/verify_token.php", {}, {
        headers: { Authorization: `Bearer ${token}` }
      });

      if (response.data.success) {

        setUser({ id: response.data.user.user_id, name: response.data.user.user_name });
      } else {
        console.error("Token verification failed:", response.data.message);
      }
    } catch (error) {
      console.error("Error verifying token:", error);
    }
  };

  useEffect(() => {
    fetchUserDetails();
  }, [token]);

  return (
    <div>
       
      {token ? (
        user ? (
          <div>
            <h1>Welcome, {user.name} </h1>
            <p>Your User ID: {user.id}</p>
          </div>
        ) : (
          <p>Loading user info...</p>
        )
      ) : (
        null
      )}

      <Router>

     
        <header> 
        {token ? (
           <>
           <Link to="/AddCountry">Country</Link>
           <Link to="/display-state">State</Link>
           </>
        ): ( 
              <>
              <Link to="/login">Login</Link>
           <Link to="/AddCountry">Country</Link>
           <Link to="/display-state">State</Link>
           </>
         

        )}  
        </header>
        <Routes>
          <Route path="/AddCountry" element={<AddCountry />} />
          <Route path="/display-state" element={<DisplayState />} />
          {token ? (null) : (
            <Route path="/login" element={<Login setToken={setToken} />} />
          )}
        </Routes>

      </Router>
<CountryManagement />
<SQLRunner />
    </div>
  );
}

export default App;
