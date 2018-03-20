<%--
    Document   : RequestPersonData
    Created on : Mar 19, 2018, 3:19:08 AM
    Author     : foush
--%>

<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
  <title>Employee | Insert.</title>
  <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="Design/form.css" >

</head>
<body>
  <form method="post" action="PersonData_insert.jsp">
	    <h1>Please insert your data</h1>

    <div class="contentform">
    	<div id="sendmessage"> Your message has been sent successfully. Thank you. </div>


    	<div class="leftcontact">

			      <div class="form-group">
  			        <p>Surname<span>*</span></p>
  			        <span class="icon-case"><i class="fa fa-male"></i></span>
  				        <input type="text" name="fName" id="fName" data-rule="required" data-msg=""/>
                  <div class="validation"></div>
              </div>

            <div class="form-group">
            <p>Name <span>*</span></p>
            <span class="icon-case"><i class="fa fa-user"></i></span>
				<input type="text" name="LName" id="LName" data-rule="required" data-msg=""/>
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p>E-mail <span>*</span></p>
			<span class="icon-case"><i class="fa fa-envelope-o"></i></span>
                <input type="email" name="Email" id="Email" data-rule="email" data-msg="">
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p>country <span>*</span></p>
			<span class="icon-case"><i class="fa fa-home"></i></span>
				<input type="text" name="country" id="country" data-rule="required" data-msg=""/>
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p> Address <span>*</span></p>
			<span class="icon-case"><i class="fa fa-map-marker"></i></span>
				<input type="text" name="Address" id="Adresse" data-rule="required" data-msg=""/>
                <div class="validation"></div>
			</div>

      <div class="form-group">
      <p>City <span>*</span></p>
      <span class="icon-case"><i class="fa fa-building-o"></i></span>
        <input type="text" name="city" id="city" data-rule="required" data-msg=""/>
                <div class="validation"></div>
      </div>




	</div>

	<div class="rightcontact">


    <div class="form-group">
        <p>last 3 projects<span>*</span></p>
        <span class="icon-case"><i class="fa fa-calendar-o"></i></span>
          <input type="text" name="projectName" id="nom" data-rule="required" data-msg=""/>
          <div class="validation"></div>
      </div>

      <div class="form-group">
          <p>coures<span>*</span></p>
          <span class="icon-case"><i class="fa fa-calendar-o"></i></span>
            <input type="text" name="courseName" id="nom" data-rule="required" data-msg=""/>
            <div class="validation"></div>
        </div>





    <div class="form-group">
    <p>language <span>*</span></p>
    <span class="icon-case"><i class="fa fa-comments
"></i></span>
   <input type="text" name="languageName" id="prenom" data-rule="required" data-msg=""/>
        <div class="validation"></div>
   </div>

   <div class="form-group">
   <p>Hobbies<span>*</span></p>
   <span class="icon-case"><i class="fa fa-heart-o
"></i></span>
        <input type="text" name="hobbyName" id="hobbyName" data-rule="required" data-msg="">
        <div class="validation"></div>
   </div>

   <div class="form-group">
   <p>top 3 favourate wesbsites <span>*</span></p>
   <span class="icon-case"><i class="fa fa-laptop
"></i></span>
   <input type="text" name="siteName" id="siteName" data-rule="required" data-msg=""/>
        <div class="validation"></div>
   </div>


   <div class="form-group">
   <p>Top 3 applications <span>*</span></p>
   <span class="icon-case"><i class="fa fa-mobile-phone
"></i></span>
   <input type="text" name="appName" id="appName" data-rule="required" data-msg=""/>
        <div class="validation"></div>
   </div>




	</div>
	</div>

<button type="submit" class="bouton-contact">Send</button>

</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


</body>
</html>
