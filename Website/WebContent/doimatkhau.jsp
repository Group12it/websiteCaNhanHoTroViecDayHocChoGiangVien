   <%@page import="dao.*" %>
   <%@page import="controller.*" %>
   <%@page import="model.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <!-- Bootstrap -->
   <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 
  </head>
   <body>
     <%
           
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
  UsersDAO userDAO=new UsersDAO();
            
  String loi="";
  if(request.getAttribute("khongtrungmk")!=null)
  {
	  loi=(String) request.getAttribute("khongtrungmk");
  }
  if(request.getAttribute("saimk")!=null)
  {
	  loi=(String) request.getAttribute("saimk");
  }
  if(request.getAttribute("mktrong")!=null)
  {
	  loi=(String) request.getAttribute("mktrong");
  }
  if(request.getAttribute("khongmk")!=null)
  {
	  loi=(String) request.getAttribute("khongmk");
  }
  %>
 <%--   <sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://node177650-nhom12it.jelastic.servint.net/web" user="root" password="CCJD98OftR"/>
   <sql:query dataSource="${DBConnect }" var="result"> select * from users where Email="<%=users.getUserEmail()%>";</sql:query> 
  --%>  <jsp:include page="header.jsp"></jsp:include>
  
  <div id="wrapper">
      <div class="container">
        <div class="row">
          <div class="content col-md-9 col-sm-9 col-xs-12"><br><br>
           <div class="container">
                <div class="row">
                <div class="col-md-1">
                          <ul class="nav navs-tabs-brand">
                        </ul>
                    </div>    
                     <div class ="col-md-7">
              <h1>Đổi mật khẩu</h1>
               <table class="table table-bordered" cols="100">
               <thead>
               <tr>
               <th>
                       <!-- start gửi mail-->
                    <div class="panel-body">
                    <form class="form" method="post" id="contactform" action="Home" role ="form">
                    <div class="form-group has-feedback">
                     	<%--Lấy id hiện tại để set pass --%>
                       <input type="hidden" class="form-control" name="UserID" id="contactho" value="<%=users.getUserID() %>" readonly="readonly">
                        <%--So sánh với pass trong database với user hiện tại --%>
                        <input type="hidden" class="form-control" name="passold" value="<%=users.getUserPass()%>" readonly="readonly">
 
                        </div>
                        <div class ="form-group">
         
                  <label for="contactmatkhauhientai">Mật khẩu hiện tại <font size="4" color="red">*</font></label>
                  <input name="pass" type="password" class="form-control" id="contactmatkhauhientai" placeholder="">
                  </div>
                  
                  <%if(request.getAttribute("saimk")!=null){%>
                        <div class="">
                            <p style="color:red"><%=request.getAttribute("saimk")%></p>
                        </div> 
                        <%} %>
                    <%if(request.getAttribute("mktrong")!=null){%>
                        <div class="">
                            <p style="color:red"><%=request.getAttribute("mktrong")%></p>
                        </div> 
                    <%} %>     
                   
                <div>
                 <label for="contactmatkhaumoi">Mật khẩu mới <font size="4" color="red">*</font></label>
                <input name="passnew" type="password" class="form-control" id="contactmatkhaumoi" placeholder="">
                <br>
                </div>
              <%if(request.getAttribute("khongmk")!=null){%>
                        <div class="">
                            <p style="color:red"><%=request.getAttribute("khongmk")%></p>
                        </div> 
                        <%} %>
                <div>
                <label for="contactnhaplaimatkhaumoi">Nhập lại mật khẩu mới <font size="4" color="red">*</font></label>
                <input name="passre" type="password" class="form-control" id="contactnhaplaimatkhaumoi" placeholder="">
                </div>
                   <%if(request.getAttribute("khongtrungmk")!=null){%>
                        <div class="">
                            <p style="color:red"><%=request.getAttribute("khongtrungmk")%></p>
                        </div> 
                        <%} %>
                <br>
                       <input type="hidden" value="changepass" name="command"> 
                        <button type="Submit" id ="contactluu" class="btn btn-info">Lưu</button>
                <a href="indexuser.jsp"><button type="button" id ="contacthuy" class="btn btn-info">Hủy</button></a>
                        <!-- kết thúc gửi mail-->
                    
                </form>
                </div>
                 </th>
       </tr>
       </thead>
       </table>
   
        </div>
          </div>
    </div></div></div></div></div>
  <jsp:include page="footer.jsp"></jsp:include>
<script type="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

  </body>
</html>