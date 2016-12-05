 <%-- <%@ page isELIgnored="false"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
	<link href="<c:url value='/static/css/datatables/jquery.dataTables.min.css' />"  rel="stylesheet"></link>
        
  </head>



  <body>
  <!-- container section start -->
  <section id="container" class="">
     
      
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="${pageContext.request.contextPath}/index" class="logo">AutoRemit</a>
            <!--logo end-->

            
            <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul>
                <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/logout"><span class="username">Log Out</span></a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li class="eborder-top">
                                <a href="#"><i class="icon_profile"></i> My Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                            </li>
                            <li>
                                <a href="logout"><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                            
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
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
                      <a class="" href="${pageContext.request.contextPath}/index">
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
                          <li><a class="" href="${pageContext.request.contextPath}/payer/form">Setup</a></li>                          
                          <li><a class="" href="${pageContext.request.contextPath}/payer/list">List</a></li>
                      </ul>
                  </li>       
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>Bank</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="${pageContext.request.contextPath}/bank/teller">Teller Form</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>Agency</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                      	  <li><a class="" href="${pageContext.request.contextPath}/trxn/list">Pending Transactions</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/agency/list">Agency Setup</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/agency/listagstaff">Agency Staff Setup</a></li>
                      </ul>
                  </li>
                  
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>Reports</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="${pageContext.request.contextPath}/reports/">Report</a></li>
                      </ul>
                  </li>
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->