function myFunctions() {
	// alert(document.getElementById("exam").innerHTML);//디버그
	if (document.getElementById("exam").innerHTML == "변경후")
		document.getElementById("exam").innerHTML = "변경 전"
	else
		document.getElementById("exam").innerHTML = "변경후"
}