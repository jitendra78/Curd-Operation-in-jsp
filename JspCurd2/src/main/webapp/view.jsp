<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.StudentDao"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
  body {
	text-align: center;
	margin-top: 5%;
}
table {
	margin-left: 35%;
}
</style>
</head>
<body>
     <h3>Show All Record</h3>
     <table border="1">
       <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Password</th>
        <th>Address</th>
       </tr>
       
       <%
        try{
        	Connection conn=StudentDao.getConn();
        	PreparedStatement ps=conn.prepareStatement("select * from courdstudent2");
        	ResultSet rs=ps.executeQuery();
        	while(rs.next()){
        		
        	%>
        	  <tr>
        	   <td><%=rs.getInt(1) %></td>
        	   <td><%=rs.getString(2) %></td>
        	   <td><%=rs.getString(3) %></td>
        	   <td><%=rs.getString(4) %></td>
        	   <td><%=rs.getString(5) %></td>
        	  </tr>
        	
        	<%
        }}
       catch(Exception e){
    	   
       }
       %>
     
     </table>
     <a href="index.jsp">Home Page</a>
</body>
</html>