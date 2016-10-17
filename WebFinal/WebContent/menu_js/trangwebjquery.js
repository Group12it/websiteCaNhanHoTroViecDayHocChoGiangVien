// JavaScript Document
$(document).ready(function() {
    $('#btndangnhap').click(function(){
		 $('.formdangnhap').show();
		});
	$('#btnok').click(function(){
		var strten=document.getElementById('txtten').value;
		alert('bạn đang đăng nhập với tài khoản '+strten);
		});
	$('#thoat').click(function(){
		$('.formdangnhap').hide();
		});
});