
$('#register').mousedown(function(){
	$("#content").load("register.html");
	var content=document.getElementById('error');
	content.innerHTML="";
	});


$('#loginform').mousedown(function(){
	$("#content").load("login.html");
	var content=document.getElementById('error');
	content.innerHTML="";
	});

$('#logout').mousedown(function(){
$.ajax({
		url:'logout.php',
		success: function(response){
			
			$("#content").load("login.html");
			var content=document.getElementById('error');
				content.style.color='red';
				content.innerHTML="";

			
		}
	});
});

$('form.submitter').on('submit',function(){
	
	var component=$(this);
	url=component.attr('action'),
	type=component.attr('method'),
	data={};
	
	component.find('[name]').each(function(index, value)
	{
		var component=$(this);
		name=component.attr('name'),
		value=component.val();

		data[name]=value;
		//console.log(data);
	});

	$.ajax({
		url:url,
		type:type,
		data:data,
		success: function(response){
			if(response=='blank')
			{
				
				var content=document.getElementById('error');
				content.style.color='red';
				content.innerHTML="All fields needs to be filled out.";
				
			}

			else if(response=='failed pattern')
			{
				var content=document.getElementById('error');
				content.style.color='red';
				content.innerHTML="passwords must have at least one number and one letter, and one capital letter and are at least 8 characters long.";
			}
			else
			{
				var content=document.getElementById('error');
				content.innerHTML="";
				console.log(response);
			}


		}
	});
	return false;
});




$('form.lsubmit').on('submit',function(){
	
	var component=$(this);
	url=component.attr('action'),
	type=component.attr('method'),
	data={};
	
	component.find('[name]').each(function(index, value)
	{
		var component=$(this);
		name=component.attr('name'),
		value=component.val();

		data[name]=value;
		//console.log(data);
	});

	$.ajax({
		url:url,
		type:type,
		data:data,
		success: function(response){
			if(response=='null')
			{
				
				
				var content=document.getElementById('error');
				content.style.color='red';
				content.innerHTML="Enter a username and password";

			}
			else if(response=='user not found')
			{
				var content=document.getElementById('error');
				content.style.color='red';
				content.innerHTML="Incorrect Username/Password";
				

			}
			else
			{
				var content=document.getElementById('error');
				console.log(response);
				content.style.color='#5E5B5B';
				$("#content").load("messaging.html");
				$('#logout').fadeToggle('slow');
				content.innerHTML="Welcome "+response;
				var str=content.innerHTML;
				var holder=str.split(' ');
				document.getElementById('hide').value=holder[1];


			}



		}
	});
	return false;
});


$('form.msgsubmit').on('submit',function(){
	var content=document.getElementById('error');
	var str=content.innerHTML;
	var holder=str.split(' ');
	document.getElementById('hide').value=holder[1];

	
	var component=$(this);
	url=component.attr('action'),
	type=component.attr('method'),
	data={};
	
	component.find('[name]').each(function(index, value)
	{
		var component=$(this);
		name=component.attr('name'),
		value=component.val();

		data[name]=value;
		//console.log(data);
	});

	$.ajax({
		url:url,
		type:type,
		data:data,
		success: function(response){

			var splitter=response.split('=>');
			
			console.log(splitter);

			set=splitter[1].split(')');
			set1=splitter[2].split(')');
			set2=splitter[3].split(')');
			set3=splitter[4].split(')');
			set4=splitter[5].split(')');
			set5=splitter[6].split(')');
			set6=splitter[7].split(')');
			set7=splitter[8].split(')');
			set8=splitter[9].split(')');
			


			mess=document.getElementById('message1');
			mess1=document.getElementById('message2');
			mess2=document.getElementById('message3');
			mess3=document.getElementById('message4');
			mess4=document.getElementById('message5');
			mess5=document.getElementById('message6');
			mess6=document.getElementById('message7');
			mess7=document.getElementById('message8');
			
			mess8=document.getElementById('message9');

			mess.innerHTML=set[0]; 
			mess1.innerHTML=set1[0];
			mess2.innerHTML=set2[0];
			mess3.innerHTML=set3[0];
			mess4.innerHTML=set4[0];
			mess5.innerHTML=set5[0];
			mess6.innerHTML=set6[0];
		
			mess7.innerHTML=set7[0];
			
			mess8.innerHTML=set8[0];
			/*
			mess9.innerHTML=set[0];
			*/

			}

			
			
	
	});
	return false;
});
