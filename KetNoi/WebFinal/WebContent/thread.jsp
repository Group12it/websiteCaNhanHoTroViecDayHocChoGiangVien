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
  
    <link rel="stylesheet" type="text/css" href="css/stylemenu.css">
     <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" media="all" type="text/css" href="css/font-awesome.min.css"/>
</head>
<header>
    <div class="container">
      
        <div class="row">
            <div class="logo col-md-6 col-sm-6 col-xs-6 collapse-xs collapse-sm" ><h1><a href="#">Học lập trình</a></h1></div>
            <div class="navbar-right">
                <a href="#">Học Viên</a>
                <img src="images/hoclaptrinh.jpg" align="bottom" width="40" height="40"/>
                <a href="index.jsp"><button class="btn btn-danger navbar-btn collapse-xs">Đăng xuất</button></a> 
            </div>
        </div>
  
            <div class="col-md-13 ">
            <img src="images/hoclaptrinh.jpg" align="bottom" width="1165" height="160"/>
            
           </div>
       <div class="wrapper">
            <nav class="menu collapse-xs" >
                <ul class="clearfix">
                    <li><a href="indexuser.jsp">Trang chủ</a></li>
                    <li>
                    <li>
                        <a href="#">Khóa học<span class="arrow"> &#9660;</span> </a>
                        <ul class="sub-menu">
                            <li><a href="chitietkhoahoc.jsp">Khoá học lập trinh C căn bản</a></li>
                            <li><a href="#">Khóa học lập trình java</a></li>
                            <li><a href="#">Khoá học lập trình PHP</a></li>
                            <li><a href="#">Khoá học lập trình Web</a></li>
                        </ul>
                    </li>
                    <li><a href="khoahoccuartoi.jsp">Khóa học của tôi</a></li>
                    <li><a href="thread.jsp">Thảo luận</a></li>
                    <li><a href="kiemtra.jsp">Kiểm tra</a></li>
                     <li> <a href="guimail.jsp">Liên hệ</a></li>
                    <li> <a href="#">Giới thiệu</a></li>
                </ul>
            </nav>
        </div>
       
    </div>

</header>
<p></p>
<body>
    <section class="container" style="min-height:400px">
        <section class="row">
            <div class="col-md-12">

                <div class="panel panel-primary hoidap">
                    <div class="panel-heading">
                        <b><span class="glyphicon glyphicon-question-sign"> </span> Thảo luận</b>
                    </div>
                    <div class="panel-body">

                        <div class="panel ">
                            <div class="panel-body">
                                <form action="#" class="form-inline" data-ajax="true" data-ajax-loading="#ajax-loader" data-ajax-loading-duration="2000" data-ajax-method="Get" data-ajax-mode="replace" data-ajax-update="#result" id="form0" method="get">
                                    <input type="hidden" name="MaChuDe" value="LT" />
                                    <div class="form-group">
                                        <label for="tukhoa">Tìm câu hỏi:</label>
                                        <input type="text" class="form-control" name="tukhoa" data-autocomplete-source="/CauHoi/QuickSearch?MaChuDe=LT" placeholder="Nhập câu hỏi ở đây!">
                                    </div>
                                    <button type="submit" class="btn btn-warning" >
                                        Tìm kiếm
                                    </button>
                                </form>
                                <div id="result">
                                    <ul class="list-group dscauhoi">
                                        <li class="list-group-item">
                                            <a href="thamgiathaoluan.jsp" style="overflow-wrap:break-word" title="type - casting trong c++" class="text-primary"> Lập trình c thế nào</a>
                                            <div style="clear:both;">
                                                <span class="fontSmall"> <span class="glyphicon glyphicon-time"> </span> 10/12/2016 1:35:07 PM | <span class="glyphicon glyphicon-user"> </span> Admin | Số câu trả lời: 1</span>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                           <a href="/CauHoi/XemCauHoi/122" style="overflow-wrap:break-word" title="Setup SQL sever 2012" class="text-primary"> Setup SQL sever 2012</a>

                                            <div style="clear:both;">
                                                <span class="fontSmall"> <span class="glyphicon glyphicon-time"> </span> 10/8/2016 7:47:51 AM | <span class="glyphicon glyphicon-user"> </span> Admin | Số câu trả lời: 1</span>
                                            </div>
                                        </li>
                                        <li class="list-group-item">
                                            <img src="/images/question-icon.png" alt="question-icon.png" /> <a href="/CauHoi/XemCauHoi/121" style="overflow-wrap:break-word" title="Hệ quản trị csdl" class="text-primary"> Hệ quản trị csdl</a>

                                            <div style="clear:both;">
                                                <span class="fontSmall"> <span class="glyphicon glyphicon-time"> </span> 10/6/2016 9:06:19 PM | <span class="glyphicon glyphicon-user"> </span> Admin | Số câu trả lời: 6</span>
                                            </div>
                                        </li>
                            
                                        <li class="list-group-item">
                                            <img src="/images/question-icon.png" alt="question-icon.png" /> <a href="/CauHoi/XemCauHoi/99" style="overflow-wrap:break-word" title="Lập tr&#236;nh C" class="text-primary"> Lập trình C</a>

                                            <div style="clear:both;">
                                                <span class="fontSmall"> <span class="glyphicon glyphicon-time"> </span> 5/9/2016 11:32:53 PM | <span class="glyphicon glyphicon-user"> </span> Admin | Số câu trả lời: 1</span>
                                            </div>
                                        </li>
                                    </ul>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>

    <footer class="site-footer collapse-xs">
     
        <div class="container">
            <div class="footer-info text-center">
                <p>
                    Group 12 Copyright&copy; 2016 Designer</a><br>
                </p>
            </div>
            <div class="col-md-4">
                <p>Home</p>
            </div>
        </div>
     </footer>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>