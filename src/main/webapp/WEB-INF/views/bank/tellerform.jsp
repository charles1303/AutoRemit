<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Revenue Payment Entry</title>
  <link href="<c:url value='/static/js/jqueryui/jquery-ui.css' />"  rel="stylesheet"></link>
  <link href="<c:url value='/static/css/bootstrap.min.css' />"  rel="stylesheet"></link>
  <link href="<c:url value='/static/css/font-awesome.min.css' />"  rel="stylesheet"></link>
  <link href="<c:url value='/static/css/bootstrap-datetimepicker.min.css' />"  rel="stylesheet"></link>
  
  <script type="text/javascript" src="<c:url value='/static/js/jqueryui/external/jquery/jquery.js' />"></script>
  <script type="text/javascript" src="<c:url value='/static/js/jqueryui/jquery-ui.js' />"></script>
  <script type="text/javascript" src="<c:url value='/static/js/bootstrap.min.js' />"></script>
  <script type="text/javascript" src="<c:url value='/static/js/tellerform.js' />"></script>
        
  
  
</head>
<body>
	<div class="container">
		    <div class="row">
		        <div class="col-md-8 col-md-offset-2">
		            <div class="panel panel-default">
		                <div class="panel-heading">Revenue Payment Entry</div>
		                <div class="panel-body">
		                	<c:url var="postUrl" value="/banker/recordPayment" />
	                        <form action="${postUrl}" method="post" class="form-horizontal">
		                        <input type="hidden" class="form-control" id="payerId" name="payerId" value="">
		                        <input type="hidden" class="form-control" id="agencyId" name="agencyId" value="">
		                        <input type="hidden" class="form-control" id="revItemId" name="revItemId" value="">
		                        <div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="payers"></label>
		                                <input type="text" class="form-control" id="payers" placeholder="Type to select Payer PIN" required>
		                            </div>
					<div id="ind_payer" style="display: none;">
					<div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="trxnRef"></label>
		                                <input type="text" class="form-control" id="trxnRef" name="trxnRef" placeholder="Transaction Ref" required>
		                            </div>
	                            	<div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="agency"></label>
		                                <input type="text" class="form-control" id="agency" name="agency" placeholder="Type to select Agency Name" required>
		                            </div>
		                            <div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="revItem"></label>
		                                <input type="text" class="form-control" id="revItem" name="revItem" placeholder="Type to select Revenue Item" required>
		                            </div>
		                            <div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="amount"></label>
		                                <input type="text" class="form-control" id="amount" name="amount" placeholder="Amount" required>
		                            </div>
					    <div class="col-md-6 input-group input-sm">
			                        <label class="input-group-addon" for="amtInWords"></label>
			                        <textarea rows="" cols="" class="form-control" id="amtInWords" name="amtInWords" placeholder="Enter Amount in words" required></textarea>
			                       
			                    </div>
					<div class="col-md-6 col-md-offset-2">
		                                <button type="submit" class="btn btn-primary">
		                                    <i class="fa fa-btn fa-save"></i>Save
		                                </button>
		
		                                <button type="reset" class="btn btn-primary"  id="btnReset">
		                                    <i class="fa fa-btn fa-refresh"></i>Reset
		                                </button>
				        </div>
					

		                            
	                            </div>
					
	                         </form>
	                    </div>

				
	                   </div>
	                 </div>
	               </div>
	             </div>
	                            
</body>
</html>