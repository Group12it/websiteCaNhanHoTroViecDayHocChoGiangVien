<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix= "c" %>
		<%@ taglib uri= "http://java.sun.com/jsp/jstl/sql" prefix= "sql" %>
</head>
<body>
	<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/web" user="root" password="admin" />
	
	<sql:query dataSource="${DBConnect }" var="result"> SELECT GROUP_CONCAT(Email)
FROM users</sql:query> 
	
	
	 <c:set var="count" value="" />
	<c:forEach var="rows" items="${result.rows }">
	
		${rows.Email}
	<c:set var="count" value="${rows.Email }" />
    </c:forEach>
                                                     
           <input value="${count }" />   
	
</body>
</html>