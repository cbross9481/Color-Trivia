var evaluate; var list; var bullet; var colorize; var count; var stop; var change; var box; var roll_button; var button; var button_2; var message; var text; var question; var button_box = document.getElementById("button_box");

function color_roll(){
	roll_button = document.getElementById("roll_button")
	roll_button.style.display = "none"
	box = document.getElementById("color_box");
	change = setInterval(color,250)
	stop = (Math.floor(Math.random() * 18))+1
	// stop = 7
	count = 0
}

function color(){
	var array = ["red","orange","yellow","green","blue","purple","red","orange","yellow","green","blue","purple","red","orange","yellow","green","blue","purple"] 		
		box.style.backgroundColor = array[count];
		count += 1;
	if (count == stop){
		colorize = array[count-1]
		clearInterval(change);
		create_buttons();
		color_selection();
		}	
}

function color_selection(){
	if (colorize == "orange"){
		message = document.getElementById("message");
		text = document.createTextNode("You rolled an " + colorize);
		message.appendChild(text);
		rolled_color();	
	}
	else{
		message = document.getElementById("message");
		text = document.createTextNode("You rolled a " + colorize);
		message.appendChild(text);
		rolled_color();
	}
}

function helper(){
	remove();		
	color_roll();
}

function create_buttons(){
	button = document.createElement("input");
	button_2 = document.createElement("input");
	button.type = "button";
	button_2.type = "button";
	button.value = "Choose Color";
	button_2.value = "Roll Again";
	button.setAttribute("onClick","display()")
	button_2.setAttribute("onClick","helper()");
	button_box = document.getElementById("button_box");
	button_box.appendChild(button);
	button_box.appendChild(button_2);
}

function remove(){
	button_box = document.getElementById("button_box");
	button_box.removeChild(button);
	button_box.removeChild(button_2);
	message.removeChild(text);
}

//Create JSON objects for trivia questions
// var object = JSON.parse('{"red":"Three trivia questions will appear here"}')

function display(){
	remove();
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("question_box").innerHTML = this.responseText;
		}
	};
	xhttp.open('GET','/question',true);
	xhttp.send();
	document.getElementById("question_box").style.display = "block"
}		

function hello(){
	console.log("hello world")
}

function display_result(){
	// remove();
	document.getElementById("submit").style.display = "none"
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function(){
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("results").innerHTML = this.responseText;
		}
	};
	xhttp.open('GET','/test',true);
	xhttp.send();
}

function rolled_color(){
	var input = document.createElement("input");
	input.style.display = "none";
	var submit = document.createElement("input");
	submit.style.display = "none";
	input.name = "rolled_color";
	input.value = colorize;
	submit.type = "submit";
	var form = document.getElementById("color_form")
	form.appendChild(input)
	form.appendChild(submit)
	document.forms['color_form'].submit();
	// display();
}

function add_bullet(){
	document.getElementById("test").style.display = "none"
	document.getElementById("evaluate_button").style.display = "none"
	document.getElementById("question_box").style.display = "none"
	evaluate = document.getElementById("value_input").value
	bullet = document.createElement("li")
	canvas = document.createElement("canvas")
	var ctx = canvas.getContext("2d")
	list = document.getElementById("list")
	// list.style.list-style-type: none
	canvas.width = 50
	canvas.height = 50
	// canvas.style.border = "2px solid black"
	canvas.style.backgroundColor = colorize
	// canvas.appendChild(document.createTextNode("test"))
	if (evaluate == "You're Correct!"){
		bullet.appendChild(canvas);
		list.appendChild(bullet);
	}
	color_roll();
}

function response_function(){
	console.log("Hello world")
}

// function say_words(){
// 	console.log("sjhig")
// }