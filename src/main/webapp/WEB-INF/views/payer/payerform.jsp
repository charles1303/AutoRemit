<%-- <%@ page isELIgnored="false"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Payer Form</title>
        <link href="<c:url value='/static/css/bootstrap.min.css' />"  rel="stylesheet"></link>
        <link href="<c:url value='/static/css/font-awesome.min.css' />"  rel="stylesheet"></link>
        <link href="<c:url value='/static/css/bootstrap-datetimepicker.min.css' />"  rel="stylesheet"></link>
        
		<script type="text/javascript" src="<c:url value='/static/js/moment.js' />"></script>
		<script type="text/javascript" src="<c:url value='/static/js/jquery.js' />"></script>
		<script type="text/javascript" src="<c:url value='/static/js/bootstrap.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/static/js/bootstrap-datetimepicker.min.js' />"></script>
        
    </head>
 
    <body>
        <div class="container">
		    <div class="row">
		        <div class="col-md-8 col-md-offset-2">
		            <div class="panel panel-default">
		                <div class="panel-heading">Payer Registration</div>
		                <div class="panel-body">
		                	<c:url var="postUrl" value="/payer/form" />
	                        <form action="${postUrl}" method="post" class="form-horizontal">
	                            <c:if test="${param.error != null}">
	                                <div class="alert alert-danger">
	                                    <p>Invalid username and password.</p>
	                                </div>
	                            </c:if>
	                            <c:if test="${param.logout != null}">
	                                <div class="alert alert-success">
	                                    <p>You have been logged out successfully.</p>
	                                </div>
	                            </c:if>
	                            <div class="col-md-6 input-group input-sm">
	                                <label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
	                                <input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>
	                            </div>
	                            <div class="col-md-6 input-group input-sm">
	                                <label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
	                                <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
	                            </div>
	                            <div class="col-md-6 input-group input-sm">
	                                <label class="input-group-addon" for="email"><i class="fa fa-user"></i></label>
	                                <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email" required>
	                            </div>
	                            <div class="col-md-6 input-group input-sm">
	                                <label class="input-group-addon" for="address"><i class="fa fa-user"></i></label>
	                                <textarea rows="" cols="" class="form-control" id="address" name="address" placeholder="Enter Address" required></textarea>
	                               
	                            </div>
	                            <div class="col-md-6 input-group input-sm">
	                                <label class="input-group-addon" for="state"><i class="fa fa-user"></i></label>
	                                <select class="form-control" id="state" name="state" required>
	                                	<option selected="selected">Select State</option>
	                                	<option value="LA">Lagos</option>
	                                	<option value="OG">Ogun</option>
	                                
	                                </select>
	                                
	                            </div>
	                            <div class="col-md-6 input-group input-sm">
	                                <label class="input-group-addon" for="lga"><i class="fa fa-user"></i></label>
	                                <select class="form-control" id="lga" name="lga" required>
	                                	<option selected="selected">Select LGA</option>
	                                	<option value="EO">Eti-Osa</option>
	                                	<option value="IKJ">Ikeja</option>
	                                
	                                </select>
	                                
	                            </div>
	                            <div class="col-md-6 input-group input-sm">
	                                <label class="input-group-addon" for="phone"><i class="fa fa-user"></i></label>
	                                <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter Phone" required>
	                            </div>
	                            <div class="col-md-6 input-group input-sm">
	                            	<label class="radio-inline">Payer Type : </label>
	                            	<label class="radio-inline"><input type="radio"  id="payerType1" name="payerType">Individual</label>
									<label class="radio-inline"><input type="radio"  id="payerType2" name="payerType">Corporate</label>
	                            	
	                            </div>
	                            <div id="ind_payer">
	                            	<div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="firstname"><i class="fa fa-user"></i></label>
		                                <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Enter Firstname" required>
		                            </div>
		                            <div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="middlename"><i class="fa fa-user"></i></label>
		                                <input type="text" class="form-control" id="middlename" name="middlename" placeholder="Enter Middlename" required>
		                            </div>
		                            <div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="lastname"><i class="fa fa-user"></i></label>
		                                <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Enter Lastname" required>
		                            </div>
		                            <div class="col-md-6 input-group input-sm">
		                            	<div class="input-group date" id="example">
										  <input type="text" class="form-control" />
										  <span class="input-group-addon">
										    <span class="glyphicon glyphicon-calendar"></span>
										  </span>
										</div>
		                            </div>
		                            
	                            </div>
	                            
	                            <div id="ind_corp">
	                            	<div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="name"><i class="fa fa-user"></i></label>
		                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" required>
		                            </div>
		                            <div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="yearOfIncorporation"><i class="fa fa-user"></i></label>
		                                <input type="text" class="form-control" id="yearOfIncorporation" name="yearOfIncorporation" placeholder="Enter Year of Incorporation" required>
		                            </div>
		                            <div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="regNum"><i class="fa fa-user"></i></label>
		                                <input type="text" class="form-control" id="regNum" name="regNum" placeholder="Enter Registration Number" required>
		                            </div>
		                            
	                            </div>
	                            
	                            <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
	                                 
	                            <div class="form-group">
	
									<div class="col-md-6 col-md-offset-4">
		                                <button type="submit" class="btn btn-primary">
		                                    <i class="fa fa-btn fa-sign-in"></i>Save
		                                </button>
		
		                                <button type="submit" class="btn btn-primary">
		                                    <i class="fa fa-btn fa-sign-in"></i>Reset
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
	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').datetimepicker();
		});
	</script>
</html>