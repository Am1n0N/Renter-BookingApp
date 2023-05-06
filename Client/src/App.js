import React, { useState } from "react";
import Filters from "./components/Filters";
import Navbar from "./components/Navbar";
import Rentals from "./components/Rentals";
import HouseFormPopup from './components/HouseFormPopup';
import SignupPopup from "./components/SignupPopup";
import LoginPopup from "./components/LoginPopup";
import axios from "axios";
function App() {
  const [Filter, setFilter] = useState(null);
  const [isRentFormOpen, setIsRentFormOpen] = useState(false);
  const [isSignupFormOpen, setIsSignupFormOpen] = useState(false);
  const [isLoginFormOpen, setIsLoginFormOpen] = useState(false);
  const [formData, setFormData] = useState({
    title: '',
    description: '',
    date: '',
    image: '',
    price: '',
    rating: '',
    category_id: ''
  });
  const [signupFormData, setSignupFormData] = useState({
    name: '',
    email: '',
    password: '',
    password_confirmation: ''
  });
  const [loginFormData, setLoginFormData] = useState({
    email: '',
    password: ''
  });


  const handleFilter = (title) => {
    setFilter(title);
  };
  const handleSubmit = (e) => {
    e.preventDefault();
    // Code to submit form data to server
    axios.post('http://localhost:8000/api/houses', formData)
      .then(res => console.log(res))
      .catch(err => console.log(err));
    setIsRentFormOpen(false);
  }
  const handleSignupSubmit = (e) => {
    e.preventDefault();
    // Code to submit form data to server
    axios.post('http://localhost:8000/api/register', signupFormData)
      .then(res => {
        //save token and user in local storage
        localStorage.setItem('access_token', res.data.token);
        localStorage.setItem('user', JSON.stringify(res.data.user));
      })
      .catch(err => console.log(err));
    setIsSignupFormOpen(false);
  }
  const handleLoginSubmit = (e) => {
    e.preventDefault();
    // Code to submit form data to server
    axios.post('http://localhost:8000/api/login', loginFormData)
      .then(res => {
        //save token and user in local storage
        localStorage.setItem('access_token', res.data.token);
        localStorage.setItem('user', JSON.stringify(res.data.user));
      })
      .catch(err => console.log(err));
    setIsLoginFormOpen(false);
  }

  const handleLoginClick = () => {
    setIsLoginFormOpen(true);
    setIsSignupFormOpen(false);
  }
  const handleSignupClick = () => {
    setIsSignupFormOpen(true);
    setIsLoginFormOpen(false);
  }

  const handleInputChange = (e) => {
    setSignupFormData({
      ...signupFormData,
      [e.target.name]: e.target.value,
    });
  };


  return (
    <div className="">
      {/* Navbar */}
      <Navbar onRentClick={setIsRentFormOpen} onSignUpClick={setIsSignupFormOpen}  />
      {/* Filters */}
      <div className="sm:mx-6 md:mx-10 lg:mx-12 px-3">
        <Filters onclick={handleFilter} />
        <div>
          {isRentFormOpen && (
            <HouseFormPopup
              formData={formData}
              handleInputChange={(e) => setFormData({ ...formData, [e.target.name]: e.target.value })}
              handleSubmit={handleSubmit}
              handleClose={() => setIsRentFormOpen(false)}
            />
          )}
        </div>
        <div>
          {isSignupFormOpen && (
            <SignupPopup
              formData={signupFormData}
              handleInputChange={handleInputChange}
              handleSubmit={handleSignupSubmit}
              handleClose={() => setIsSignupFormOpen(false)}
              handleLoginClick={handleLoginClick}
            />
          )}
        </div>
        <div>
          {isLoginFormOpen && (
            <LoginPopup
              formData={loginFormData}
              handleInputChange={(e) => setLoginFormData({ ...loginFormData, [e.target.name]: e.target.value }, console.log(JSON.stringify(loginFormData)))}
              handleSubmit={handleLoginSubmit}
              handleClose={() => setIsLoginFormOpen(false)}
              handleSignupClick={handleSignupClick}
            />
          )}
        </div>

        {/* Rentals */}
        <Rentals Filter={Filter} />
      </div>

    </div>
  );
}

export default App;
