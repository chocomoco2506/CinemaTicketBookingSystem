const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});

function OK(){
	var email=document.getElementById('email').value;
	var password=document.getElementById('password').value;

	if(email=="aung@gmail.com" && password=="aung"){
		window.open("");}
	else if(email=="" && password==""){
		alert("Enter your name and password.");}
	else if(email==""){
		alert("Enter Your name.");}
	else if(password==""){
		alert("Enter your password.");}
	else
		alert("Your name and password are invalid.");
}