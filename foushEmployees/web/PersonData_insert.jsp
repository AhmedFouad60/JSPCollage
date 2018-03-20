<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<html>
   <head>
      <title>JINSERT Operation</title>
      <meta charset="utf-8">

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="Design/form.css" >
   </head>

   <body>

     <h1>Insert data in the DB</h1>

     <%!
     public class Person{
     String URL="jdbc:mysql://localhost:3306/week2";
     String USER="root";
     String PASSWORD="";

     Connection connection=null;
     PreparedStatement insertPerson=null;
     ResultSet resultSet = null;

     public Person(){

     try{

     connection=DriverManager.getConnection(URL,USER,PASSWORD);
     insertPerson=connection.prepareStatement("INSERT INTO person (fName,LName,Email,country,city,Address"+
     ")VALUES(?,?,?,?,?,?");
     }
     catch (SQLException ex){
     ex.printStackTrace();
     }
     }

public int setPerson(String first_name,String last_name,String email,String country,String city,String address){

int result=0;
  try {
    insertPerson.setString(1,first_name);
    insertPerson.setString(2,last_name);
    insertPerson.setString(3,email);
    insertPerson.setString(4,country);
    insertPerson.setString(5,city);
    insertPerson.setString(6,address);

    result=insertPerson.executeUpdate();

  }catch (Exception e) {
    e.printStackTrace();
  }


return result;

}







     }

  %>

<%
int result=0;

if (request.getParameter("submit")!=null) {



String first_name=new String();
String last_name=new String();
String country=new String();
String email=new String();
String city=new String();
String address=new String();


if (request.getParameter("fName")!=null) {
  first_name=request.getParameter("fName");

}
if (request.getParameter("LName")!=null) {
  last_name=request.getParameter("LName");
}
if (request.getParameter("Address")!=null) {
  address=request.getParameter("Address");
}
if (request.getParameter("city")!=null) {
  city=request.getParameter("city");

}
if (request.getParameter("country")!=null) {
country=request.getParameter("country");
}
if (request.getParameter("Email")!=null) {
email=request.getParameter("Email");
}

Person person=new Person();
result=person.setPerson(first_name,last_name,email,country,city,address);



}



%>





   </body>
</html>
