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
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
<link rel="icon" href="images/head.ico" type="image/x-icon" />
<title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />


<link href="css/styleadmin.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="css/stylemenu.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" media="all" type="text/css"
	href="css/font-awesome.min.css" />


</head>


<body>

	<jsp:include page="headeradmin.jsp" ></jsp:include>
	
	
	
	<div id="wrapper">
      <div class="container">
        <div class="row">
                  
            <div class="container">
                <div class="row">
                
                    <div class="col-md-3">
                          <div class="panel panel-primary" style="padding-top:0px ">
                           <div class ="panel-body"> 
                  
                         <ul class="nav navs-tabs-brand">
                                <li class="active"><a href="admin.jsp" class="list-group-item " style="z-index: 0"><i class="glyphicon glyphicon-home"></i> &nbsp;&nbsp;&nbsp;&nbsp;Trang chủ quản trị</a></li>
                               
                                <li class="active"><a href="quanlykhoahoc.jsp" class ="list-group-item ""><i class="glyphicon glyphicon-education"></i>&nbsp;&nbsp;&nbsp;&nbsp; Quản lý khoá học</a></li>
                               
                                <li class="active"><a href="threadadmin.jsp" class="list-group-item"><i class="glyphicon glyphicon-comment"></i> &nbsp;&nbsp;&nbsp;&nbsp;Thread thảo luận</a></li>
                             
                                <li class="active"><a href="admingiangday.jsp" class ="list-group-item"><i class="glyphicon glyphicon-calendar"></i> &nbsp;&nbsp;&nbsp;&nbsp;Kế hoạch giảng dạy</a></li>
                              
                                <li class="active"><a href="adminQuanLyHocVien.jsp" class="list-group-item"><i class="glyphicon glyphicon-user"></i> &nbsp;&nbsp;&nbsp;&nbsp;Quản lý học viên</a></li>
                              
                                <li class="active"><a href="adminGuiMail.jsp" class ="list-group-item"><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;&nbsp;&nbsp; Gửi mail cho sinh viên</a></li>
                              
                            
                                <li class="active"><a href="admindanhsachhocvien.jsp" class ="list-group-item active"><i class="glyphicon glyphicon-list-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; Bài tập của học viên</a></li>
                               
                                <li class="active"><a href="admindethitracnghiem.jsp" class="list-group-item"><i class="glyphicon glyphicon-pencil"></i> &nbsp;&nbsp;&nbsp;&nbsp;Đề thi trắc nghiệm</a></li>

                        </ul>
                    </div>  
                    </div>
                    </div>    
                    <div class="col-md-9">
                    <ul class="nav navs-tabs-brand">
                  <table class="ria">
						<tr>
							<div class="panel panel-default">
									<div class="panel-heading" style="background: #0CC">
										<h4 style="font-family: verdana; color: #000">Bài giảng
											lập trình c căn bản</h4>
									</div>
									<p>
										<font size="6" color="red"> Bài 1: Giới thiệu về lập
											trình c căn bản </font>
									</p>
									<div class="panel-default" style="text-align: margin-left:5px; left; max-width:100%; background-image: url(images/Untitled.png)">
										BÀI 1: LÀM QUEN VỚI NGÔN NGỮ LẬP TRÌNH<br />
										-Giới thiệu về ngôn ngữ lập trình.<br />
										-Demo project mẫu (môi trường visual	studio 2013):<br />
										-Ví dụ: xuất ra màn hình câu: “this is my first project”<br />
										 <br /> 
										-Cấu trúc của chương trình<br />
										-Các kiểu dữ liệu cơ bản. Các bước lập trình Các hàm nhập xuất
										chuẩn Demo project mẫu: Tính tổng 2 số nguyên a, b <br /> Các
										hàm tính toán<br /> Bài tập áp dụng<br /> Bài tập về nhà (có
										đưa lời giải ở Bài 2)<br />
									</div>

									<a href="adminnoidungbainop.jsp"> <img
										src="images/icondocument.JPG"> <span
											class="instancename">Bài giảng: Bài 1<span
												class="accesshide "> Page</span></span></a> <br> <a
										href="adminnoidungbainop.jsp">
										 <img src="images/videoicon.JPG"> <span class="instancename">Video:
													Bài 1<span class="accesshide "> Page</span>
											</span></a> <br>
											<hr />
											<p>
												<font size="6" color="red"> Bài 2: Giới thiệu về lập
													trình c căn bản </font>
											</p>
											<div class="btn btn-default"
												style="text-align: left; max-width:100%; background-image: url(images/Untitled.png)">
												BÀI 2: LÀM QUEN VỚI NGÔN NGỮ LẬP TRÌNH<br /> Giới thiệu về
												ngôn ngữ lập trình.<br /> Demo project mẫu (môi trường
												visual studio 2013):<br /> Ví dụ: xuất ra màn hình câu:
												“this is my first project”<br />
											</div> <a href="adminnoidungbainop.jsp"> <img
												src="images/homework.png"> <span class="instancename">Bài
														tập: Bài 2<span class="accesshide "> Page</span>
												</span></a> <br> <a href="adminnoidungbainop.jsp"> <img
													src="images/videoicon.JPG"> <span
														class="instancename">video: Bài 2<span
															class="accesshide "> Page</span></span></a> <br>
													<hr />
								</div>
							
							
						</tr>
					</table>
				
                    </ul>
                                            

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