import './App.css';
import React, {useState, useEffect} from 'react';
import axios from 'axios';
import { useParams, useNavigate, Link } from 'react-router-dom'

function App() {

  const [user, setUser] = useState();

  useEffect(() => {
    axios.get('http://localhost:5000/')
      .then((response) => {
        console.log(response)
        setUser(response)
      })
      .catch((errors) => {
        console.log(errors)
      })

  }, [])

  return (
    <div className="App">
      <h1>Hey there</h1>
      

    </div>
  );
}

export default App;
