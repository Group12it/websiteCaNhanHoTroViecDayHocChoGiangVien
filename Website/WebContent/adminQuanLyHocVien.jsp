<%@ page import="java.sql.*" %>
<%@ page import="connect.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>
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
   <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
   

   
</head>

<body>

	<jsp:include page="header.jsp" ></jsp:include>
	
	   
    <div id="wrapper">
      <div class="container">
        <div class="row">
         
            <div class="container">
                <div class="row">
                
                    <div class="col-md-3">
                       <div class="panel panel-primary" style="padding-top:0px ">
                           <div class ="panel-body"> 
                  
                         <ul class="nav navs-tabs-brand">
                           <li class="active"><a href="trang-chu-quan-tri" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>
                               
                                <li class="active"><a href="quanly-khoa-hoc" class ="list-group-item " style="z-index: 0"><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>
                               
                                <li class="active"><a href="quan-ly-thread" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>
                             
                                <li class="active"><a href="ke-hoach-giang-day" class ="list-group-item" ><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>
                              
                                <li class="active"><a href="quan-ly-hoc-vien" class="list-group-item active" style="z-index: 0"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>
                              
                                <li class="active"><a href="gui-mail" class ="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>
                              
                            
                                <li class="active"><a href="danh-sach-hoc-vien-nop-bai" class ="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>
                               
                                <li class="active"><a href="them-de-thi-trac-nghiem" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

                        </ul>
                    </div>  
                    </div>
                    </div>    
                         <div class="col-md-9">
                         <ul class="nav navs-tabs-brand">
                   
                                <div class="col-md-12">
                         <div class="panel panel-default" 	>
                                    <div class="panel-heading" style="background:#0CC">
                                        <h4 style="font-family: verdana;color:#000">Xác nhận đăng ký của sinh viên</h4>
                                    </div>
                                    <div class="panel-body">

                                        <form class="form-horizontal" role="form">
                                            <div class="form-group form-group-sm">
                                                <label class="col-sm-2 control-lable" for="fromGroupInputSmall">Email:</label>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" id="fromGroupInputSmal">
                                                </div>
                                                <label class="col-sm-2 control-lable" for="fromGroupInputSmall">Họ Tên:</label>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" id="fromGroupInputSmal">
                                                </div>
                                            </div>
                                            <div class="form-group form-group-sm">
                                                <label class="col-sm-2 control-lable" for="fromGroupInputSmall">Số điện thoại:</label>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" id="fromGroupInputSmal">
                                                </div>
                                                <a href="#" class="btn btn-info btn-lg">
                                                    <span class="glyphicon glyphicon-search"></span> Search
                                                </a>
                                            </div>

                                        </form>


                                        <table  class="table table-striped" border="1" >
                                            <thead style="background:#09F">
                                                <tr>
                                                    <th><center>Email</center></th>
                                                    <th><center>Họ Và Tên</center></th>
                                                    <th><center>Ngày sinh</center></th>
                                                    <th><center>Số điện thoại</center></th>
                                                    <th><center>Tên khóa học</center></th>
                                                    <th width="21%"><center>Thao tác</center></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <% Connection connection = DBConnect.getConnection();

									            Statement statement = connection.createStatement() ;
									            ResultSet resultset = 
									                statement.executeQuery("select * from viewthongtindangky where chophep=0") ; 
									        %>
									 
									
									            <% while(resultset.next()){ %>
									            <tr>
									                <td> <%= resultset.getString(2) %></td>
									                <td> <%= resultset.getString(3) %></td>
 									                <td><%= resultset.getString(4) %></td> 
 									                <td>0<%= resultset.getString(5) %></td> 
 									                <td> <%= resultset.getString(7) %></td> 
 									                 
													<td width="21%" >
									                 <form action="DangKyKhoaHocServlet?userid=<%= resultset.getString(1)%>&makh=<%= resultset.getString(6) %>" method="post">
                                                        <button type="submit" class="btn btn-success" id="ddfbtnXacNhan">Xác Nhận</button>
                                                       <a href="XoaXacNhan?makh=<%= resultset.getString(6) %>&userid=<%=resultset.getLong(1)%>" style="text-decoration: underline"><button type="button" class="btn btn-warning" id="btnXoa1" title="right">Xóa</button></a>
                                                     </form>
                                                    </td>
									              
									            </tr>
									            <% } %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading" style="background:#0CC">
                                        <h4 style="font-family: verdana;color:#000">Sinh Viên Trong Khóa Học</h4>
                                    </div>
                                    <div class="panel-body">




                                        <table class="table table-striped" border="1" >
                                            <thead style="background:#09F">
                                                <tr>
                                                    <th width="10%"><center>STT</center></th>
                                                    <th><center>Mã Khóa Học</center></th>
                                                    <th><center>Tên Khóa Học</center></th>
                                                    <th width="10%"><center>Số Lượng</center></th>
                                                    <th width="20%"><center>Danh Sách</center></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                               <% resultset = 
									                statement.executeQuery("select * from viewthongtinkhoahoc") ; 
                                               int i=0;
									        %>
									
									            <% while(resultset.next()){i++; %>
									            <tr>
									            	<td><%=i %></td>
									                <td> <%= resultset.getString(1) %></td>
									                <td> <%= resultset.getString(2) %></td>
									                <td> <%= resultset.getString(3) %></td>
                                                    <td>
                                                    <center>
                                                        <a href="XemDanhSachKhoaHocServlet?makh=<%=resultset.getString(1)%>&tenkh=<%= resultset.getString(2)%>" style="text-decoration:underline">Xem Danh sách</a>
                                                    </center>
                                                    </td>
                                                </tr>
                                                
                                                <% } %>
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
               
                     </div>

                    </ul>
                                            

                     </div>
           </div>
            </div>
            </div>
         </div></div>
    
    <jsp:include page="footer.jsp" ></jsp:include>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>