
var code; //在全局定义验证码    
//produce security code 
window.onload = function() {
	createCode();
}
 
function createCode() {
	code = "";
	var codeLength = 5; //the lenth of code 
	var checkCode = document.getElementById("checkCode");
	var random = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
		'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //random
	for(var i = 0; i < codeLength; i++) { //loop 
		var charIndex = Math.floor(Math.random() * 36); //get index of this series random code  
		code += random[charIndex]; //According to the index, the random number is added to the code
	}
	checkCode.value = code; //put this random code into checkCode 
}
//Verify the code
function validate() {
	var inputCode = document.getElementById("CODE").value.toUpperCase(); //get the code we input and turn all letter into majuscule       
	if(inputCode.length <= 0) { //if the code length equal to 0
		alert("please enter the code"); //occur the alert window  
	} else if(inputCode != code) { //if input code is not equal to the generated code 
		alert("the code you entered is incorrect!"); //occur the alert window    
		createCode(); //refresh security code  
	} else { //if code correct  
		alert("code corect"); //shows: code corrct   
	}
}

