import React, { useEffect, useState, useRef } from "react";
import axios from "axios";
import $ from "jquery";
import "datatables.net";

export const DisplayState = () => {
    const [states, setStates] = useState([]);
    const [Countries,setCountries]=useState([]);
    const tableRef = useRef(null); // Reference for DataTable
    const fetchCountries = () => {
        axios.get('http://localhost/react-login/api/get_countries.php') // Your PHP API URL
          .then(response => {
            setCountries(response.data); // Set countries data
            console.log(response.data);
          })
          .catch(error => {
            console.error('Error fetching countries:', error);
          });
      };
    useEffect(() => {
        fetchCountries();
        fetchStates();
    }, []);

    // Fetch and populate the jQuery DataTable
    useEffect(() => {
        if ($.fn.DataTable.isDataTable("#stateTable")) {
            $("#stateTable").DataTable().destroy();
        }

        tableRef.current = $("#stateTable").DataTable({
            data: states.map((state) => [state.id, state.name, state.country_name]),
            columns: [
                { title: "ID" },
                { title: "State Name" },
                { title: "Country Name" },
            ],
            pageLength: 10,
            destroy: true,
        });
    }, [states]); // Re-run when states update
    const fetchStates = () => {
        axios.get("http://localhost/react-login/api/state/get_states.php") // Replace with your API
            .then(response => {
                setStates(response.data);
                console.log(response.data);
            })
            .catch(error => console.error("Error fetching states:", error));
    };

    return (
        <div>
           
            <div>
                <h2>List of State</h2>
                <table id="stateTable" className="display">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>State</th>
                            <th>Country Name</th>
                        </tr>
                    </thead>

                </table>
            </div>
        </div>
    )
}