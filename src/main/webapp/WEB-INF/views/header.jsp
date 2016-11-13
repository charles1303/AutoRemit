<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Auto Remit</title>

        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet" >
        <link href="${pageContext.request.contextPath}/static/css/sb-admin.css" rel="stylesheet" >


        <!-- Morris Charts CSS -->
        <link href="${pageContext.request.contextPath}/static/css/morris.css" rel="stylesheet" >

        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css" rel="stylesheet" >

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        
         <!-- Bootstrap Core JavaScript -->
                <!-- jQuery -->
                <script src="<c:url value="/static/js/jquery.min.js" />"></script>
                <!-- Bootstrap Core JavaScript -->
                <script src="<c:url value="/static/js/bootstrap.min.js" />"></script>
                

        <!-- DisplayTag css n co -->

        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/crudapp.css" media="screen, projection"/>
        <link href="${pageContext.request.contextPath}/static/css/tcrime.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/static/css/displaytag.css" rel="stylesheet" />
        <script src="<c:url value="/static/js/jquery.dataTables.min.js"/>"></script>
        
        <script src="<c:url value="/static/js/raphael.min.js" />"></script>
                
       
                      
               
                <!-- Morris Charts JavaScript
                
                <script src="<c:url value="/static/js/morris.min.js" />"></script>
                <script src="<c:url value="/static/js/morris-data.js" />"></script>
                <!-- Custom Theme JavaScript
                <script src="<c:url value="/static/js/sb-admin-2.js" />"></script>
                 -->
        
        

    </head>

    <body>
              
            <div id="wrapper">

                <!-- Navigation -->
                <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div>
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" ><b>Auto Remit</a>   
                    </div>
                    <!-- Top Menu Items -->
                    <ul class="nav navbar-right top-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                            <ul class="dropdown-menu message-dropdown">
                                <li class="message-preview">
                                    <a href="#">
                                        <div class="media">
                                            <span class="pull-left">
                                                <img class="media-object" src="http://placehold.it/50x50" alt="">
                                            </span>
                                            <div class="media-body">
                                                <h5 class="media-heading"><strong>${user}</strong>
                                                </h5>
                                                <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="message-preview">
                                    <a href="#">
                                        <div class="media">
                                            <span class="pull-left">
                                                <img class="media-object" src="http://placehold.it/50x50" alt="">
                                            </span>
                                            <div class="media-body">
                                                <h5 class="media-heading"><strong>${user}</strong>
                                                </h5>
                                                <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="message-preview">
                                    <a href="#">
                                        <div class="media">
                                            <span class="pull-left">
                                                <img class="media-object" src="http://placehold.it/50x50" alt="">
                                            </span>
                                            <div class="media-body">
                                                <h5 class="media-heading"><strong>${user} </strong>
                                                </h5>
                                                <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                                <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="message-footer">
                                    <a href="#">Read All New Messages</a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> ${user}  <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                                </li>

                                <li class="divider"></li>
                                <li>
                                    <a href="<c:url value="/j_spring_security_logout" />" ><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->


                    <div class="collapse navbar-collapse navbar-ex1-collapse">
                        <ul class="nav navbar-nav side-nav">

                            <li class ="active">
                                <a href="index.htm"><i class="fa fa-fw fa-dashboard"></i> Urgent Transactions</a>
                            </li>

                            
                                <li>
                                    <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Setup <i class="fa fa-fw fa-caret-down"></i></a>
                                    <ul id="demo" class="collapse">
                                         

                                                <li>
                                                    <a href="adduser.htm">System User Setup</a>
                                                </li>
                                            
                                            
                                    </ul>
                                </li>
                            
                            
                                <li>
                                    <a href="javascript:;" data-toggle="collapse" data-target="#demo2"><i class="fa fa-fw fa-arrows-v"></i> Logs <i class="fa fa-fw fa-caret-down"></i></a>
                                    <ul id="demo2" class="collapse">
                                        <li>
                                            <a href="activity.htm">Activity Log</a>
                                        </li>
                                        <li>
                                            <a href="audit.htm">Audit Log</a>
                                        </li>
                                    </ul>
                                </li>
                            
                             
                                <li>
                                    <a href="javascript:;" data-toggle="collapse" data-target="#demo3"><i class="fa fa-fw fa-arrows-v"></i> RTSX <i class="fa fa-fw fa-caret-down"></i></a>
                                    <ul id="demo3" class="collapse">
                                        <li>
                                            <a href="rtsxreport.htm">RTSX Report</a>
                                        </li>
                                        <li>
                                            <a href="rtsxpipeline.htm">RTSX Pipeline Transaction</a>
                                        </li>
                                    </ul>
                                </li>
                            

                            
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>


                <div id="page-wrapper">

                    <div class="container-fluid">