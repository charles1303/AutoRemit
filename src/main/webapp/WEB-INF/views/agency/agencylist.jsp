<%@include file="..\header.jsp" %>
      
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">            
              <!--overview start-->
			  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-laptop"></i> Agency Details</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="${pageContext.request.contextPath}/index">Home</a></li>
						<li><i class="fa fa-laptop"></i>Dashboard</li>						  	
					</ol>
				</div>
			</div>
			
			
			
				<!-- Modal -->
											<div class="modal fade" id="loanModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
											  <div class="modal-dialog" role="document">
												<div class="modal-content">
												  <div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
													<h4 class="modal-title" id="myModalLabel">New Agency Enrollment</h4>
												  </div>
												  <div class="modal-body table-responsive">
											<c:url var="postUrl" value="/agency/form" />		 
		                	             <form:form action="${postUrl}" method="post" class="form-horizontal">
	                          
					<div class="row">
	                            <div class="col-md-6 input-group input-sm">
	                                <label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
	                                <form:input class="form-control" id="agencyname" placeholder="Enter agency name" path="name" required="true"/>
	                                
	                            </div>
					</div>
					<div class="row">
	                            <div class="col-md-6 input-group input-sm">
	                                <label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
	                                <form:input class="form-control" id="code" placeholder="Enter Code" path = "code" required="true"/>
	                            </div>
					</div>
					  
	                          
	                                 
	                            <div class="form-group">
	
									<div class="col-md-6 col-md-offset-4">
		                                 <button type="submit" class="btn btn-primary">
		                                    <i class="fa fa-btn fa-save"></i>Save
		                                </button>
		
		                                <button type="reset" class="btn btn-primary"  id="btnReset">
		                                    <i class="fa fa-btn fa-refresh"></i>Reset
		                                </button>
					                 </div>
					
					            </div>
	                        </form:form>
		                
		                
												  </div>
												  <div class="modal-footer">
													<button type="button" class="btn btn-default btn-close" data-dismiss="modal">Close</button>
													
													
												  </div>
												</div>
											  </div>
											</div>	 
			
			
			
			
              
            
		
		<div class="row">
  		<div class="col-xs-12 col-sm-8 col-md-8 col-sm-offset-2 col-md-offset-2">
		    <div class="panel panel-default">
		  	   <div class='col-md-12'>
                 <div class="clearfix"></div>
                 <br />
                 <table id="agencyList" class="table table-responsive table-bordered table-striped table-small-font table-hover nowrap">
                     <thead>
                     	<tr>
                     	  <th nowrap>Agency Name</th>
                          <th nowrap>Agency Code</th>
                          
			          <th nowrap>Actions</th>
                         </tr>
                     </thead>
                     
                 </table>
                   <div class="form-group">
	
									<div class="col-md-6 col-md-offset-4">
		                                 <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#loanModal">
		                                    <i class="fa fa-pencil-square-o "></i>Create New Agency
		                                </button>
		
		                                <button type="reset" class="btn btn-primary"  id="btnReset">
		                                    <i class="fa fa-btn fa-refresh"></i>Reset
		                                </button>
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
		<script type="text/javascript" src="<c:url value='/static/js/bootstrap.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/static/js/bootstrap-datetimepicker.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/static/js/datatables/jquery.dataTables.min.js' />"></script>

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

<script type="text/javascript">
$(document).ready(function(){
	var data =eval('${agencyList}');
	var table = $('#agencyList').DataTable( {
		"aaData": data,
		"aoColumns": [
		{ "mData": "name"},
		{ "mData": "code"},
		{ "mData": "id",
			"render": function (data, type, row, meta) {
			return '<a href="#">View</a>';
		    }
		},
		
		],
		"paging":true,
		"pageLength":20,
		"ordering":true
	});
});
</script>
