<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
</head>
<body>
  <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.css" rel="stylesheet" media="screen">
  <link href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css" rel="stylesheet"/>
   </head>
<body>
           <!--  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Contact Form</h4>
     -->
        <div class="modal-body">
            <form class="form-horizontal" id="contactform" name="commentform" method="post" action="indexuser.html"
            data-bv-message="This value is not valid"
            data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
            data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
            data-bv-feedbackicons-validating="glyphicon glyphicon-refresh"
            >
               <div class="form-group">
                    <label class="control-label col-md-4" for="first_name">First Name</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"
                        data-bv-notempty data-bv-notempty-message="You're required to fill in a first name!"
                        />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="last_name">Tiêu đề</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Tiêu đề"
                        data-bv-notempty data-bv-notempty-message="You've forgotten to provide your last name!"
                        />
                    </div>
                </div>
        
                <div class="form-group">
                    <div class="col-md-6">
                        <button type="submit" value="Submit" class="btn btn-custom pull-right" id="send_btn">Send</button>
                    </div>
                </div>
            </form>
 <!-- End of Container -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js" type="text/javascript"></script>
<script>
$('#contactform').bootstrapValidator();
</script>

  <jsp:include page="footer.jsp" /></jsp:include>
</body>
</html>