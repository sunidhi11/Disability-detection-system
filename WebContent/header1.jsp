<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page 
	import="java.util.*" 
	import="java.sql.*"
	import="sis.com.*"
	import="sis.com.controller.*" 
	import="sis.com.dao.*"
	import="sis.com.dao.impl.*"
	import="sis.com.daoFactory.*"
	import="sis.com.util.*"
	import="sis.com.bo.*"
	 
%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
	<meta name="author" content="Seema Dewangan">
	<meta name="author" content="Sunidhi Garg">
	<meta name="author" content="Monika Jaiswal">
	<meta name="description" content="Hostel Management System for institute based on J2EE">
	<meta name="keywords" content="hostel,system,management,java,j2ee,girl hostel,boys hostel,attendance,leave">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Abel|Anton|Exo+2|Josefin+Sans|Noto+Sans|Open+Sans|PT+Sans" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet"> 
	<link rel="stylesheet" href="css/main.css">
</head>
<style>
input[type=text] {
    width: 130px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

/* When the input field gets focus, change its width to 100% */
input[type=text]:focus {
    width: 100%;
    padding-top: 8px;
    margin-top: 10px;
    
}
.nav-sg li{
	display: inline;
}
</style>
<body data-spy="scroll" data-target=".navbar" data-offset="150">
			<div class="row" style="background-color:#5f73ad;">
    <div class="col-sm-4"><img src="images//healthcare.jpg" style="background-color:#5f73ad;"></div>
    <div class="col-sm-8"> <h1 class="disability" style="color:white;padding-botttom:10px;"> DISABILITY DETECTION </h1></div>
  </div>
				<!-- <div class="container" style="position: relative;font-family: Arial;width:100%;">
					<img src="images//ii.png" alt="Nature" style="width:100%;-webkit-filter: blur(2px); filter: blur(5px);">
						<div class="container text-block">
							<div class="logo col-md-8" style="float:left;margin:10	px 0px;">
								<img class="img-responsive" src="images//healthcare.jpg" style="float: left;width:150pxl;height:138px;padding:2px;margin: 2px;">
									<h2>Disability Dtection</h2>
									<h2>à¤°à¤¾à¤·à¥à¤à¥à¤°à¥à¤¯ à¤ªà¥à¤°à¥à¤¦à¥à¤¯à¥à¤à¤¿à¤à¥ à¤¸à¤à¤¸à¥à¤¥à¤¾à¤¨, à¤°à¤¾à¤¯à¤ªà¥à¤° </h2>
									<h2>à¤°à¤¾à¤·à¥à¤à¥à¤°à¥à¤¯ à¤ªà¥à¤°à¥à¤¦à¥à¤¯à¥à¤à¤¿à¤à¥ à¤¸à¤à¤¸à¥à¤¥à¤¾à¤¨ à¤°à¤¾à¤¯à¤ªà¥à¤°</h2>
									
								</div>
							</div>
						</div> -->
						<nav class="navbar navbar-default nav-sm " data-spy="affix" data-offset-top="200">
							<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>
								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav">
										<li class="active">
											<a href="home.jsp">
												<span class="glyphicon glyphicon-home">&nbsp;HOME 
												<span class="sr-only">(current)</span>
											</a>
										</li>
									<li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user">&nbsp;DISABILITY 
											<span class="caret"></span>
											</a>
											<ul class="dropdown-menu">
												<li>
													<a href="locomotion.jsp">LOCOMOTION</a>
												</li><hr>
												<li>
													<a href="vision.jsp">VISION</a>
												</li>
												<li><hr>
													<a href="#">SPEECH</a>
												</li>
												
													</ul>
										
										</li>
				                       <li class="dropdown">
											<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user">&nbsp;TAKE TEST 
											<span class="caret"></span>
											</a>
											<ul class="dropdown-menu">
											<li>
													<a href="hand_component.jsp">GENERAL DISABILITY</a>
												</li>
												<li>
													<a href="hand_component.jsp">HAND COMPONENT</a>
												</li><hr>
												<li>
													<a href="#">VOICE</a>
												</li> <hr>
												<li>
													<a href="gmfcs.jsp">CEREBRAL PALSY</a>
												</li><hr>
												<li>
													<a href="#">VISION</a>
												</li>
													</ul>
										
										</li> 
										<li>
											<a href="contact.jsp">
												<span class="glyphicon glyphicon-plus">&nbsp;DOCTOR's-CONTACTS
																						</a>
										</li>   
				                        								
									</ul>
						
						<ul class="nav navbar-nav navbar-right">
						<form action="SearchDiseaseController" method="get">
							<li><input type="text" name="searchText" placeholder="Search.." style="padding-top: 8px;margin-top: 10px;"></li>
						</form>
						
						</ul>
						
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>


<!-- START CONTAINER FROM HERE -->
<!-- ADD TITLE ON YOUR PAGE -->

<%-- USE <jsp:include page="header.jsp" /> --%>


<!-- CONTAINER START -->
<!-- <div class="container container-sm border" style=""> -->