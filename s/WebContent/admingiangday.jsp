<%@page import="java.*" %>
<%@page import="dao.*" %>
<%@page import="model.*" %>
<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
    <div id="wrapper">
      <div class="container">
        <div class="row">
         
            <div class="container">
                <div class="row">
                
                    <div class="col-md-3">
                       <div class="panel panel-primary" style="padding-top:0px ">
                           <div class ="panel-body"> 
                  
                         		<ul class="nav navs-tabs-brand">
										<li class="active"><a href="trang-chu-quan-tri" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-home"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị </a></li>

										<li class="active"><a href="quanly-khoa-hoc"
											class="list-group-item " style="z-index: 0"><i
												class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Quản lý khoá học</a></li>

										<li class="active"><a href="quan-ly-thread"
											class="list-group-item " style="z-index: 0"><i
												class="glyphicon glyphicon-comment"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>

										<li class="active"><a href="ke-hoach-giang-day"
											class="list-group-item active"><i
												class="glyphicon glyphicon-calendar"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy<i class="glyphicon glyphicon-menu-right text-right"></i> </a></li>

										<li class="active"><a href="quan-ly-hoc-vien"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-user"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>

										<li class="active"><a href="gui-mail"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Gửi mail cho sinh viên</a></li>

										<li class="active"><a href="xem-danh-sach-bai-tap"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-book"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Bài tập của học viên</a></li>
										
										
										<li class="active"><a href="danh-sach-hoc-vien-nop-bai"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp;
												Bài thi của học viên</a></li>

										<li class="active"><a href="them-de-thi-trac-nghiem"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-record"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>
										
										<li class="active"><a href="quan-ly-tai-khoan"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-user"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý tài khoản</a></li>
												
												<li class="active"><a href="danh-sach-khoa-hoc-khao-sat"
											class="list-group-item" style="z-index: 0"><i
												class="glyphicon glyphicon-stats"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Kết quả khảo sát KH</a></li>
										
											<li class="active"><a href="quan-ly-bai-tap"
											class="list-group-item " style="z-index: 0"><i
												class="glyphicon glyphicon-bookmark"></i>
												&nbsp;&nbsp;&nbsp;&nbsp;Quản lý bài tập</a></li>
									</ul>
                    </div>  
                    </div>
                    </div>    
                    <div class="col-md-9">
                       <div class="panel panel-default" style="max-height:100%">
                                    <div class="panel-heading" style="background:#0CC">
                                        <h4 style="font-family: verdana;color:#000">Quản lý giảng dạy</h4>
                                    </div>
                                    <div class="panel-body">
                                        <table class="table table-bordered table-hover">
                                            <thead style="background:#09F">
                                          <tr>
                                           <th>STT</th>
                                            <th >Mã Khóa Học</th>
                                            <th >Tên Khóa Hoc</th>
                                            <th>Thời gian</th>
                                            <th >Thao Tác</th>
                                            </tr>
                                            </thead>
                                                      
     	 <% KhoaHocsDAO khoahocsDAO=new KhoaHocsDAO();
		%>        
                 		<%
                 			int i=0;
                            for (KhoaHocs kh :khoahocsDAO.getKhoaHocList()) {
                            	i++;
                        %>
                                            <tbody>
                                                <tr>
                                                    <td><%=i %></td>
                                                    <td><%=kh.getAdMaKH() %></td>
                                                    <td><%=kh.getAdTenKH() %></td>
                                                    <td><%=kh.getAdNgayKhaiGiang() %></td>
                                                    <th>
                                                        <center>
                                                             <a href="xem-bai-giang?khoahoc=<%=kh.getAdMaKH()%>"><button type="button" class="btn btn-info">Xem</button></a>
                                                         	 <a href="danh-sach-chi-tiet-khoa-hoc?khoahoc=<%=kh.getAdMaKH()%>">  <button type="button" class="btn btn-success">Chi tiết</button></a>
                                                       		 <a href="ad-thong-bao?khoahoc=<%=kh.getAdMaKH()%>">  <button type="button" class="btn btn-warning">Thông báo</button></a>
                                                       		
                                                        </center>
                                                    </th>
                                                </tr>
                                            </tbody>
                       
                        <%
                            }
                        %>
                                        </table>
                                    </div>
                                </div>
         </div>
            </div>
            </div>
            </div>
         </div></div>
      <jsp:include page="footer.jsp" ></jsp:include>    
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>