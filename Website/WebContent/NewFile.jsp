<%@ page import="java.sql.*" %>
<%@ page import="connect.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



</HEAD>

    <BODY>
       
            <% Connection connection = DBConnect.getConnection();

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from viewthongtindangky") ; 
        %>

        <TABLE >
            <TR>
               <th>Emp ID</th>
			   <th>First Name</th>
			   <th>Last Name</th>
			   <th>Age</th>
			   <th>Last Name</th>
			   <th>Age</th>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
              
            </TR>
            <% } %>
        </TABLE>
    </BODY>
</HTML>