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
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">
   

</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

<div id="wrapper">
    <div class="container">
        <div class="row">
            <div class="content col-md-9 col-sm-9 col-xs-12">
                <div class="container">
                    <div class="row">
                        <div class="container">
                            <br>
                            <!--bắt đầu thông tin cá nhân-->

                            <div class="panel panel-default">
                                <div class="panel-body"><font size="3" color="green">Thông tin cá nhân</font> </div>
                            </div>
                        </div>

                        <div class="col-md-8">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <td style=" height:0px;" colspan="1" align="center">
                                            <h4> Ảnh đại diện</h4>
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <img src="images/item2.png" class="img-responsive img-circle" alt="">
                                                    </tr>
                                                </thead>
                                            </table>
                                        </td>
                                        <th>
                                            <div class="panel-body">
                                                <form class="form" method="post" id="contactform" action="" role="form">
                                                 <div class="form-group has-feedback">
                                                        <label><strong>Họ và tên:</strong> Nguyễn Văn Liêm</label>
                                                       
                                                    </div>
                                                     <div class="form-group has-feedback">
                                                        <label ><strong>Ngày sinh:</strong> 22/11/1996</label>
                                                       
                                                    </div>
                                                    <div class="form-group has-feedback">
                                                        <label ><strong>Giới tính:</strong> Nam</label>
                                                       
                                                    </div>
                                                    <div class="form-group">
                                                        <label ><strong>Email:</strong> liemnguyen388@gmail.com</label>
                                                       
                                                        </div>
                                                        <div class="form-group">
                                                           <label ><strong>Điện thoại :</strong> 0985943620</label>
                                                        </div>
                                                    <button type="Submit" id="btncapnhat" name="btncapnhat" class="btn btn-info"><a href="capnhatthongtin.jsp">Cập nhật</a></button>
                                                     
                                                     
                                               
                                            </form>
                        </div>
                        </th>
                        </tr>
                        </thead>

                        </table>
                        </div>
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