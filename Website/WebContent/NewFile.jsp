<!DOCTYPE html>
<html>
<head>
<title>Đồng hồ đếm ngược bằng JS</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
span {
	border: solid 1px #ACACAC;
	padding: 2px;
}
</style>
<script language="javascript">
	var h = 0; // Giờ
	var m = 0; // Phút
	var s = 10; // Giây
	 var btn1 = document.getElementById("startbtn");
	var timeout = null; // Timeout

	function start() {
		/*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/
		if (h === null) {
			h = parseInt(document.getElementById('h_val').value);
			m = parseInt(document.getElementById('m_val').value);
			s = parseInt(document.getElementById('s_val').value);
		}

		
		/*BƯỚC 1: CHUYỂN ĐỔI DỮ LIỆU*/
		// Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
		//  - giảm số phút xuống 1 đơn vị
		//  - thiết lập số giây lại 59
		
		if(s>=0){
			s-=1;
			
		}
		if(m>=0)
			{
			m-=1;
			
			}
		if(h>=0){
			h-=1;
		}
		if (s > 59) {
			m += 1;
			s = 0;
		}

		if (s === -1) {
			m -= 1;
			s = 59;
		}

		if (m > 59) {
			h+=1;
			m=0;
		}
		// Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
		//  - giảm số giờ xuống 1 đơn vị
		//  - thiết lập số phút lại 59
		if (m === -1) {
			h -= 1;
			m = 59;
		}

		
		// Nếu số giờ = -1 tức là đã hết giờ, lúc này:
		//  - Dừng chương trình
		if (h == -1) {
			clearTimeout(timeout);
			alert('Hết giờ');
			$('#m_val').attr('disabled', true);
			return false;
		}

		/*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
		document.getElementById('h').innerText = h.toString();
		document.getElementById('m').innerText = m.toString();
		document.getElementById('s').innerText = s.toString();

		/*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
		timeout = setTimeout(function() {
			s--;
			start();
		}, 1000);
	}

	function stop() {
		clearTimeout(timeout);
		
		
	}
	

</script>
</head>
<body>
	<div>
		<strong> Nhập thông tin ban đầu: <br />
		</strong> <input type="text" id="h_val" placeholder="Giờ" value="" /> <br />
		<input type="text" id="m_val" placeholder="Phút" value="" /> <br />
		<input type="text" id="s_val" placeholder="Giây" value="" /> <input
			id="startbtn" type="button" value="Start" onclick="start()" /> <input
			type="button" value="Stop" onclick="stop()" /> <br /> <br />
	</div>

	<div>
		<!-- 		<textarea rows="" cols=""></textarea> -->
		<span id="h">Giờ</span> : <span id="m">Phút</span> : <span id="s">Giây</span>


	</div>

	<form action ="TestST" method="post">
	
	<input name="testthu" type="radio" value="F" checked="checked">
	<button type="" value="nut">nhan</button>
	</form>
		

</body>
</html>