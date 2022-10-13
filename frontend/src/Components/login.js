import React, {useState} from 'react'
import "./login.css";

function Login(props) {

    const [username, setUsername] = useState("");

    function submitUsername() {
        window.alert(username);
    }

    function createUsername() {
        window.alert(username);
    }

    return  <form className='loginForm'>
        <h3 className='signinHead'>Sign In</h3>

        <div className="mb-3">
          <label>Username</label><p></p>
          <input
            className="form-control"
            placeholder="Enter the username"
            onChange={(e) => setUsername(e.target.value)}
          />
        </div>


        <div className="d-grid">
          <button type="submit" className="btn login-btn" onClick={submitUsername}>
            Log in
          </button>
        </div>
        <div className="d-grid">
          <button type="submit" className="btn signup-btn" onClick={createUsername}>
            Sign up
          </button>
        </div>
      </form>;
}

export default Login;