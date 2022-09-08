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
      <form action="insertpro.jsp" method="post">
      <h3>User Registration </h3>
      <br><br><br>
      <label>User Id</label>
      <input type="tel" name="id" placeholder="Id">
      <br><br><br>
            <label>User Name</label>
       <input type="text" name="name" placeholder="Name">
      <br><br><br>
            <label>User Email</label>
       <input type="email" name="email" placeholder="Email">
      <br><br><br>
            <label>User Password</label>
       <input type="password" name="pass" placeholder="Password">
      <br><br><br>
            <label>User Address</label>
       <input type="text" name="address" placeholder="Address">
      <br><br><br>
      <input type="submit" value="Send">
      </form>
</body>
</html>