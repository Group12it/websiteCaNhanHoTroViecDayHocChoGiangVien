<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />

<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
    <link href="css/styleadmin.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="css/stylemenu.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" media="all" type="text/css" href="css/font-awesome.min.css" />

   
</head>

<body>

	<jsp:include page="headeradmin.jsp" ></jsp:include>
    <div class="paper">
        <table class="tbBody">
            <tr style="height:600px">
                <td class="content-left" width="25%">

                    <div class="panel panel-primary" style="padding-top:0px ">
                        <div class="panel-body">

                            <ul class="nav navs-tabs-brand">
                                <li class="active"><a href="admin.jsp" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>

                                <li class="active"><a href="quanlykhoahoc.jsp" class="list-group-item"><i class="glyphicon glyphicon-education"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý khóa học</a></li>

                                <li class="active"><a href="threadadmin.jsp" class="list-group-item"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>

                                <li class="active"><a href="admingiangday.jsp"  class="list-group-item"><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>

                                <li class="active"><a href="adminQuanLyHocVien.jsp" class="list-group-item active" style="z-index: 0"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>

                                <li class="active"><a href="adminGuiMail.jsp" class="list-group-item"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>

                                <li class="active"><a href="admindanhsachhocvien.jsp" class="list-group-item"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>

                                <li class="active"><a href="admindethitracnghiem.jsp" class="list-group-item"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

                            </ul>
                        </div>
                    </div>
                </td>
                <td class="content-center">
                    <table id="tbform">
                        <tr>
                            <td width="5%"></td>
                            <td>

                                <div class="panel panel-default">
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


                                        <table class="table table-bordered">
                                            <thead style="background:#09F">
                                                <tr>
                                                    <th><center>Email</center></th>
                                                    <th><center>Họ Và Tên</center></th>
                                                    <th><center>Ngày sinh</center></th>
                                                    <th><center>Số điện thoại</center></th>
                                                    <th width="10%"><center>Mã khóa học</center></th>
                                                    <th><center>Tên khóa học</center></th>
                                                    <th><center>Thao tác</center></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr id="index1">
                                                    <td>vanA@gmail.com</td>
                                                    <td>Nguyễn Văn A</td>
                                                    <td>20/10/1996</td>
                                                    <td>01627637208</td>
                                                    <td>LT001</td>
                                                    <td>Lập trình c căn bản</td>
                                                    <td>
                                                        <button type="button" class="btn btn-success" id="btnXacNhan">Xác Nhận</button>
                                                        <button type="button" class="btn btn-warning" id="btnXoa1">Xóa</button>
                                                    </td>
                                                </tr>
                                                <tr id="index2">
                                                    <td>nhong@gmail.com</td>
                                                    <td>Trần A</td>
                                                    <td>20/10/1996</td>
                                                    <td>01627637208</td>
                                                    <td>LT002</td>
                                                    <td>Lập trình javar</td>
                                                    <td>
                                                        <button type="button" class="btn btn-success" id="btnXacNhan">Xác Nhận</button>
                                                        <button type="button" class="btn btn-warning" id="btnXoa2">Xóa</button>
                                                    </td>
                                                </tr>
                                                <tr id="index3">
                                                    <td>thibuoi@gmail.com</td>
                                                    <td>Trần Hải</td>
                                                    <td>19/09/1996</td>
                                                    <td>01634537203</td>
                                                    <td>LT001</td>
                                                    <td>Lập trình c căn bản</td>
                                                    <td>
                                                        <button type="button" class="btn btn-success" id="btnXacNhan">Xác Nhận</button>
                                                        <button type="button" class="btn btn-warning" id="btnXoa3">Xóa</button>
                                                    </td>
                                                </tr>
                                                <tr id="index4">
                                                    <td>met@gmail.com</td>
                                                    <td>Nguyễn văn B</td>
                                                    <td>20/10/1996</td>
                                                    <td>01627637208</td>
                                                    <td>LT001</td>
                                                    <td>Lập trình c căn bản</td>
                                                    <td>
                                                        <button type="button" class="btn btn-success" id="btnXacNhan">Xác Nhận</button>
                                                        <button type="button" class="btn btn-warning" id="btnXoa4">Xóa</button>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-heading" style="background:#0CC">
                                        <h4 style="font-family: verdana;color:#000">Sinh Viên Trong Khóa Học</h4>
                                    </div>
                                    <div class="panel-body">




                                        <table class="table table-bordered">
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
                                                <tr>
                                                    <td>1</td>
                                                    <td>LT001</td>
                                                    <td>Lập Trình C căn Bản</td>
                                                    <td>60</td>
                                                    <td>
                                                        <a href="adminQuanLyHocVienDanhSachKhoaHoc.jsp" style="text-decoration:underline"><center>Xem Danh sách</center></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>LT002</td>
                                                    <td>Lập Trình java</td>
                                                    <td>40</td>
                                                    <td>
                                                        <a href="#" style="text-decoration:underline"><center>Xem Danh sách</center></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>LT003</td>
                                                    <td>Lập Trình C#</td>
                                                    <td>40</td>
                                                    <td>
                                                        <a href="#" style="text-decoration:underline"><center>Xem Danh sách</center></a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                        </tr>
                    </table>
                </td>
                </tr>
        </table>
      
    </div>
    <jsp:include page="footer.jsp" ></jsp:include>
    <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script src="menu_js/javajquery.js"></script>
       <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>