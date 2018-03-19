<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<html>
   <head>
      <title>JINSERT Operation</title>
   </head>

   <body>

<%-- get the Elements from the form --%>

<%
String firstName=request.getParameter("fName");
String lastName=request.getParameter("LName");
String email=request.getParameter("Email");
String address=request.getParameter("Address");
String city=request.getParameter("city");
String country=request.getParameter("country");
String projectName=request.getParameter("projectName");
String courseName=request.getParameter("courseName");
String languageName=request.getParameter("languageName");
String hobbyName=request.getParameter("hobbyName");
String siteName=request.getParameter("siteName");
String appName=request.getParameter("appName");



// validation

%>





      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/week2"
         user = "root"  password = ""/>
       <sql:update dataSource = "${snapshot}" var = "result">
            <%-- inset in the person table --%>
            INSERT INTO person (Email,fName,LName,Address,city,country)
            VALUES (email, firstName, lastName, address,city,country);



        </sql:update>



   </body>
</html>
