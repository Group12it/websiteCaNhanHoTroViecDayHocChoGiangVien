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
    <jsp:include page="headers.jsp"></jsp:include>
  
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
              <h1>Phục hồi mật khẩu</h1>
               <table class="table table-bordered" cols="100">
               <thead>
               <tr>
               <th>
                       <!-- start gửi mail-->
                    <div class="panel-body">
                    <form class="form" method="post" onsubmit="return formaction()" action="PhucHoiMKServlet" role ="form">
                    <div class="form-group has-feedback">
                  
                        </div>
              
                   
                <div>
                 <label for="contactmatkhaumoi">Nhập email đã đăng ký của bạn <font size="4" color="red">*</font></label>
                <input name="email" type="email" class="form-control"  placeholder="">
                <br>
                </div>
             
                <br>
<!--                        <input type="hidden" value="changepass" name="command">  -->
                        <button type="Submit" id ="contactluu" class="btn btn-info"('Vui lòng vào mail để kiểm tra!')" >Gửi</button>
                <a href="home"><button type="button" id ="contacthuy" class="btn btn-info"   >Hủy</button></a>
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
      <script type="text/javascript">
    function formaction(){
     return alert('Thao tác thành công');
        
    }</script>

    
  </body>
</html>