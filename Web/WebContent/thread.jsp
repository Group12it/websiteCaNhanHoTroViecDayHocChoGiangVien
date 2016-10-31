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

<p></p>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <section class="container" style="min-height:0px">
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
                                            <a href="thamgiathaoluan.html" style="overflow-wrap:break-word" title="type - casting trong c++" class="text-primary"> Lập trình c thế nào</a>
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

<jsp:include page="footer.jsp"></jsp:include>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>