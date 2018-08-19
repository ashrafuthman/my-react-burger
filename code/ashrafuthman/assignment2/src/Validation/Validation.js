import React from 'react';

const validation = (props) => {
	let message = 'Too short';

	if (props.textLength > 5) {
		message = 'Long enough';
	}
		
	return (
		<p>{message}</p>
	);
	
};

export default validation;