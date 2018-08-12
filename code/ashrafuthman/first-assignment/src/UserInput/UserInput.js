import React from 'react';


const userInput = (props) => {
	return(
		<div>
          <input type="text" value={props.currentUsername} onChange={props.changed}></input>
        </div>
		);
};

export default userInput;