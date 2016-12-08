<%@page import="model.KhoaHocs"%>
<%@page import="model.Users"%>
<%@page import="model.DeThis"%>
<%@page import="dao.KhoaHocsDAO"%>
<%@page import="dao.DeThiDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta content="charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Website Cá nhân hỗ trợ giáo viên dạy học</title>
<link rel="shortcut icon" href="images/head.ico" type="image/x-icon" />
<link rel="icon" href="images/head.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/multiChoice.css" type="text/css">
<!-- <script type="text/javascript" src="js/time_olympic.js"></script> -->

<script type="text/javascript">

var dayslimit = 0;
var hourslimit = 0;
var minutelimit = 0;
var secondlimit = 0;
var _setTimeout;

function timeDisplay(txtTimeDislay, days, hours, minute, second, delay, btSave) 
{  
    dayslimit = days;
    hourslimit = hours;
    minutelimit = minute;
    secondlimit  = second;
  

 if(days == 0 & hours == 0 & minute == 0 & second ==0 )
   {
		document.getElementById('cau11').disabled=true;
		document.getElementById('cau12').disabled=true;
		document.getElementById('cau13').disabled=true;
		document.getElementById('cau14').disabled=true;
		document.getElementById('cau21').disabled=true;
		document.getElementById('cau22').disabled=true;
		document.getElementById('cau23').disabled=true;
		document.getElementById('cau24').disabled=true;
		document.getElementById('cau31').disabled=true;
		document.getElementById('cau32').disabled=true;
		document.getElementById('cau33').disabled=true;
		document.getElementById('cau34').disabled=true;
		document.getElementById('cau41').disabled=true;
		document.getElementById('cau42').disabled=true;
		document.getElementById('cau43').disabled=true;
		document.getElementById('cau44').disabled=true;
		document.getElementById('cau51').disabled=true;
		document.getElementById('cau52').disabled=true;
		document.getElementById('cau53').disabled=true;
		document.getElementById('cau54').disabled=true;
		
	}


    var i=0;
    if(btSave)
    {
        paramSave=btSave;
    }


    if (second >= 0) {
        second = second - 1;
    }
    else {
        clearTimeout(_setTimeout);
        return false; 
    }
       
    if (second < 0){  
        second = 59; minute = minute-1;  
        if (minute < 0){  
            minute = 59; hours=hours-1;  
            if (hours < 0){
                hours = 23;  days=days-1;                
                }
        } 
    }
    
   

    if (days >= 0) {
        var hoursStr = ((hours < 10) ? '0' : '') + hours;
        var minuteStr = ((minute < 10) ? '0' : '') + minute;
        var secondStr = ((second < 10) ? '0' : '') + second;

      document.getElementById(txtTimeDislay).innerHTML = 'Còn '+days+' ngày '+hoursStr + ':' + minuteStr + ':' + secondStr; 
        document.getElementById(txtTimeDislay).innerHTML = '' + hoursStr + ':' + minuteStr + ':' + secondStr;

       _setTimeout = setTimeout('timeDisplay(\'' + txtTimeDislay + '\',' + days + ',' + hoursStr + ',' + minuteStr + ',' + secondStr + ',' + delay + ')', 1000);
    }
    else {
       document.getElementById(txtTimeDislay).innerText = 'Đã hết thời gian';
       
    }
}

