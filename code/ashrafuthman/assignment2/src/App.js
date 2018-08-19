import React, { Component } from 'react';
import './App.css';
import Validation from './Validation/Validation';
import Char from './Char/Char';

class App extends Component {
  
  state = {
    userInput: ''
  }

  inputChangedHandler = (event) => {
    this.setState({userInput: event.target.value});
  }

  characterDeletedHandler = (index) => {
  const text = this.state.userInput.split('');
  text.splice(index, 1);  
  const upadtedText = text.join('');
  this.setState({userInput: upadtedText})
  }
  

  render() {

    const charList = this.state.userInput.split('').map((ch, index) => {
      return <Char character={ch} key={index}
      clicked={() => this.characterDeletedHandler(index)}/>
    });

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
         <hr />
         {charList}
      </div>
    );
  }
}

export default App;
