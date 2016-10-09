<%-- <%@ page isELIgnored="false"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Payer List</title>
        <link href="<c:url value='/static/css/bootstrap.min.css' />"  rel="stylesheet"></link>
        <link href="<c:url value='/static/css/font-awesome.min.css' />"  rel="stylesheet"></link>
        <link href="<c:url value='/static/css/bootstrap-datetimepicker.min.css' />"  rel="stylesheet"></link>
        
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
                 <table id="payerList" class="table table-responsive table-bordered table-striped table-small-font table-hover nowrap">
                     <thead>
                     	<tr>
                          <th>S/N</th>
                          <th nowrap>Beneficiary Number</th>
                          <th nowrap>Beneficiary Name</th>
                          <th nowrap>Case No</th>
                          <th nowrap>Case Type</th>
                          <th nowrap>Duration</th>
                          <th nowrap>Status</th>
                         </tr>
                     </thead>
                     <tbody>
                     	<tr>
                     	  <td>S/N</td>
                          <td>Beneficiary Number</td>
                          <td>Beneficiary Name</td>
                          <td>Case No</td>
                          <td>Case Type</td>
                          <td>Duration</td>
                          <td>Status</td>
                     	</tr>
                     </tbody>
                 </table>
             </div>
		  </div>
        </div>
    </div>

    </body>
	<script type="text/javascript">
	            $(document).ready(function() {
	    $('#payerList').DataTable();
	} );
	</script>
</html>