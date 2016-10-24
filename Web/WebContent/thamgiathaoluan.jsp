<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/Site" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
    <link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
	<link rel="icon" href="images/head.ico" type="image/x-icon" />
</head>

<body>
	
	<jsp:include page="header.jsp"></jsp:include>
	
	  
    <section class="container" style="min-height:500px">

        <section class="row">
            <div class="col-md-12">
                <div class="maincontent col-lg-12" style="padding:0">
                    <div class="panel panel-primary hoidap">

                        <div class="panel-body" style="padding:0">
                            <div class="panel ">
                                <div class="panel-body">
                                    <form role="form" action="thamgiathaoluan.jsp" method="post" enctype="multipart/form-data">
                                        <div class="validation-summary-valid text-danger" data-valmsg-summary="true">
                                            <ul>
                                                <li style="display:none"></li>
                                            </ul>
                                        </div>
                                        <input data-val="true" data-val-number="The field Mã câu hỏi must be a number." data-val-required="The Mã câu hỏi field is required." id="MaCauHoi" name="MaCauHoi" type="hidden" value="99" />
                                        <input name="__RequestVerificationToken" type="hidden" value="Lnj7bITUxRjmYdithh-kxyIewsUB_dJBdwWP2HKT36rUFbVcTB00dS-LCYJbAsab0hl3hefvPsduiu4cJQCuKSpkRbAeedauALux6YhiGjIQBbD-V9qAZF9xlV4NHHD2Bj3iueS9eqg2chwchX8_6w2" />

                                        <di6v class="form-group">
                                            <h3>&nbsp; Thảo luận về Lập trình C</h3>
                                            <hr />

                                            <div class="col-lg-10 col-md-9 col-sm-8 fontLarger pull-left" style="overflow-wrap:break-word">
                                            </div>

                                            <labe>
                                                Các câu trả lời</label> <span class="badge">3</span>
                                                <ul class="list-group" id="dscautraloi" style="min-height:200px">
                                                    <li class="list-group-item">
                                                        <div class="col-lg-1 col-md-1 col-sm-2 col-xs-3 text-center">
                                                            <img src="images/hoclaptrinh.jpg" width="70" height="70" />
                                                        </div>
                                                        <div class="col-lg-10 col-md-11 col-sm-10 col-xs-9" style="overflow:auto;">
                                                            <div style="overflow-wrap:break-word;">
                                                                <p>Đưa ra 1 cái đề cụ thể đi</p>
                                                            </div>
                                                        </div>
                                                        <div class="text-primary floatLeft thongtinnguoidang">
                                                            <br />
                                                            <label class="fontSmall"><span class="glyphicon glyphicon-user"> </span> Thành viên: <a href="#" data-toggle="tooltip" data-placement="top" title="Xem thông tin của Tuấn Nguyễn" class="text-primary">Tuấn Nguyễn</a> </label><br />
                                                            <label class="fontSmall"><span class="glyphicon glyphicon-time"> </span> Ngày đăng: 10/7/2016 12:04:35 AM </label>
                                                        </div>
                                                    </li>
                                                    <li class="list-group-item">
                                                        <div class="col-lg-1 col-md-1 col-sm-2 col-xs-3 text-center">
                                                            <img src="images/hoclaptrinh.jpg" width="70" height="70" />
                                                        </div>
                                                        <div class="col-lg-10 col-md-11 col-sm-10 col-xs-9" style="overflow:auto;">
                                                            <div style="overflow-wrap:break-word;">
                                                                <p>Nội dung: Viết trigger khi Khi thêm mới một tựa sách thì kiểm tra xem đã có tựa sách trùng tên với tựa sách vừa được thêm hay không. </p>
                                                            </div>

                                                        </div>
                                                        <div class="text-primary floatLeft thongtinnguoidang">
                                                            <br />
                                                            <label class="fontSmall"><span class="glyphicon glyphicon-user"> </span> Thành viên: <a href="#" data-toggle="tooltip" data-placement="top" title="Xem thông tin của Lưu Đ&#236;nh M&#225;c" class="text-primary">Lưu Đình Mác</a> </label><br />
                                                            <label class="fontSmall"><span class="glyphicon glyphicon-time"> </span> Ngày đăng: 10/9/2016 10:40:42 PM </label>
                                                        </div>
                                                    </li>

                                                    <li class="list-group-item">
                                                        <div class="col-lg-1 col-md-1 col-sm-2 col-xs-3 text-center">
                                                            <img src="images/hoclaptrinh.jpg" width="70" height="70" />
                                                        </div>
                                                        <div class="text-primary floatLeft thongtinnguoidang">
                                                            <br />
                                                            <label class="fontSmall"><span class="glyphicon glyphicon-user"> </span> Thành viên: <a href="#" data-toggle="tooltip" data-placement="top" title="Xem thông tin của Lưu Đ&#236;nh M&#225;c" class="text-primary">Lưu Đình Mác</a> </label><br />
                                                            <label class="fontSmall"><span class="glyphicon glyphicon-time"> </span> Ngày đăng: 10/10/2016 8:24:25 PM </label>
                                                        </div>
                                                    </li>
                                                </ul>
                                                <br></<br>
                                                <textarea class="form-control" cols="20" data-val="true" data-val-required="Nội dung câu trả lời không được bỏ trống." rows="5" placeholder="Comment" name="txtTraLoi" id="traloi"></textarea>
                                </div>
                                <div class="form-group">
                                    <label>&nbsp;&nbsp;Tải hình lên</label>
                                    <input type="file" id="file" name="files" class="multiple" multiple />
                                </div>
                                <hr />
                                <div style="text-align:center;margin:20px;">
                                    <a href="thread.jsp" class="floatLeft btn btn-primary" role="link">Trở về</a>
                                    <button type="submit" class="btn btn-success" data-toggle="tooltip" data-placement="right" title="Trả lời câu hỏi này">Trả lời</button>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </section>
    </section>

    <footer>
        <div class="container">
            <div class="footer-info text-center">
                <p>
                    Group 12 Copyright&copy; 2016 Designer</a><br>
                </p>
            </div>
        </div>
    </footer>
</body>
</html>
