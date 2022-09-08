<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.StudentDao"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
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
</style>
</head>
<body>
<%
  int Id=Integer.parseInt(request.getParameter("id"));
  String Name=request.getParameter("name");
  String Email=request.getParameter("email");
  String Pass=request.getParameter("pass");
  String Address=request.getParameter("address");
 
      try{
    	  
    	  Connection conn=StudentDao.getConn();
    	 
    	 PreparedStatement ps=conn.prepareStatement("insert into courdstudent2 values(?,?,?,?,?)");
    	  ps.setInt(1, Id);  
    	  ps.setString(2, Name);
    	  ps.setString(3,Email);
    	  ps.setString(4, Pass);
    	  ps.setString(5, Address);
    	 ps.executeUpdate();
    	 
    	 out.print("Your data Inserted Successfully");
    	 
      }catch(Exception e){
    	  
      }
    %>
    <a href="index.jsp">back to home page</a>
</body>
</html>