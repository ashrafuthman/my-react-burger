import React, { Component } from 'react';
import './App.css';
import Validation from './Validation/Validation';

class App extends Component {
  
  state = {
    userInput: ''
  }

  inputChangedHandler = (event) => {
    this.setState({userInput: event.target.value});
  }

  render() {
    return (
      <div className="App">
        <p>Test in the middle</p>
        <input 
        type="text"
        value={this.state.userInput}
        onChange={this.inputChangedHandler} />
        <p>{this.state.userInput}</p>
        <Validation
         textLength={this.state.userInput.length}/>
      </div>
    );
  }
}

export default App;
