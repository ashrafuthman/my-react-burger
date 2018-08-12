import React from 'react';
import './UserOutput.css';

const userOutput = (props) => {
	return(
		<div className="Details">
        <p>Hey my name is {props.name} and my username is {props.username}</p>
        </div>
		);
};

export default userOutput;