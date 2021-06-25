/**
 * 
 */

var l=document.getElementById("login");
var r=document.getElementById("register");
function register(){
	l.style.left="-400px";
	r.style.left="100px";
	document.getElementById("check").style.background="#A1887F";
	document.getElementById("check2").style.background="transparent";
}
function login(){
	 l.style.left="100px";
	 r.style.left="500px";
	 document.getElementById("check2").style.background="#A1887F";
	 document.getElementById("check").style.background="transparent";
}