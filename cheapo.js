/*
$('#clicker').mousedown(function(){
  //$(this).css('background', '#5E5B5B');
  var emailContent=document.getElementById("email").value;
   var PasswordContent=document.getElementById("password").value;

   alert(emailContent+" "+PasswordContent);
});


$( document ).ready(function() {
$( "#career" ).click(function() {
$("#content").load("careers.html");
});
});

$('#Register').mousedown(function(){
 var divContent=document.getElementById("content");
 divContent.innerHTML="hello world";
});




$('input[type="submit"]').mouseup(function(){
  $(this).css('background', '#5E5B5B');
});

$('#loginform').click(function(){
  $('.login').fadeToggle('slow');
 $(this).toggleClass('ADF081');
});

/*
$('#Register').click(function(){
  $('.login').fadeToggle('slow');
  $(this).toggleClass('ADF081');
});
*/



$(document).mouseup(function (e)
{
    var container = $(".login");

    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0) // ... nor a descendant of the container
    {
        container.hide();
        $('#loginform').removeClass('#5E5B5B');
    }
});

