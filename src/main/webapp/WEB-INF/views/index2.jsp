<%@include file ="header.jsp"%>

                <!-- ---------------  New page starts here  ------------------------------->           
                   <form onsubmit="submitAll()" name="frm1" id="frm1">

                        <!-- Page Heading -->
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Payment Transaction <small> Overview</small>
                                </h1>
                                <ol class="breadcrumb">
                                    <li>
                                        <i class="fa fa-dashboard"></i> <font style ="color:red;valign:centre"><b><big>${statustype}</big></font> Dashboard </center>
                                    </li>
                                </ol>
                            </div>
                        </div>




                        <div class="row">

                            <div class="col-lg-3 col-md-6">
                                <div class="panel panel-yellow">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-pencil-square-o fa-3x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">${newcount}</div>
                                                <div>NEW</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="details.psm?_1=TkVX">
                                        <div class="panel-footer">
                                            <span class="pull-left">View Details</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6">
                                <div class="panel panel-green">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-check fa-3x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">${paidrejectedcount}</div>
                                                <div>PRINTED RECEIPT</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="details.psm?_1=UkVKRUNURUQ=">
                                        <div class="panel-footer">
                                            <span class="pull-left">View Details</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>


                            <div class="col-lg-3 col-md-6">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fA fa-gavel fa-3x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">${processingcount}</div>
                                                <div>PROCESSING</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="details.psm?_1=UFJPQ0VTU0lORw==">
                                        <div class="panel-footer">
                                            <span class="pull-left">View Details</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>


                            <div class="col-lg-3 col-md-6">
                                <div class="panel panel-red">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-ban fa-3x"></i>

                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">${authorizecount}</div>
                                                <div>AWAIING APPROVAL</div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="details.psm?_1=QVVUSE9SSVpF">
                                        <div class="panel-footer">
                                            <span class="pull-left">View Details</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->


                        <!-- /.row -->

                        <!-- /.container-fluid -->

 </form>
                <!-----------------------------End -------------------------- -->
                
                
                
                
                
                    </div>  <!-- /#page-wrapper -->
                   

                </div>
                </div>
               

                </body>
        

</html>
                



