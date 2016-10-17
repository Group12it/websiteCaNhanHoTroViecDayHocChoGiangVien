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


    <link href="css/styleadmin.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="css/stylemenu.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" media="all" type="text/css" href="css/font-awesome.min.css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<header>
    <div class="container">
        <div class="row">
            <div class="col-xs-2 col-sm-6 col-md-8"></div>
            <div class="col-xs-6 col-md-4"></div>
        </div>
        <div class="row">
            <div class="logo col-md-6 col-sm-6 col-xs-12"><h1><a href="#">Học lập trình</a></h1></div>
            <div class="navbar-right">
                <a href="#">Quản Trị</a>
                <img src="images/hoclaptrinh.jpg" align="bottom" width="40" height="40" />
                <button class="btn btn-danger navbar-btn">Đăng xuất</button>
            </div>
        </div>
        <body>
            <img src="images/hoclaptrinh.jpg" align="bottom" width="1165" height="160" />
        </body>
        <div class="wrapper">
            <nav class="menu">
                <ul class="clearfix">
                    <li><a href="admin.jsp">Trang chủ</a></li>
                    <li>
                    </li>
                    <li>
                        <a href="#">Khóa học<span class="arrow"> &#9660;</span> </a>
                        <ul class="sub-menu">
                            <li><a href="chitietkhoahoc.jsp">Khoá học lập trinh C căn bản</a></li>
                            <li><a href="#">Khóa học lập trình java</a></li>
                            <li><a href="#">Khoá học lập trình PHP</a></li>
                            <li><a href="#">Khoá học lập trình Web</a></li>
                        </ul>
                    </li>
                    <li><a href="thread.jsp">Thảo luận</a></li>
                    <li> <a href="adminGuiMail.jsp">Liên hệ</a></li>
                    <li> <a href="#">Giới thiệu</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<p></p>
<body>
    <div class="paper">
        <table class="tbBody">
            <tr style="height:600px">
                <td class="content-left" width="25%">

                    <div class="panel panel-primary" style="padding-top:0px ">
                        <div class="panel-body">

                            <ul class="nav navs-tabs-brand">
                                <li class="active"><a href="admin.jsp" class="list-group-item" style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>

                                <li class="active"><a href="quanlykhoahoc.jsp" class="list-group-item active" style="z-index: 0"><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>

                                <li class="active"><a href="threadadmin.jsp" class="list-group-item"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>

                                <li class="active"><a href="admingiangday.jsp"  class="list-group-item"><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>

                                <li class="active"><a href="adminQuanLyHocVien.jsp" class="list-group-item"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>

                                <li class="active"><a href="adminGuiMail.jsp" class="list-group-item"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>

                                <li class="active"><a href="admindanhsachhocvien.jsp" class="list-group-item"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>

                                <li class="active"><a href="admindethitracnghiem.jsp" class="list-group-item"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

                            </ul>
                        </div>
                    </div>
                </td>
                <td class="content-center">
                    <table class="ria">
                        <tr>
                            <td width="5%"></td>
                            <td width="90%">

                                <div class="panel panel-default" style="height:100%">
                                    <div class="panel-heading" style="background:#0CC">
                                        <h4 style="font-family: verdana;color:#000">Quản lý Khóa học</h4>
                                    </div>
                                    <div class="panel-body">

                                        <div class="col-md-5">

                                            <form action="quanlykhoahoc.jsp" method="post">
                                                <div class="form-group">

                                                    <label>Tên khóa học</label>
                                                    <input type="text" class="form-control" id="tenkhoahoc" name="tenkhoahoc" value="Khóa học lập trình C++ cơ bản" />
                                                </div>

                                                <div class="form-group">

                                                    <label>Ngày khai giảng</label>
                                                    <input type="date" class="form-control" id="ngaykhaigiang" name="ngaykhaigiang" value="2016-10-20" />
                                                </div>
                                                <div class="form-group">

                                                    <label>Học phí</label>

                                                    <input name="hocphi" type="number" class="form-control" id="txt_hocphi" value="3000000" />
                                                </div>
                                                <div class="form-group">

                                                    <label>Khái quá khóa học</label>
                                                    <textarea class="form-control" rows="5" cols="20">
                                                        Khóa học lập trình hướng đối tượng
                                                        Khái quát về Lập trình hướng đối tượng C++

                                                        Lập trình hướng đối tượng (gọi tắt là OOP, từ chữ Anh ngữ object-oriented programming), hay còn gọi là lập trình định hướng đối tượng, là kĩ thuật lập trình hỗ trợ công nghệ đối tượng. OOP được xem là giúp tăng năng suất, đơn giản hóa độ phức tạp khi bảo trì cũng như mở rộng phần mềm bằng cách cho phép lập trình viên tập trung vào các đối tượng phần mềm ở bậc cao hơn. Ngoài ra, nhiều người còn cho rằng OOP dễ tiếp thu hơn cho những người mới học về lập trình hơn là các phương pháp trước đó.
                                                    </textarea>
                                                </div>
                                                <div class="form-group">

                                                    <label>Nội dung khóa học</label>
                                                    <textarea class="form-control" rows="5" cols="20">
                                                        * Mục tiêu khóa học

                                                        Cung cấp các kiến thức về ngôn ngữ lập trình C++. Rèn luyện kỹ năng về tổ chức chương trình theo hướng đối tượng bằng ngôn ngữ C++.
                                                        *Điều kiện tham gia

                                                        Có kiến thức về kỹ thuật lập trình C hoặc C++
                                                        *Nội dung

                                                        Hướng dẫn sử dụng công cụ Visual Studio 2013 để xây dựng dự án. Trình bầy các khả năng mới trong việc xây dựng và sử dụng hàm trong C++ như biến tham chiếu, đối có kiểu tham chiếu, đối có giá trị mặc định,... Khái niệm trung tâm của lập trình hướng đối tượng. Tìm hiểu lớp (class) và đối tượng (object). Hàm tạo (dựng), hàm hủy. Các thành phần tĩnh (static). Hàm bạn, lớp bạn. Nạp chồng hàm (function overloading) và nạp chồng toán tử (operator overloading). Tính kế thừa. Phương thức ảo, thuần ảo và tính đa hình. Thao tác với tập tin. Khuôn mẫu lớp (template class). Tìm hiểu thư viện STL trong C++. Ôn tập và giải đề thi.
                                                        Đăng ký
                                                    </textarea>
                                                </div>
                                                <button type="summit" class="btn btn-primary">Lưu Lại</button>
                                                <button type="summit" class="btn btn-danger">Hủy Bỏ</button>

                                            </form>
                                        </div>

                                    </div>
                                </div>

                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <footer>
            <div class="container">
                <div class="footer-info text-center">
                    <p>
                        Group 12 Copyright&copy; 2016 Designer</a><br />
                    </p>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>