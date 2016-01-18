// DOM Manipulation Challenge


// I worked on this challenge [by myself ].


// Add your JavaScript calls to this page:

// Release 0:





// Release 1:
var newClass = document.getElementById("release-0");
newClass.className+="done";



// Release 2:
var newProp = document.getElementById("release-1").style.display="none";



// Release 3:
var h1 = document.getElementsByTagName("h1")[0].innerHTML="I completed release 2";



// Release 4:
var cssProp = document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 5:
var t = document.getElementsByClassName("release-4");
for(var i=0; i < t.length; i++) {
t[i].style.fontSize="2em";
};


// Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));



