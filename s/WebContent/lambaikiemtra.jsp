<%@page import="dao.*" %>
<%@page import="model.*" %>
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
		
		document.getElementById('formlambai').disabled=true;
		
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

		CauHoiDAO cauhoiDAO=new CauHoiDAO();
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
							
								<form action="lam-bai-xong" method="post">
							
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
														
															<form id="formlambai"  method="post">
				<div class="form-group col-sm-offset-0">

				<div class="alert alert-info">Phần trả lời trắc
														nghiệm</div>
					<%
					
					int dem=0;
					int count=0;
					for(CauHoi c:cauhoiDAO.getCauHoiByMaKH(khoahocid)){dem++; %>
					
					<section id="miSlide" class="carousel sline col-md-12"
							data-interval="false">
							<div class="carousel-inner">
								<div class="item active">

									<div class=" panel panel-warning ">
										<div class="panel-heading">
											<div style="font-size: 18px">
												<p>
													<span class="label label-primary">Câu <%=dem %> :</span>
													<strong><%=c.getNoiDung() %> </strong>
												</p>
												
											</div>
										</div>
										<div class="panel-body">
											<div class="input-group">
												
												<div>
													<input type="radio" name="<%=c.getMaCau() %>"
														class="checkCauHoi" value="A"><label>A: 
															<%=c.getDanA() %>
													</label>
												</div>
												<div>
													<input type="radio" name="<%=c.getMaCau() %>"
														class="checkCauHoi" value="B"><label>B: 
														<%=c.getDanB() %>
													</label>
												</div>
												<div>
													<input type="radio" name="<%=c.getMaCau() %>"
														class="checkCauHoi" value="C"><label>C:
															<%=c.getDanC() %>
													</label>
												</div>
												<div>
													<input type="radio" name="<%=c.getMaCau() %>"
														class="checkCauHoi" value="D"><label>D:
															<%=c.getDanD() %>
													</label>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</section>
							<%} %>
				</div>
				
			</form>
														</table>
														<br>
														<br>
														<br>

													</div>
										
												</div>


											</div>
										</div>
									</div>
								</div>

									<center>
										<button id="btnnop" type="" class="btn btn-info"
											onclick="return confirmAction()">Nộp bài</button>
									</center>
									<br>
					<input type="hidden" name="makh" value="<%=khoahocid%>">
					<input type="hidden" name="userid" value="<%=users.getUserID()%>">
					<input type="hidden" name="dem" value="<%=dem %>">			
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