<%@ page import="java.sql.*" %>
<%!Statement st=null;
Connection cn=null;
%>
<%-- <%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
cn=DriverManager.getConnection("jdbc:odbc:data","root","");

st=cn.createStatement();
%> --%>
 
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8" content="IE-edge">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">
   <%@page import="dao.*" %>
   <%@page import="controller.*" %>
   <%@page import="model.*" %>
     <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script type="text/javascript">
function onFileSelected(event) {
	  var selectedFile =event.target.files[0];
	  var reader = new FileReader();

	  var imgtag = document.getElementById("target");
	  imgtag.title = selectedFile.name;

	  reader.onload = function(event) {
	    imgtag.src = event.target.result;
	  };

	  reader.readAsDataURL(selectedFile);
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/web" user="root" password="admin"/>

  
      <%
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
        %>	
       
<sql:query dataSource="${DBConnect }" var="result"> select * from users where Email="<%=users.getUserEmail()%>";</sql:query> 


 <div id="wrapper">
      <div class="container">
        <div class="row">
         
            <div class="container">
                <div class="row">
                
                    <div class="col-md-12">
                       <div class="panel panel-primary" style="padding-top:0px ">
               <div class="panel panel-default">
                                <div class="panel-body text-center"><font size="5" color="green" >Thông tin cá nhân</font> </div>
                            </div>
                           <div class ="panel-body"> 
                         <div class="col-md-4 " >
                            <table class="table table-bordered" style="overflow-x:auto;">
                                <thead>
                                    <tr>
                                        
                                             <td style=" height:0px;" colspan="1" align="center">
                                            <h4> Ảnh đại diện</h4>
                                            <table class="table table-bordered">
                                                <thead>
                                                <c:forEach var="rows" items="${result.rows }">
                                		 		<tr>
                                				<img src="Upload/Avartar/${rows.HinhAnh }" class="img-responsive img-circle"></img>
</td>	
                                				</tr>
                                			</c:forEach> 
                                                  
                                                </thead>
                                            </table>
                                        		
                                        </td>
                         	 </tr>
                        </thead>

                        </table>
                        </div>
                        
                                        <div class="col-md-8 " >
                            <table class="table table-bordered" style="overflow-x:auto;">
                                

                                       <div class="panel-body">
                                         	
                                         
                                                <form class="form" method="post" id="contactform" action="capnhatthongtin.jsp" role="form">
                                                 <div class="form-group has-feedback">
                                                        <label><strong>ID:</strong>  <%if(users!=null){%>
             			 								  <a href="#" class="dropntn">  <%=users.getUserID()%></a> </li>
                             							   <%}%></label>
                                                       
                                                    </div>
                                                   <div class="form-group">
                                                        
                                                        <label ><strong>Email:</strong>   <%if(users!=null){%>
             			 								  <a href="#" class="dropntn"><%=users.getUserEmail()%></a> </li>
                             							   <%}%>
                             							 </label>  
                             							 <%--Lấy email cá nhân --%>
                                                       
                                                        </div>
                                                <c:forEach var="rows" items="${result.rows }">
                                                 <div class="form-group has-feedback">
                                                        <label><strong>Họ và tên:</strong> <%if(users!=null){%>
             			 								  <a href="#" class="dropntn"><c:out value="${rows.HoTen}"></c:out></a> </li>
                             							   <%}%></label>
                                                       
                                                    </div>
                                                    
                                            
                                                    
                                                     <div class="form-group has-feedback">
                                                        <label ><strong>Ngày sinh:</strong> <%if(users!=null){%>
             			 								  <a href="#" class="dropntn"> <c:out value="${rows.NgaySinh}"></c:out></a> </li>
                             							   <%}%></label>
                                                       
                                                    </div>
                                                    <div class="form-group has-feedback">
                                                        <label ><strong>Giới tính:</strong><%if(users!=null){%>
             			 								  <a href="#" class="dropntn"><c:out value="${rows.GioiTinh}"></c:out></a> </li>
                             							   <%}%></label>
                                                       
                                                    </div>
                                                  
                                                 
                                                        <div class="form-group">
                                                           <label ><strong>Điện thoại :</strong><%if(users!=null){%>
             			 								  <a href="#" class="dropntn">0<c:out value="${rows.SDT}"></c:out></a> </li>
                             							   <%}%></label>
                                                        </div>
                                                     </c:forEach>
                                                   <a href="capnhatthongtin.jsp"> <button type="Submit" id="btncapnhat" name="btncapnhat" class="btn btn-info">Cập nhật</button></a>
                                                     
                                                     
                                               
                                            </form>
                                            </div>
                        	</table>
                        </div>
                        
                                  
                                            
                        </div>
                    </div>  
                    </div>
                    </div>    
                      </div>
            </div>
            </div>
         </div>
            <jsp:include page="footer.jsp"></jsp:include>
                    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
                    <!-- Include all compiled plugins (below), or include individual files as needed -->
                    <script src="js/bootstrap.min.js"></script>
                    </body>
</html>