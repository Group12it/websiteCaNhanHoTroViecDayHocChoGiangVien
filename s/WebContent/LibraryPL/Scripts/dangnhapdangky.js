        $(document).ready(function () {
            $.ajaxSetup({ cache: false });
            $("#myBtn").click(function () {
                $("#myModal").modal();

            });
        });
    <!--End đăng nhập-->
    
   <!--đăng ký--> 
        $(document).ready(function () {
            $.ajaxSetup({ cache: false });
            $("#btndangky").click(function () {
                $("#myModal1").modal();

            });
        });

        
        <!--Gui mail--> 
        $(document).ready(function () {
            $.ajaxSetup({ cache: false });
            $("#btnLienHe").click(function () {
                $("#myModalMail").modal();

            });
        });
