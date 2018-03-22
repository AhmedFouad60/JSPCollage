<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<html>
   <head>
      <title>JINSERT Operation</title>
      <meta charset="utf-8">

    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="Design/form.css" >
   </head>

   <body>
     <%
            String test = "";
            pageContext.setAttribute("test", test);
    %>





      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/week2"
         user = "root"  password = ""
         />

<%------------------------------------ Start  person TABLE --------------------------------------%>
<sql:update dataSource = "${snapshot}" var = "result">
         <%-- inset in the person table --%>
         INSERT INTO person (Email,fName,LName,Address,city,country)
         VALUES ('<%=(String)( request.getParameter("Email"))%>',
          '<%=(String)(request.getParameter("fName"))%>',
          '<%=(String)(request.getParameter("LName"))%>',
           '<%=(String)(request.getParameter("Address")) %>',
           '<%=(String)(request.getParameter("city"))%>',
           '<%=(String)(request.getParameter("country"))%>');

</sql:update>
<%------------------------------------ End  person TABLE --------------------------------------%>

<%------------------------------------ Start  project TABLE --------------------------------------%>
 <sql:update dataSource = "${snapshot}" var = "result">
              <%-- select person table  and get the current user entring the data--%>
              <sql:query dataSource = "${snapshot}" var = "personResultForign">
                 SELECT * from person where Email='<%=request.getParameter("Email")%>'
              </sql:query>
      <c:forEach var = "row" items = "${personResultForign.rows}">
        <%-- inset in the project table --%>
        INSERT INTO project (projectName,person_idperson)
         VALUES ('<%=(String)(request.getParameter("projectName"))%>',
        '<c:out value = '${row.idperson}'/>'
         );
       </c:forEach>
</sql:update>
<%------------------------------------ End  project TABLE --------------------------------------%>

<%------------------------------------ Start  course TABLE --------------------------------------%>
   <sql:update dataSource = "${snapshot}" var = "result">
       <%-- inset in the course table --%>

       <%-- select person table  and get the current user entring the data--%>
       <sql:query dataSource = "${snapshot}" var = "personResultForign">
          SELECT * from person where Email='<%=request.getParameter("Email")%>'
       </sql:query>

       <c:forEach var = "row" items = "${personResultForign.rows}">

         INSERT INTO course (courseName,person_idperson)
          VALUES ('<%=(String)(request.getParameter("courseName"))%>',
         '<c:out value = '${row.idperson}'/>'

          );
        </c:forEach>
</sql:update>
<%------------------------------------ End  course TABLE --------------------------------------%>

<%------------------------------------ Start  hobby TABLE --------------------------------------%>
      <sql:update dataSource = "${snapshot}" var = "result">
      <%-- inset in the course table --%>

      <%-- select person table  and get the current user entring the data--%>
      <sql:query dataSource = "${snapshot}" var = "personResultForign">
       SELECT * from person where Email='<%=request.getParameter("Email")%>'
      </sql:query>

      <c:forEach var = "row" items = "${personResultForign.rows}">

      INSERT INTO hobby (hobbyName,person_idperson)
       VALUES ('<%=(String)(request.getParameter("hobbyName"))%>',
      '<c:out value = '${row.idperson}'/>'

       );
      </c:forEach>
</sql:update>
<%------------------------------------ End  Hobby TABLE --------------------------------------%>

<%------------------------------------ Start Site TABLE --------------------------------------%>


<sql:update dataSource = "${snapshot}" var = "result">
      <%-- inset in the course table --%>

      <%-- select person table  and get the current user entring the data--%>
      <sql:query dataSource = "${snapshot}" var = "personResultForign">
       SELECT * from person where Email='<%=request.getParameter("Email")%>'
      </sql:query>

      <c:forEach var = "row" items = "${personResultForign.rows}">

      INSERT INTO site (siteName,person_idperson)
       VALUES ('<%=(String)(request.getParameter("siteName"))%>',
      '<c:out value = '${row.idperson}'/>'

       );
      </c:forEach>

</sql:update>
<%------------------------------------ End Site TABLE --------------------------------------%>

<%------------------------------------ Start language TABLE --------------------------------------%>


<sql:update dataSource = "${snapshot}" var = "result">
      <%-- inset in the course table --%>

      <%-- select person table  and get the current user entring the data--%>
      <sql:query dataSource = "${snapshot}" var = "personResultForign">
       SELECT * from person where Email='<%=request.getParameter("Email")%>'
      </sql:query>

      <c:forEach var = "row" items = "${personResultForign.rows}">

      INSERT INTO language (languageName,person_idperson)
       VALUES ('<%=(String)(request.getParameter("languageName"))%>',
      '<c:out value = '${row.idperson}'/>'

       );
      </c:forEach>

</sql:update>
<%------------------------------------ End language TABLE --------------------------------------%>


<%------------------------------------ Start app TABLE --------------------------------------%>


<sql:update dataSource = "${snapshot}" var = "result">
      <%-- inset in the course table --%>

      <%-- select person table  and get the current user entring the data--%>
      <sql:query dataSource = "${snapshot}" var = "personResultForign">
       SELECT * from person where Email='<%=request.getParameter("Email")%>'
      </sql:query>

      <c:forEach var = "row" items = "${personResultForign.rows}">

      INSERT INTO app (appName,person_idperson)
       VALUES ('<%=(String)(request.getParameter("appName"))%>',
      '<c:out value = '${row.idperson}'/>'

       );
      </c:forEach>

</sql:update>
<%------------------------------------ End app TABLE --------------------------------------%>



<%--Redirct to the index page to show the tables--%>
<c:redirect url="index.jsp"/>


   </body>
</html>
