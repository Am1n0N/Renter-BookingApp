import React from 'react';
import '../styles/popup.css';

const SignupPopup = (props) => {
    return (
        <div className="popup">
            <div className="popup-inner">
                <button className="popup-close" onClick={props.handleClose}>
                    X
                </button>
                <form onSubmit={props.handleSubmit}>
                    <div className="form-group">
                        <label htmlFor="name">Username</label>
                        <input
                            className="text-input"
                            type="text"
                            name="name"
                            value={props.formData.name}
                            onChange={(e) => props.handleInputChange(e)}
                        />
                    </div>
                    <div className="form-group">
                        <label htmlFor="email">Email</label>
                        <input
                            className="text-input"
                            type="email"
                            name="email"
                            value={props.formData.email}
                            onChange={(e) => props.handleInputChange(e)}
                        />
                    </div>
                    <div className="form-group">
                        <label htmlFor="password">Password</label>
                        <input
                            className="text-input"
                            type="password"
                            name="password"
                            value={props.formData.password}
                            onChange={(e) => props.handleInputChange(e)}
                        />
                    </div>
                    <div className="form-group">
                        <label htmlFor="confirm_password">Confirm Password</label>
                        <input
                            className="text-input"
                            type="password"
                            name="confirm_password"
                            value={props.formData.confirm_password}
                            onChange={(e) => props.handleInputChange(e)}
                        />
                    </div>
                    <button type="submit">Sign Up</button>
                </form>
                <p className="login-text">
                    Already have an account?{' '}
                    <span className="login-link" onClick={props.handleLoginClick}>
                        Log in here
                    </span>
                </p>
            </div>
        </div>
    );
};

export default SignupPopup;
