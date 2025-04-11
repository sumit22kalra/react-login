import React, { useEffect, useState } from "react";
import axios from "axios";
// import { CountryForm } from "./CountryForm";
export const CountryManagement = () => {
    const [countries, setCountries] = useState([]);
    const [selectedCountry, setSelectedCountry] = useState(null);
    const handleEdit = (id) => {
        const country = countries.find((c) => c.id === id);
        setSelectedCountry(country);
      };
    
      const handleDelete = (id) => {
        if (!window.confirm("Are you sure you want to delete this country?")) return;
    
        axios
          .post("http://localhost/react-login/api/delete_country.php", { id })
          .then((response) => {
            alert(response.data.message);
            fetchCountries();
          })
          .catch((error) => console.error("Error deleting country:", error));
      };
      return (
        <>
        <div>
        {/* <CountryForm selectedCountry={selectedCountry} /> */}
      
    </div>
        </>
      )
};