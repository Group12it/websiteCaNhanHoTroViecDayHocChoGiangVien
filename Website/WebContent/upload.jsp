<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>JSP Page</title>

</head>

<body>

<form action="UploadServlet" method="post" enctype="multipart/form-data"> <br><br>

<table>

<tr>

<td>UserName: </td>

<td width='10px'></td>

<td><input type="text" name="name"/></td>

</tr>

<tr>

<td>Upload: </td>

<td width='10px'></td>

<td><input type="file" name="file" value="Upload"/></td>

</tr>

<tr>

<td><input type="submit" value="submit"></td>

</tr>

</table>

</form>

</body>

</html>