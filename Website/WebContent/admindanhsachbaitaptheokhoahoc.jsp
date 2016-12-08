<%@ page import="java.sql.*"%>
<%@ page import="connect.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.*"%>
<%@page import="dao.*"%>
<%@page import="controller.*"%>
<%@page import="model.*"%>


<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
  <head>
    <meta content="charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />

  </head>
 <body>
	
	<jsp:include page="header.jsp" ></jsp:include>
	
	
	<% 
		DeThiDAO dethidao=new DeThiDAO();
		BaiTapHocVienNopDAO baitapnop=new BaiTapHocVienNopDAO();
		AdminBaiTapDAO adbtDao=new AdminBaiTapDAO();
	%>
	
  <div id="wrapper">
      <div class="container">
        <div class="row">
         
            <div class="container">
                <div class="row">
                
                    <div class="col-md-3">
                       <div class="panel panel-primary" style="padding-top:0px ">
                           <div class ="panel-body"> 
                  
                         <ul class="nav navs-tabs-brand">
                           <li class="active"><a href="trang-chu-quan-tri" class="list-group-item " style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>
                               
                                <li class="active"><a href="quanly-khoa-hoc" class ="list-group-item " style="z-index: 0"><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>
                               
                                <li class="active"><a href="quan-ly-thread" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>
                             
                                <li class="active"><a href="ke-hoach-giang-day" class ="list-group-item" ><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>
                              
                                <li class="active"><a href="quan-ly-hoc-vien" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>
                              
                                <li class="active"><a href="gui-mail" class ="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>
                              
                            
                               	<li class="active"><a href="xem-danh-sach-bai-tap"
											class="list-group-item active" style="z-index: 0"><i
												class="glyphicon glyphicon-book"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Bài tập của học viên</a></li>
										
										
										<li class="active"><a href="danh-sach-hoc-vien-nop-bai"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Bài thi của học viên</a></li>
                                <li class="active"><a href="them-de-thi-trac-nghiem" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

                        </ul>
                    </div>  
                    </div>
                    </div>    
                    <div class="col-md-9">
                         <ul class="nav navs-tabs-brand">
                               
                                <a class ="list-group-item text-center " href="#" style="font-size: 20px;color: blue;background:#0CC ">Bài Nộp Thi Trắc Nghiệm</a> </br>                                
                                <table class="table table-striped" border="1" >
                                    <thead>
                                      <tr>
                                        <th dir="rtl" style="background:#0CC"> STT</th>
                                        <th dir="rtl" style="background:#0CC">Tên bài tập</th>
                                        <th dir="rtl" style="background:#0CC">Chi Tiết  </th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                 
                                 	<%
											int i = 0;
											for (AdminBaiTap adbt:adbtDao.getAdminBaiTapList()) {
												i++;
										%>
										<tr>
											<td><%=i%></td>
											<td><%=adbt.getTenBaiTap() %></td>
											<td><center>
													<a href="xem-danh-hoc-vien-nop-bai-tap?mabaitap=<%=adbt.getIDBaiTap() %>&khoahocchitiet=<%=adbt.getMaChiTietKH() %>"
														class="btn btn-info btn-sm" style="background: #ff3300;">
														<span class="glyphicon glyphicon-view"></span>Xem chi tiết
													</a>
												</center></td>
										</tr>
										<%
											}
										%>
                                 
                                
                                    </tbody>
                                  </table>  
                    </ul>
                                            

                     </div>
  
      
            </div>
            </div>
            </div>
         </div></div>
	  <jsp:include page="footer.jsp"></jsp:include>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>