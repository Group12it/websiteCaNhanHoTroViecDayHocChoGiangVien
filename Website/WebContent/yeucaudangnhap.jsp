<%@ page import="java.lang.*" %>
<%@ page import="model.*" %>
<%@page import="controller.*" %>
<%@page import="dao.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <head>
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width = device-width, initial-scale=1">
    <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
       <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
		<script src="js/angular.min.js"></script>
      <script src="js/myUsers.js"></script>
  </head>

<body ng-app="myApp" ng-controller="userCtrl">
<%-- <sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver" --%>
<%-- 		url="jdbc:mysql://localhost/web" user="root" password="admin" /> --%>
<%-- <sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver" --%>
<%-- 	url="jdbc:mysql://node177650-nhom12it.jelastic.servint.net/web" user="root" password="CCJD98OftR" /> --%>
  <%
  
  	String error="";
  if(request.getAttribute("error")!=null)
  {
	  error=(String) request.getAttribute("error");
  }
  %>
  <% KhoaHocsDAO khoahocsDAO=new KhoaHocsDAO();
%>
  
<jsp:include page="headers.jsp"></jsp:include>
 
 <section class="container" style="min-height:500px">
        
   <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                 <div class="modal-content">
                    <div class="modal-header" style="padding:10px 20px;background:#0CC;">
                        <button type="button" class="close" data-dismiss="modal">
                            &times;
                        </button>
                        <h2 style="color:white"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</h2>
                    </div>
                    <div class="modal-body" style="padding:40px 50px;">
                  <div class="account">
                            <form id="frm-login" action="Home
		                    " method="POST" class="form-horizontal"   data-bv-message="This value is not valid"
		            data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
		            data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
		            data-bv-feedbackicons-validating="glyphicon glyphicon-refresh"
		            >
		            <%--Loi --%>        
                      <div id="err_login"></div>
                        <%if(request.getAttribute("error")!=null){%>
                        <div class="">
                            <p style="color:red"><%=request.getAttribute("error")%></p>
                        </div> 
                        <%}%>
                     <div class="form-group">
                    <label class="control-label col-md-3" for="email">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <div class="col-md-8">
           				 <input class="w3-input w3-border" type="email" name="email" ng-model="email"  placeholder="Email" requied autofocus>
                        
                    </div>
                	</div>
               
               		 <div class="form-group">
                    <label class="control-label col-md-3" for="email">Mật khẩu:</label>
                    <div class="col-md-8">
           				  <input class="w3-input w3-border" type="password" name="pass" ng-model="password" placeholder="Mật khẩu"
                              >        
                    </div>
                	</div>
               		 
               		  <div class="form-group">
                   <label class="control-label col-md-4" for="email"></label>
                    <div class="col-md-6">
           			     <input  type="hidden" value="login" name="command">
                            <button  style="border-radius: 15px; margin-right: 30px;" value="login" class="w3-btn w3-green w3-ripple text-center" ng-disabled="error || incomplete">&#10004; Đăng nhập</button>
   
                    </div>
                	</div>
               		       </form>
                    
                </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
                            <span class="glyphicon glyphicon-remove"></span> Đóng
                        </button>
                        <p>
                            <a href="../../TaiKhoan/LayLaiMatKhau.jsp">Quên mật khẩu?</a>
                        </p>
                    </div>
                </div>

            </div>
        </div>
        <section class="row">
  <div class="container">
        <div class="row">
  	
        <div class="col-md-9">
      
        <div class="panel panel-default">
								<div style="color: rgb(7, 132, 163);" class="panel-heading; text-center">
									<h4 style="font-family: verdana; color: rgb(87, 87, 87);text-center" >Thông
										báo</h4>
								</div>
								<div class="panel-body">
									<div class="alert alert-warning text-center">
										Vui lòng Đăng nhập để vào hệ thống </a> 
									</div>
								</div>
							</div>
   
 </div>
<!--Thông báo-->
   <div class="sidebar col-md-3 col-sm-3 col-xs-12">
     
              <div class="panel panel-default">
                                <div class="panel-body" align="center"><font size="3" color="green">Thông báo mới </font> </div>
                            </div>
             <table class="table table-bordered">
             <thead>
             <tr>
             <th>
              <marquee SCROLLDELAY = 150 width ="100%" height = "300" direction="up" style ="font:arial" scrollamount="2" id="bannerthongbao" name="bannerthongbao" onmouseover="this.stop()" onmouseout="this.start()">
             <ul>
                 
                 	<%
                            for (KhoaHocs kh :khoahocsDAO.getKhoaHocList()) {
                        %>
                           	<li><a href="chi-tiet-khoa-hoc-xem?khoahoc=<%=kh.getAdMaKH()%>"><%=kh.getAdTenKH()%></a></li>
                           	<p></p>
                        <%
                            }
                        %>
                              </ul>
             </marquee>
             </th>
             </tr>
             </thead>
             </table>
    </div>
    </div></div>
  
  
        </section>
    </section>
	<jsp:include page="footer.jsp"></jsp:include>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js" type="text/javascript"></script>
<script>
$('#contactform').bootstrapValidator();
</script>
<!--Script chuyển động baner-->
<script src="Scripts/bannerchuyendong.js"></script>
<!--Script chuyển động baner-->
<script src="ajax.aspnetcdn.com/ajax/jQuery/jquery-2.1.4.min.js"></script>
<script src="ajax.aspnetcdn.com/ajax/jquery.ui/1.10.3/jquery-ui.min.js"></script>
<!-- <script src="ajax.aspnetcdn.com/ajax/bootstrap/3.3.5/bootstrap.min.js"></script> -->
<script src="Scripts/respond.min.js"></script>
<script src="Scripts/jssocials.min.jsp"></script>
<script src= "myUsers.js"></script>
<script src="Scripts/dangnhapdangky.js"></script>

    <script src="Scripts/jquery.unobtrusive-ajax.min.js"></script>
    <script src="Scripts/jquery.bxslider.min.js"></script>
    
    
    <script>
        $(function () {
            $('.slider1').bxSlider({
                slideWidth: 200,
                minSlides: 1,
                maxSlides: 10,
                slideMargin: 25
            });
            $(".bx-default-pager").remove();
        });
    </script>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
 
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>