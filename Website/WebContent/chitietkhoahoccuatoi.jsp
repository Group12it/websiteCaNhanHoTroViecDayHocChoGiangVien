<%@page import="java.lang.*" %>
<%@page import="model.*" %>
<%@page import="dao.*" %>
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
    <link href="css/thongtin.css"  rel="stylesheet" type="text/css">
      
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<sql:setDataSource var="DBConnect" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/web" user="root" password="admin" />

      <%
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
        %>
                       
<sql:query dataSource="${DBConnect }" var="result"> select * from users where Email="<%=users.getUserEmail()%>";</sql:query>

<div id="wrapper">
    <div class="container">
        <div class="row">
            <div class="content col-md-9 col-sm-9 col-xs-12">

                <div class="container">
                    <div class="row">

                        <div class="col-md-2 col-sm-2 col-xs-1">
                            <ul class="nav navs-tabs-brand">
                                <br><br>
                                <a style="background:#00a8d8" class="list-group-item " href="khoa-hoc-cua-toi">Quay lại</a>


                            </ul>
                        </div>
                        <br><br>

                        <td class="content-center">
                            <table class="ria">
                                <tr>
                                    <td width="5%"></td>
                                    <td width="90%">

                                        <div class="panel panel-default">
                                            <div class="panel-heading" style="background:#0CC">
                                                <h4 style="font-family: verdana;color:#000">Bài giảng lập trình c căn bản</h4>
                                            </div>


                                            <p>
                                                <font size="6" color="red">
                                                    Bài 1: Giới thiệu về lập trình c căn bản
                                                </font>
                                            </p>
                                            <div class="btn btn-default" style="text-align: left;width:100%;background-image:url(images/Untitled.png)">
                                                BÀI 1: LÀM QUEN VỚI NGÔN NGỮ LẬP TRÌNH<br />

                                                Giới thiệu về ngôn ngữ lập trình.<br />
                                                Demo project mẫu (môi trường visual studio 2013):<br />
                                                Ví dụ: xuất ra màn hình câu: “this is my first project”<br />
                                                <br />
                                                Cấu trúc của chương trình<br />
                                                Các kiểu dữ liệu cơ bản.
                                                Các bước lập trình
                                                Các hàm nhập xuất chuẩn
                                                Demo project mẫu: Tính tổng 2 số nguyên a, b
                                                <br />
                                                Các hàm tính toán<br />
                                                Bài tập áp dụng<br />
                                                Bài tập về nhà (có đưa lời giải ở Bài 2)<br />
                                            </div>
                                            <br><br>
                                            <a href="">

                                                <img src="images/baigiang.png">
                                                <span class="instancename">Bài giảng: Bài 1<span class="accesshide "> Page</span></span>
                                                <br>
                                            </a>
                                            <br>

                                            <a href="chitietbaihoc.jsp">

                                                <img src="images/video.png">
                                                <span class="instancename">Video: Bài 1<span class="accesshide "><a href="chitietbaihoc.jsp">Page</a></span></span>
                                                <br><br>
                                            </a>
                                           
                                          <c:forEach var="rows" items="${result.rows }">
                                            <a href="DownLoadFile">
                                     <%--           
                                               <c:forEach var="rows" items="${result.rows }">
                			                				<img src="<%=request.getContextPath()%>/fileUpload/${rows.HinhAnh }" class="img-circle img-thumbnail" align="bottom" width="40" height="40" />
              					</c:forEach> --%>
                                               
                                              
               									    <input  type="text" name="filename" value="${rows.HinhAnh}">
                                              
                                                <img src="images/pdf.png">
                                                <span class="instancename">Ebook Ngôn ngữ lập trình C</span>
                                            </a>
                                              </c:forEach>
                                            <br><br>
                                             <a href="">
                                                <img src="images/homework1.png">
                                                <span class="instancename">Bài tập 1</span>
                                            </a>
                                            <br>
                                             <a href="uploadbaitap.jsp">
                                                <span class="instancename"><h4>Nộp bài tập</h4></span>
                                            </a>
                                            <hr>
                                            <p>
                                                <font size="6" color="red">
                                                    Bài 2: Giới thiệu về lập trình c căn bản
                                                </font>
                                            </p>
                                            <div class="btn btn-default" style="text-align: left;width:100%;background-image:url(images/Untitled.png)">
                                                BÀI 2: LÀM QUEN VỚI NGÔN NGỮ LẬP TRÌNH<br />

                                                Giới thiệu về ngôn ngữ lập trình.<br />
                                                Demo project mẫu (môi trường visual studio 2013):<br />
                                                Ví dụ: xuất ra màn hình câu: “this is my first project”<br />
                                            </div>
                                            <a href="">

                                                <img src="images/baigiang.png">
                                                <span class="instancename">Bài giảng: Bài 2<span class="accesshide "> Page</span></span>
                                                <br>
                                            </a>
                                            <br>

                                            <a href="">

                                                <img src="images/video.png">
                                                <span class="instancename">Video: Bài 2<span class="accesshide "><a href="">Page</a></span></span>
                                                <br><br>
                                            </a>
                                            <a href="">
                                                <img src="images/pdf.png">
                                                <span class="instancename">Ebook Ngôn ngữ lập trình C</span>
                                            </a>
                                            <br><br>
                                             <a href="">
                                                <img src="images/homework1.png">
                                                <span class="instancename">Bài tập 2</span>
                                            </a>
                                            <br>
                                             <a href="">
                                                <span class="instancename"><h4>Nộp bài tập</h4></span>
                                            </a>
                                            <br>
                                            <hr />

                                        </div>
                                    </td>
                                    <td width="5%"></td>

                                    <td class="content-right" width="20%"></td>
                                </tr>
                            </table>
                        </td>

                    </div>      
                    </div>
                </div>
            </div>
        </div>
    </div>

<jsp:include page="footer.jsp"></jsp:include>

                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
                    <!-- Include all compiled plugins (below), or include individual files as needed -->
                    <script src="js/bootstrap.min.js"></script>
      </body>
</html>