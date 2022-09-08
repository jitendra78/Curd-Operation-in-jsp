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
</style>
</head>
<body>
     <%
       int Id=Integer.parseInt(request.getParameter("id"));
     out.print(Id);
     int x=1;
       try{
    	   
    	   Connection conn=StudentDao.getConn();
    	  
    	   PreparedStatement ps=conn.prepareStatement("delete  from courdstudent2 where id=?");
    	    ps.setInt(1, Id);
    	   ps.executeUpdate();
    	  if(x==1){
    		  out.print("Your data is deleted");
    	  }
       }catch(Exception e){
    	   
       }
     %>
     <a href="index.jsp">Back to home page</a>
</body>
</html>