</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<%
		Users users = null;
		if (session.getAttribute("user") != null) {
			users = (Users) session.getAttribute("user");
		}

		DeThiDAO dethiDAOS = new DeThiDAO();
		KhoaHocsDAO khoahocDAOs = new KhoaHocsDAO();
		String khoahocid = "";
		if (request.getParameter("khoahoc") != null) {
			khoahocid = request.getParameter("khoahoc");
		}
	%>

	<div id="wrapper">
		<div class="container">
			<div class="row">

				<div class="container">
					<div class="row">

						<div class="col-md-12">
							
								<form action="lam-bai-thi-trac-nghiem" method="post">
							
							<div class="panel panel-primary" style="padding-top: 0px">
								<div class="panel panel-default">
									<div class="panel-body text-center" style="background: Blue;">
										<font size="5" color="white">Làm bài kiểm tra</font>
									</div>
								</div>
								<div class="panel-body">
									<div class="panel panel-primary lambaikiemtra">
										<div class="panel-body" style="padding: 0">
											<div class="panel ">
												<div class="col-md-12">
													<div class="panel-body">

														<div class="form">
															<div class="alert alert-info">
																<span class="glyphicon glyphicon-envelope"></span>Làm
																bài thi và nộp bài trước khi thời gian kết thúc. Nếu
																thời gian kết thúc thì bài thi sẽ tự động được dừng lại
															
															</div>
													<div class="time-remain">

													<span class="sp-text">Thời gian còn lại</span> <br></br>
													<span class="sp-time" id="aTimed" class="timeCount">
													<script type="text/javascript">
				
													timeDisplay('aTimed',0,0,10,0,1,'btnnop');
													</script>
													</span>
													</div>

														</div>
														<!--đồng hồ-->

														<!-- kết thúc lấy đề bài-->

														<table>
															<%
																for (DeThis dt : dethiDAOS.getDeThiByMaKH(khoahocid)) {
															%>
															<embed
																src="<%=request.getContextPath()%>/fileUpload/<%=dt.getFile()%>"
																height="400px;" width="100%">
															</embed>

															<%
																}
															%>

														</table>
														<br>
														<br>
														<br>

													</div>
													<!-- câu trả lời -->

													<div class="alert alert-info">Phần trả lời trắc
														nghiệm</div>
													<div class="col-md-9">
														<span class="label label-primary">Câu 1 :</span> A <input
															type="radio" name="cau1" value="A" id="cau11"> B
														<input type="radio" name="cau1" value="B" id="cau12">
														C <input type="radio" name="cau1" value="C" id="cau13">
														D <input type="radio" name="cau1" value="D" id="cau14">

														<br>
														<br> <span class=" label label-primary">Câu 2
															:</span> A <input type="radio" name="cau2" value="A" id="cau21">
														B <input type="radio" name="cau2" value="B" id="cau22">
														C <input type="radio" name="cau2" value="C" id="cau23">
														D <input type="radio" name="cau2" value="D" id="cau24">

														<br>
														<br> <span class="label label-primary">Câu 3 :</span>
														A <input type="radio" name="cau3" value="A" id="cau31">
														B <input type="radio" name="cau3" value="B" id="cau32">
														C <input type="radio" name="cau3" value="C" id="cau33">
														D <input type="radio" name="cau3" value="D" id="cau34">
														<br>
														<br> <span class="label label-primary">Câu 4 :</span>
														A <input type="radio" name="cau4" value="A" id="cau41">
														B <input type="radio" name="cau4" value="B" id="cau42">
														C <input type="radio" name="cau4" value="C" id="cau43">
														D <input type="radio" name="cau4" value="D" id="cau44">
														<br>
														<br> <span class="label label-primary">Câu 5 :</span>
														A <input type="radio" name="cau5" value="A" id="cau51">
														B <input type="radio" name="cau5" value="B" id="cau52">
														C <input type="radio" name="cau5" value="C" id="cau53">
														D <input type="radio" name="cau6" value="D" id="cau54">

													</div>



												</div>


											</div>
										</div>
									</div>
								</div>

									<%
										for (DeThis dt: dethiDAOS.getDeThiByMaKH(khoahocid)) {
									%>
									<input type="hidden" value="<%=dt.getMaDeThi()%>" name="makhoahoc">
									<%
										}
									%>
									<%
										if (users != null) {
									%>
									<input type="hidden" name="userid"
										value="<%=users.getUserID()%>">
									<%
										}
									%>

									<center>
										<button id="btnnop" type="submit" class="btn btn-info"
											onclick="return confirmAction()">Nộp bài</button>
									</center>
									<br>
								
							</div>
							</form>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="form-group text-center"></div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/bootstrap.min.js"></script>
	<SCRIPT LANGUAGE="JavaScript">
		function confirmAction() {
			return confirm("Nộp bài thi!")
			document.getElementById('btnnop').disabled = true;
		}
	</SCRIPT>
</body>
</html>