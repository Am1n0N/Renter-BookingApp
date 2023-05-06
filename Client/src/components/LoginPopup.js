import React from 'react';
import '../styles/popup.css';

const LoginPopup = (props) => {
    return (
        <div className="popup">
            <div className="popup-inner">
                <button className="popup-close" onClick={props.handleClose}>
                    X
                </button>
                <form onSubmit={props.handleSubmit}>
                    <div className="form-group">
                        <label htmlFor="email">Email</label>
                        <input
                            className="text-input"
                            type="email"
                            name="email"
                            value={props.formData.email}
                            onChange={props.handleInputChange}
                        />
                    </div>
                    <div className="form-group">
                        <label htmlFor="password">Password</label>
                        <input
                            className="text-input"
                            type="password"
                            name="password"
                            value={props.formData.password}
                            onChange={props.handleInputChange}
                        />
                    </div>
                    <button type="submit">Log In</button>
                </form>
                <p className="login-text">
                    Don't have an account?{' '}
                    <span className="login-link" onClick={props.handleSignupClick}>
                        Sign up here
                    </span>
                </p>
            </div>
        </div>
    );
};

export default LoginPopup;
