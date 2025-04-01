import React, { useState } from 'react';
import axios from 'axios';

export const  Insertcountry=()=> {
    const [countryName, setCountryName] = useState('');
    const [countryCode, setCountryCode] = useState('');
    const [message, setMessage] = useState('');

    const handleCountryNameChange = (e) => setCountryName(e.target.value);
    const handleCountryCodeChange = (e) => setCountryCode(e.target.value);

    const handleSubmit = async (e) => {
        e.preventDefault();

        const countryData = {
            name: countryName,
            code: countryCode,
        };

        try {
            const response = await axios.post('http://localhost/react-login/api/insert_country.php', countryData);
            if (response.data.success) {
                setMessage('Country added successfully!');
            } else {
                setMessage('Failed to add country: ' + response.data.message);
            }
        } catch (error) {
            setMessage('Error: ' + error.message);
        }
    };

    return (
        <div>
            <h2>Add Country</h2>
            <form onSubmit={handleSubmit}>
                <div>
                    <label>Country Name</label>
                    <input
                        type="text"
                        value={countryName}
                        onChange={handleCountryNameChange}
                        required
                    />
                </div>
                <div>
                    <label>Country Code</label>
                    <input
                        type="text"
                        value={countryCode}
                        onChange={handleCountryCodeChange}
                        required
                    />
                </div>
                <button type="submit">Add Country</button>
            </form>
            {message && <p>{message}</p>}
        </div>
    );
}

 
