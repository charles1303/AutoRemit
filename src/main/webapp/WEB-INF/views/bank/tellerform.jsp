<%@include file="..\header.jsp" %>
      <!--sidebar end-->
      
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">            
              <!--overview start-->
			  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="../index">Home</a></li>
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

					<div class="row">		                        
					<div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="payers"></label>
		                                <input type="text" class="form-control" id="payers" placeholder="Type to select Payer PIN" required>
		                            </div>
					</div>
					<div id="ind_payer" style="display: none;">
					<div class="row">				
						<div class="col-md-6 input-group input-sm">
				                        <label class="input-group-addon" for="agency"></label>
				                        <input type="text" class="form-control" id="agency" name="agency" placeholder="Type to select Agency Name" required>
				                    </div>
					</div>	
					<div class="row">
		                            <div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="revItem"></label>
		                                <input type="text" class="form-control" id="revItem" name="revItem" placeholder="Type to select Revenue Item" required>
		                            </div>
					</div>	
					<div class="row">
		                            <div class="col-md-6 input-group input-sm">
		                                <label class="input-group-addon" for="amount"></label>
		                                <input type="text" class="form-control" id="amount" name="amount" placeholder="Amount" required>
		                            </div>
					</div>
					<div class="row">
					    <div class="col-md-6 input-group input-sm">
			                        <label class="input-group-addon" for="amtInWords"></label>
			                        <textarea rows="" cols="" class="form-control" id="amtInWords" name="amtInWords" placeholder="Enter Amount in words" required></textarea>
			                       
			                    </div>
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