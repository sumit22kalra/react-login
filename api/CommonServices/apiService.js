import axios from "axios";

// Function to Fetch Countries
export const getCountriess = async () => {
  try {
    const response = await axios.get("http://localhost/react-login/api/get_countries.php");
    return response.data; // Return country list
  } catch (error) {
    console.error("Error fetching countries:", error);
    return [];
  }
};
