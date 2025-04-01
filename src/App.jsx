import React, { useState, useEffect } from "react";
import {BrowserRouter as Router, Routes, Route,Link} from 'react-router-dom';

import axios from "axios";
import Login from "./Login";
import { AddCountry } from "./AddCountry";
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
           
           <Router>
           


            <div className='p-2 text-center'>
            <Link to="/login">Login</Link> 
            <Link to="/AddCountry">About</Link> 
                <Routes> 
                    <Route path="/AddCountry" element={<AddCountry />} />
                    {token ? (null):(
                    <Route path="/login" element={<Login setToken={setToken} />} />
                  )}
                </Routes>
            </div>    
            </Router>
      
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
    </div>
  );
}

export default App;
