
$(document).ready(function() {
	/*$('#btn').click(function(){
		$('.content').hide();
		});*/
		/*$('#btnXacNhan,#btnXacNhan1').click(function() {
    // You can use `this` to refer to the source element, for instance:
    	$(this).text('Đã xác nhận');
		});*/
		$("#btnXacNhan,#btnXacNhan").click(function(){
			if($(this).is(":enabled"))
			{
				$(this).text("Đã xác nhận");
				$(this).prop("disabled",true);
				}
			});
		$("#btnXoa1").click(function(){
			$("#index1").hide();
			});
		$("#btnXoa2").click(function(){
			$("#index2").hide();
			});
		$("#btnXoa3").click(function(){
			$("#index3").hide();
			});
		$("#btnXoa4").click(function(){
			$("#index4").hide();
			});
	});
		
/*$(function() {
    $("div").click(function() {
        var name = this.name;
        var cls = this.className;
        var id= this.id;

        alert("Name: " + name + " / Class: " + cls + " / Id: " + id);
    });
});*/
