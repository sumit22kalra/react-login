import React, { useEffect, useState } from 'react';
import $ from 'jquery'; // Import jQuery
import 'datatables.net'; // Import DataTables
import axios from 'axios';
export const AddCountry=()=>{
    const [countryName, setCountryName] = useState('');
    const [countryCode, setCountryCode] = useState('');
    const [countries, setCountries] = useState([]);
  // States for editing
  const [editCountryName, setEditCountryName] = useState('');
  const [editCountryCode, setEditCountryCode] = useState('');
  const [editCountryId, setEditCountryId] = useState(null);
    const [message, setMessage] = useState('');
    useEffect(() => {
        // Initialize DataTable once the component is mounted
        $('#countryTable').DataTable();
        fetchCountries(); // Fetch countries data on component mount
         // Adding the event listener for Edit buttons
    $('#countryTable').on('click', '.edit-btn', function() {
        const countryId = $(this).data('id');
        const countryName = $(this).data('name');
        const countryCode = $(this).data('code');
        editCountry(countryId, countryName, countryCode);
      });
      }, []);
    const handleCountryNameChange = (e) => setCountryName(e.target.value);
    const handleCountryCodeChange = (e) => setCountryCode(e.target.value);
 // Function to fetch countries data
 const fetchCountries = () => {
    axios.get('http://localhost/react-login/api/get_countries.php') // Your PHP API URL
      .then(response => {
        setCountries(response.data); // Set countries data
        // Clear the DataTable and redraw it
        const table = $('#countryTable').DataTable();
        table.clear(); // Clear the existing table data
        console.log(response.data.data[0]);
        response.data.data.forEach(country => {
          table.row.add([
            country.id,
            country.name,
            country.code,
           `<button class="edit-btn" data-id="${country.id}" data-name="${country.name}" data-code="${country.code}">Edit</button>`
            
          ]).draw(); // Add the row to DataTable
        });
      })
      .catch(error => {
        console.error('Error fetching countries:', error);
      });
  };
  
 
    const handleSubmit = async (e) => {
        e.preventDefault();

        const countryData = {
            name: countryName,
            code: countryCode,
        };

        try {
            const response = await axios.post('http://localhost/react-login/api/insert_country.php', countryData);
            if (response.data.success) {
                fetchCountries(); // Refresh the table after adding
                 setCountryName('');
                 setCountryCode('');
                setMessage('Country added successfully!');
            } else {
                setMessage('Failed to add country: ' + response.data.message);
            }
        } catch (error) {
            setMessage('Error: ' + error.message);
        }
    };
   

// Handle Edit Country form submission
const handleEditSubmit = (e) => {
    e.preventDefault();
    const updatedCountry = { id: editCountryId, name: editCountryName, code: editCountryCode };
    axios.post('http://localhost/react-login/api/edit_country.php', updatedCountry) // PHP API to edit country
      .then(response => {
        fetchCountries(); // Refresh the table after editing
        setEditCountryName('');
        setEditCountryCode('');
        setEditCountryId(null); // Reset the edit form
      })
      .catch(error => {
        console.error('Error editing country:', error);
      });
  };

  // Function to handle the Edit button click
  const editCountry = (id, name, code) => {
    setEditCountryId(id);
    setEditCountryName(name);
    setEditCountryCode(code);
  };
    return(
        <>
        <div>
            <h2>Add Country</h2>
            <form onSubmit={handleSubmit}>
        <div>
          <label>Country Name:</label>
          <input
            type="text"
            value={countryName}
            onChange={(e) => setCountryName(e.target.value)}
            required
          />
        </div>
        <div>
          <label>Country Code:</label>
          <input
            type="text"
            value={countryCode}
            onChange={(e) => setCountryCode(e.target.value)}
            required
          />
        </div>
        <button type="submit">Add Country</button>
      </form>

      {/* Edit Country Form */}
      {editCountryId && (
        <div>
          <h2>Edit Country</h2>
          <form onSubmit={handleEditSubmit}>
            <div>
              <label>Country Name:</label>
              <input
                type="text"
                value={editCountryName}
                onChange={(e) => setEditCountryName(e.target.value)}
                required
              />
            </div>
            <div>
              <label>Country Code:</label>
              <input
                type="text"
                value={editCountryCode}
                onChange={(e) => setEditCountryCode(e.target.value)}
                required
              />
            </div>
            <button type="submit">Update Country</button>
          </form>
        </div>
      )}
            {message && <p>{message}</p>}
        </div>
        <h2>List of Countries</h2>
      <table id="countryTable" className="display">
        <thead>
          <tr>
            <th>ID</th>
            <th>Country Name</th>
            <th>Country Code</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          {/* Data will be populated via DataTable and Axios */}
        </tbody>
      </table>
  
        </>
    )
}