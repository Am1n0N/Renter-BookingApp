import { useState, useEffect } from 'react';
import axios from 'axios';

const useHousesList = (category = null) => {
  const [houses, setHouses] = useState([]);

  useEffect(() => {
    const fetchHouses = async () => {
      try {
        const url = category ? `http://127.0.0.1:8000/api/houses?category=${category}` : 'http://127.0.0.1:8000/api/houses';
        const response = await axios.get(url);
        setHouses(response.data);
      } catch (error) {
        console.error(error);
      }
    };

    fetchHouses();
  }, [category]);

  return houses;
};

export default useHousesList;
