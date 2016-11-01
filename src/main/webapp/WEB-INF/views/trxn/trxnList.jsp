<%-- <%@ page isELIgnored="false"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Transaction List</title>
        <link href="<c:url value='/static/css/bootstrap.min.css' />"  rel="stylesheet"></link>
        <link href="<c:url value='/static/css/font-awesome.min.css' />"  rel="stylesheet"></link>
        <link href="<c:url value='/static/css/bootstrap-datetimepicker.min.css' />"  rel="stylesheet"></link>
        <link href="<c:url value='/static/css/datatables/jquery.dataTables.min.css' />"  rel="stylesheet"></link>
        
		<script type="text/javascript" src="<c:url value='/static/js/moment.js' />"></script>
		<script type="text/javascript" src="<c:url value='/static/js/jquery.js' />"></script>
		<script type="text/javascript" src="<c:url value='/static/js/bootstrap.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/static/js/bootstrap-datetimepicker.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/static/js/datatables/jquery.dataTables.min.js' />"></script>
       
    </head>
 
    <body>
    <div class="row">
  		<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
		    <div class="panel panel-default">
		  	   <div class='col-md-12'>
                 <div class="clearfix"></div>
                 <br />
                 <table id="trxnList" class="table table-responsive table-bordered table-striped table-small-font table-hover nowrap">
                     <thead>
                     	<tr>
                     	  <th nowrap>Ref</th>
                          <th nowrap>Amount</th>
                          <th nowrap>Amount-Words</th>
                          <th nowrap>Payer Id</th>
			  			  <th nowrap>Actions</th>
                         </tr>
                     </thead>
                     
                 </table>
             </div>
		  </div>
        </div>
    </div>

    </body>
	
</html>
<script type="text/javascript">
$(document).ready(function(){
	var data =eval('${trxnList}');
	var table = $('#trxnList').DataTable( {
		"aaData": data,
		"aoColumns": [
		{ "mData": "transactionRef"},
		{ "mData": "amount"},
		{ "mData": "amtInWords"},
		{ "mData": "payer.username"},
		{ "mData": "id",
			"render": function (data, type, row, meta) {
				return '<a href="/autoremit/trxn/view?id=' + data + '">View</a>';
		    }
		},
		
		],
		"paging":true,
		"pageLength":20,
		"ordering":true
	});
});
</script>

