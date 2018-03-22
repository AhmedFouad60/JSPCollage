<%--
    Document   : index
    Created on : Mar 22, 2018, 3:39:33 AM
    Author     : foush
--%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<html>
   <head>
      <title>index page </title>
      <meta charset="utf-8">

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="Design/form.css" >
   </head>

    <body>


      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/week2"
         user = "root"  password = ""
         />

              <%-- select person table --%>
              <sql:query dataSource = "${snapshot}" var = "personResult">
                 SELECT * from person;
              </sql:query>
              <%-- select project table --%>
              <sql:query dataSource = "${snapshot}" var = "projectResult">
                 SELECT * from project;
              </sql:query>
              <%-- select course table --%>
              <sql:query dataSource = "${snapshot}" var = "courseResult">
                 SELECT * from course;
              </sql:query>
              <%-- select language table --%>
              <sql:query dataSource = "${snapshot}" var = "languageResult">
                 SELECT * from language;
              </sql:query>
              <%-- select hobby table --%>
              <sql:query dataSource = "${snapshot}" var = "hobbyResult">
                 SELECT * from hobby;
              </sql:query>
              <%-- select site table --%>
              <sql:query dataSource = "${snapshot}" var = "siteResult">
                 SELECT * from site;
              </sql:query>
              <%-- select app table --%>
              <sql:query dataSource = "${snapshot}" var = "appResult">
                       SELECT * from app;
              </sql:query>


              <%-- Display person tables containt --%>
      <div class="container">
        <h1 class="bg-success" style="color:#FFFFFF">Person table</h1></br>
              <div class="table-responsive">
                  <table class="table table-striped">
                    <thead class="thead-dark">
                        <tr>
                          <th>person ID</th>
                          <th>First Name</th>
                          <th>Last Name</th>
                          <th>address</th>
                          <th>city</th>
                          <th>country</th>
                     </tr>
                     </thead>
                  <%-- This is JSP comment --%>
                     <c:forEach var = "row" items = "${personResult.rows}">
                        <tr>
                           <td><c:out value = "${row.idperson}"/></td>
                           <td><c:out value = "${row.fName}"/></td>
                           <td><c:out value = "${row.LName}"/></td>
                           <td><c:out value = "${row.Address}"/></td>
                           <td><c:out value = "${row.city}"/></td>
                           <td><c:out value = "${row.country}"/></td>
                        </tr>
                     </c:forEach>
                  </table>
            </div>



            <h1  class="bg-info" style="color:#FFFFFF">projects table</h1></br>
                  <div class="table-responsive">
                      <table class="table table-striped">
                        <thead class="thead-dark">
                           <tr>
                              <th>project ID</th>
                              <th>person ID</th>
                              <th>project name</th>
                           </tr>
                       </thead>
                      <%-- This is JSP comment --%>
                         <c:forEach var = "row" items = "${projectResult.rows}">
                            <tr>
                               <td><c:out value = "${row.idproject}"/></td>
                                <td><c:out value = "${row.person_idperson}"/></td>
                               <td><c:out value = "${row.projectName}"/></td>


                            </tr>
                         </c:forEach>
                      </table>
                </div>

                <h1  class="bg-primary" style="color:#FFFFFF">language table</h1></br>
                      <div class="table-responsive">
                          <table class="table table-striped">
                              <thead class="thead-dark">
                               <tr>
                                  <th>language ID</th>
                                  <th>person ID</th>
                                  <th>language name</th>
                               </tr>
                           </thead>
                          <%-- This is JSP comment --%>
                             <c:forEach var = "row" items = "${languageResult.rows}">
                                <tr>
                                   <td><c:out value = "${row.idlanguage}"/></td>
                                    <td><c:out value = "${row.person_idperson}"/></td>
                                   <td><c:out value = "${row.languageName}"/></td>


                                </tr>
                             </c:forEach>
                          </table>
                    </div>


                    <h1  class="bg-danger" style="color:#FFFFFF">hobby table</h1></br>
                          <div class="table-responsive">
                              <table class="table table-striped">
                                  <thead class="thead-dark">
                                   <tr>
                                      <th>hobby ID</th>
                                      <th>person ID</th>
                                      <th>hobby name</th>
                                   </tr>
                                 <thead>
                              <%-- This is JSP comment --%>
                                 <c:forEach var = "row" items = "${hobbyResult.rows}">
                                    <tr>
                                       <td><c:out value = "${row.idhobby}"/></td>
                                        <td><c:out value = "${row.person_idperson}"/></td>
                                       <td><c:out value = "${row.hobbyName}"/></td>


                                    </tr>
                                 </c:forEach>
                              </table>
                        </div>

                                      <h1   class="bg-primary" style="color:#FFFFFF">sites table</h1></br>
                                            <div class="table-responsive">
                                                <table class="table table-striped">
                                                    <thead class="thead-dark">
                                                     <tr>
                                                        <th>site ID</th>
                                                        <th>person ID</th>
                                                        <th>siteName</th>
                                                     </tr>
                                                 </thead>
                                                <%-- This is JSP comment --%>
                                                   <c:forEach var = "row" items = "${siteResult.rows}">
                                                      <tr>
                                                         <td><c:out value = "${row.idsite}"/></td>
                                                          <td><c:out value = "${row.person_idperson}"/></td>
                                                         <td><c:out value = "${row.siteName}"/></td>


                                                      </tr>
                                                   </c:forEach>
                                                </table>
                                          </div>










          </div>

    </body>
</html>
