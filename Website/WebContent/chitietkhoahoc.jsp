<%@page import="java.*" %>
<%@page import="dao.*" %>
<%@page import="model.*" %>
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
    <link href="css/banerchuyendong.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/thongtin.css">
   
  </head>
   <body>
  <jsp:include page="header.jsp"></jsp:include>

    <section class="container" style="min-height:0px">
     
<sql:setDataSource var="conn" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/web" user="root" password="admin" />

<% 
	KhoaHocsDAO khoahocsDAO=new KhoaHocsDAO(); //lấy danh sách khoá học
	String makh="";
	if(request.getParameter("khoahoc")!=null){
		makh= request.getParameter("khoahoc");
	}
%>

        <section class="row">
        <div class="row">
 <div class="content col-md-9 col-sm-9 col-xs-12">
           
           <br>
            <div class="container">
                <div class="row">
                    <%
                    String makh_1=(String)request.getAttribute("khoahoc");
                    for(KhoaHocs kh: khoahocsDAO.getKhoaHocListByID(makh)) {
                    %>
                    
                    <div class="col-md-3">
                         <a href="#">
                            <img class="img-responsive" src="images/c.png" alt="">
                            </a>
                                <h3><%=kh.getAdTenKH() %></h3>
                              <p><%=kh.getAdKhaiQuat() %></p>
                     </div>                   
                     
                     <div class="item col-md-6 col-sm-6 col-xs-12 ">
                          <ul class="nav navs-tabs-brand">
                                    <div class="jumbotron">
                                            <p><%=kh.getAdNoiDung()%></p>
                                            <p><%=kh.getAdNgayKhaiGiang() %></p> 
                                            <p><%=kh.getAdHocPhi()%></p>
<%--                                             <p><%=kh.getAdShowtester() %></p> --%>
                                                                                     </p>
                                        <a href="dangkymonhoc.jsp" target="_blank" class="btn btn-primary btn-lg">Đăng ký</a></p>
                                    </div>

                      </ul>
                  </div>
                 <%} %>
                   <%=makh_1 %>
                </div>
            </div>
            
          </div>



    </div>
    <!--end row-->


        </section>
    </section>

<!-- End of Container -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->

<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js" type="text/javascript"></script>
<script>
$('#contactform').bootstrapValidator();
</script>







<jsp:include page="footer.jsp"></jsp:include>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>