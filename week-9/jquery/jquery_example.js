// U3.W9:JQuery


// I worked on this challenge with Connor Reaumond.
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
$h1 = $('h1');
console.log($h1);

$mascot = $('.mascot');
console.log($mascot);

$img = $('img');
console.log($img);

//RELEASE 3:
// Add code here to modify the css and html of DOM elements

$h1.css('background-color','red')
$h1.css('border','1px dashed yellow')
$h1.css('background-color','red')
$( "div h1:nth-child(1)").html('Sea Lions 2016');

//RELEASE 4: Event Listener
// Add the code for the event listener here

$('.logo').on('mouseover', function(e){
  e.preventDefault()
  $(this).attr('src', 'https://s-media-cache-ak0.pinimg.com/236x/d8/07/55/d80755c69bc9e1c8fcbd86b38e9249df.jpg')
})
$('.logo').on('mouseout', function(e){
  e.preventDefault()
  $(this).attr('src', 'dbc_logo.png')
})


//RELEASE 5: Experiment on your own
$( document ).click(function() {
 $( "#sealion" ).toggle( "bounce", { times: 1 }, 'slow' );
});

// $(document).keydown(function(e){
//   console.log(e.which);
//   $('#sealion').animate({left:'+=100px'},1000);
// });

})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// REFLECT

// What is jQuery?
// JQuery is a JavaScript library to allows you to easily interact with HTML elements and CSS attributes.


// What does jQuery do for you?
// JQuery allows you to easily interact with HTML elements and CSS attributes.

// What did you learn about the DOM while working on this challenge?
// Don't add quotes around document!