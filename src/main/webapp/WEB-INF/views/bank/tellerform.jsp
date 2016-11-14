	<%-- <%@ page isELIgnored="false"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    
    <title>Creative - Bootstrap Admin Template</title>

    <!-- Bootstrap CSS -->    
    <link href="<c:url value='/static/css/bootstrap.min.css' />"  rel="stylesheet"></link>
    <!-- bootstrap theme -->
    <link href="<c:url value='/static/css/bootstrap-theme.css' />"  rel="stylesheet"></link>
    <!--external css-->
    <!-- font icon -->
    <link href="<c:url value='/static/css/elegant-icons-style.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/font-awesome.css' />"  rel="stylesheet"></link>
    <!-- full calendar css-->
    <link href="<c:url value='/static/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/assets/fullcalendar/fullcalendar/fullcalendar.css' />"  rel="stylesheet"></link>

    <!-- easy pie chart-->
    <link href="<c:url value='/static/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css' />"  rel="stylesheet" type="text/css" media="screen"></link>
    <!-- owl carousel -->
   <link href="<c:url value='/static/css/owl.carousel.css' />"  type="text/css"></link>
    <link href="<c:url value='/static/css/jquery-jvectormap-1.2.2.css' />"  rel="stylesheet"></link>
    <!-- Custom styles -->
	
    <link href="<c:url value='/static/css/fullcalendar.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/widgets.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/style.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/style-responsive.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/xcharts.min.css' />"  rel="stylesheet"></link>
    <link href="<c:url value='/static/css/jquery-ui-1.10.4.min.css' />"  rel="stylesheet"></link>

	<link href="<c:url value='/static/css/bootstrap-datetimepicker.min.css' />"  rel="stylesheet"></link>
        
	
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
     
      
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="../index" class="logo">AutoRemit</a>
            <!--logo end-->

            
            <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                
                <!-- notificatoin dropdown end-->
            </div>
      </header>      
      <!--header end-->

      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li class="active">
                      <a class="" href="../index">
                          <i class="icon_house_alt"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
				  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>Payers</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <c:set var="baseUrl" value="/autoremit" />
                      <ul class="sub">
                          <li><a class="" href="../payer/form">Setup</a></li>                          
                          <li><a class="" href="../payer/list">List</a></li>
                      </ul>
                  </li>       
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>Bank</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="../bank/teller">Teller Form</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>Agency</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="../trxn/list">Pending Transactions</a></li>
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>Reports</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="../reports/">Report</a></li>
                      </ul>
                  </li>
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">            
              <!--overview start-->
			  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-laptop"></i>Dashboard</li>						  	
					</ol>
				</div>
			</div>
              
            <div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box blue-bg">
						<i class="fa fa-cloud-download"></i>
						<div class="count">10,000,000.00</div>
						<div class="title">Payments Made</div>						
					</div><!--/.info-box-->			
				</div><!--/.col-->
				
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box brown-bg">
						<i class="fa fa-shopping-cart"></i>
						<div class="count">2</div>
						<div class="title">Pending Requests</div>						
					</div><!--/.info-box-->			
				</div><!--/.col-->	
				
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box dark-bg">
						<i class="fa fa-thumbs-o-up"></i>
						<div class="count">4</div>
						<div class="title">Approved Requests</div>						
					</div><!--/.info-box-->			
				</div><!--/.col-->
				
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box green-bg">
						<i class="fa fa-cubes"></i>
						<div class="count">120</div>
						<div class="title">Users</div>						
					</div><!--/.info-box-->			
				</div><!--/.col-->
				
			</div><!--/.row-->
		
		<div class="row">
           <div class="container">
		    <div class="row">
		        <div class="col-md-8 col-md-offset-2">
		            <div class="panel panel-default">
		                <div class="panel-heading">Revenue Payment Entry</div>
		                <div class="panel-body">
		                	<c:url var="postUrl" value="/bank/recordPayment" />
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
		</div>
            
		  
		  </section>
          <div class="text-right">
          <div class="credits">
                <!-- 
                    All the links in the footer should remain intact. 
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
                -->
                <a href="https://bootstrapmade.com/free-business-bootstrap-themes-website-templates/">Business Bootstrap Themes</a> by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
      </section>
      <!--main content end-->
  </section>
  <!-- container section start -->

    <!-- javascripts -->
   
    	<script type="text/javascript" src="<c:url value='/static/js/jquery.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/js/jquery-ui-1.10.4.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/js/jquery-1.8.3.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/js/jquery-ui-1.9.2.custom.min.js' />"></script>
    <!-- bootstrap -->
   	<script type="text/javascript" src="<c:url value='/static/js/bootstrap.min.js' />"></script>
    <!-- nice scroll -->
   	<script type="text/javascript" src="<c:url value='/static/js/jquery.scrollTo.min.js' />"></script>
   	<script type="text/javascript" src="<c:url value='/static/js/jquery.nicescroll.js' />"></script>
    <!-- charts scripts -->
    	<script type="text/javascript" src="<c:url value='/static/assets/jquery-knob/js/jquery.knob.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/js/jquery.sparkline.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/js/owl.carousel.js' />"></script>
    <!-- jQuery full calendar -->
    	<script type="text/javascript" src="<c:url value='/static/js/fullcalendar.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/assets/fullcalendar/fullcalendar/fullcalendar.js' />"></script>
	
    <!--script for this page only-->
    	<script type="text/javascript" src="<c:url value='/static/js/calendar-custom.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/js/jquery.rateit.min.js' />"></script>
    <!-- custom select -->
    	<script type="text/javascript" src="<c:url value='/static/js/jquery.customSelect.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/assets/chart-master/Chart.js' />"></script>
   
    <!--custome script for all page-->
    	<script type="text/javascript" src="<c:url value='/static/js/scripts.js' />"></script>
    <!-- custom script for this page-->
    	<script type="text/javascript" src="<c:url value='/static/js/sparkline-chart.js' />"></script>
    	<script type="text/javascript" src="<c:url value='/static/js/easy-pie-chart.js' />"></script>
    	<script type="text/javascript" src="<c:url value='/static/js/jquery-jvectormap-1.2.2.min.js' />"></script>
    	<script type="text/javascript" src="<c:url value='/static/js/jquery-jvectormap-world-mill-en.js' />"></script>
    	<script type="text/javascript" src="<c:url value='/static/js/xcharts.min.js' />"></script>
    	<script type="text/javascript" src="<c:url value='/static/js/jquery.autosize.min.js' />"></script>
    	<script type="text/javascript" src="<c:url value='/static/js/jquery.placeholder.min.js' />"></script>
    	<script type="text/javascript" src="<c:url value='/static/js/gdp-data.js' />"></script>
    	<script type="text/javascript" src="<c:url value='/static/js/morris.min.js' />"></script>
    	<script type="text/javascript" src="<c:url value='/static/js/sparklines.js' />"></script>
    	<script type="text/javascript" src="<c:url value='/static/js/charts.js' />"></script>
    	<script type="text/javascript" src="<c:url value='/static/js/jquery.slimscroll.min.js' />"></script>

	<script type="text/javascript" src="<c:url value='/static/js/moment.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/js/bootstrap-datetimepicker.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/js/tellerform.js' />"></script>
    
    

  <script>

      //knob
      $(function() {
        $(".knob").knob({
          'draw' : function () { 
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
          $("#owl-slider").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });
	  
	  /* ---------- Map ---------- */
	$(function(){
	  $('#map').vectorMap({
	    map: 'world_mill_en',
	    series: {
	      regions: [{
	        values: gdpData,
	        scale: ['#000', '#000'],
	        normalizeFunction: 'polynomial'
	      }]
	    },
		backgroundColor: '#eef3f7',
	    onLabelShow: function(e, el, code){
	      el.html(el.html()+' (GDP - '+gdpData[code]+')');
	    }
	  });
	});

  </script>

  </body>
</html>
