import React, { useState } from "react";
import axios from "axios";

const Login = ({ setToken }) => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const handleLogin = async (e) => {
    e.preventDefault();

    try {
      const response = await axios.post("http://localhost/react-login/api/login.php", {
        email,
        password,
      });
        console.log(response);
      if (response.data.success) {
        setToken(response.data.token);
        localStorage.setItem("token", response.data.token);
        alert("Login successful!");
      } else {
        alert(response.data.message);
      }
    } catch (error) {
      console.error("Login Error:", error);
      alert("Login failed!");
    }
  };

  return (
 <> 
   <form onSubmit={handleLogin}>
    <div className="login-section">
      <div className="login-wrapper">
        <div className="logo-wrapper">
        <img src='https://www.trivenigroup.com/svg/TEIL_Logo.svg'  className="logo img-fluid" />
        </div>   
       
        <input
          type="email"
           className="form-control"
          placeholder="Email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          required
        />
      
        <input
          type="password"
          className="form-control"
          placeholder="Password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          required
        />
       
        <button type="submit" className="btn btn-primary">Login</button>
        </div>
        </div>
      </form>
      </> 
  );
};

export default Login;
