<%@include file="header1.jsp" %>
<style type="text/css">
.hjumbo{
        background-color: #18192f;
         font-family:cooper;
		 color:white;
		 font-size:30px;
		 text-align:center;
        padding: 10px;
        margin-bottom: 3px;
        background-image: url("images//im.png");
        
        }
 body{
	background-color: white;
	/* padding-top: 70px; */
}
.infolist{
	list-style: none;
	color:#a9a69b;
}
.panel-heading-sm{
	background-color:blue; 
}

.copyright{
	font-size: 10px;
}
.panel-sm{
	font-family: 'Open Sans', sans-serif;
}
.footer-heading{
	color:#1515a2;;
}
.welcome{
	font-size: 57px;
}
.welcome-description{
	
	font-family: 'Noto Sans', sans-serif;
}
.panel-max-size{
 	height: 200px;
 	max-height: 200px;
 	min-height: 200px;
 	display: inline-block;
 	overflow: scroll;
 	
}
* {
    box-sizing: border-box;
}

.col-container {
    display: table;
    width: 100%;
}
.col {
    display: table-cell;
    padding: 16px;
}

@media only screen and (max-width: 600px) {
    .col { 
        display: block;
        width: 100%;
    }
}
.container-sm{
	background-color: #cccccc;
	padding: 10px;
	padding-top:20px;
	box-shadow:0 37px 45px 0 rgba(0, 0, 9, 1), 0 27px 20px 0 rgba(0, 0, 0, 1);
}
.panel-heading-sm{
	background-color: white;
	border-top-color:black; 
}
.announcement-sm{
	width:auto;
	height:80px;
	margin:10px;
	background: #18192f;
	color:white;
}
.nav-sm{
	 box-shadow:0 10px 10px 0 rgba(171, 171, 171, 0.55), 0 10px 10px 0 rgba(0, 1, 1, 0.5);
}
.active{
	background-color: white; 
}
.text-block {
    position: absolute;
    background-color: #02020880;
    color: white;
    width: 100%;
    height: 100%;
    bottom: 20px;
    right: 20px; 
    top:20px;
}
.text-block {
	width: 97%;
	height: 80%;
}
 .affix {
      top: 0;
      width: 100%;
      z-index: 9999 !important;
  }

 .disability{
 text-align: left;
 font-family: cooper;
 color: red;
 padding-bottom: 40px;
 }
 .text-sm{
 font-size: 20px;}
</style>
<body data-spy="scroll" data-target=".navbar" data-offset="150">
<% if(session.getAttribute("error_result")!=null){%>
	 <div class="alert alert-info alert-dismissable">
	    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
	 
		 <strong>Problem!</strong>Search String does not found. 
	 </div>
	
 <% session.removeAttribute("error_result");}%>
<div class="container container-sm border" style="text-align: center;">
<div class="container">
 <img src="images//2.png" width="100%">
 <br>
 <div class="panel-heading panel-heading-sm" style="background-color:#18192f;color:white;">
 <h2>DISABILITY</h2></div>
    
  <div class="panel-body" id="accordion">
    <div class="well">
    <div class="alert alert-info alert-dismissable">    
      <h3 class="welcome-description" style="font-family: 'Roboto', sans-serif;">
      Disability means that one has fundamental difficulty accomplishing things that others take for granted.
      Disabilities can be physical in nature (an inability to walk due to amputation,
       or muscular or neurological dysfunction, for example), sensory (as in blindness, or deafness), 
       cognitive (as in brain damage or mental retardation), behavioral (as in an inability to work), 
       or even emotional.</h3>
   </div>
  
   <div class="panel-body">
       
        <hr style="width:5px;height:5px;">
	    <div class="row">
	    	<div class="col-md-1">&nbsp;</div>
	    	<div class="col-md-2">
	    		<div class="container-card-sm">
				  <a href="#">
				  <div class="circle"><br><br>
				<center><img src="images//vision.png"></center>
				  </div>
				  </a>
				 </div>
				  <div class="text-sm">vision Impairment</div>
	    	</div>
	    	<div class="col-md-2">
	    		<div class="container-card-sm">
				  <a href="hear.jsp">
				  <div class="circle">
				  	<br><br>
				<center><img src="images//deaf.png"></center>
				   
				  </div>
				  </a>
				 </div>
				  <div class="text-sm">deaf or hard of hearing</div>
	    	</div>
	    	<div class="col-md-2">
	    		<div class="container-card-sm">
				  <a href="MoodDisorder.jsp">
				  <div class="circle"><br><br>
				 <center><img src="images//mental.png"></center>
				  
				  </div>
				  </a>
				 </div>
				   <div class="text-sm">mental health conditions</div>
	    	</div>
	    	<div class="col-md-2">
	    		<div class="container-card-sm">
				  <a href="GeneralTestStart.jsp">
				  <div class="circle">
				<br>
				 <center><img src="images//autism.png"></center>				  
				  </div>
				  </a>
				 </div>
				   <div class="text-sm">General Disability </div>
	    	</div>
	    	<div class="col-md-2">
	    		<div class="container-card-sm">
				  <a href="locomotion.jsp">
				  <div class="circle">
				<br><br>
				 <center><img src="images//physical.png"></center>
				   				  </div>
				  </a>
				 </div>
				  <div class="text-sm">physical disability.</div>
	    	</div>
	    	<div class="col-md-1">&nbsp;</div>
	    </div>   
    </div>

    </div></div>
    
</div>


<!-- footer -->
<div class="panel panel-default panel-sm" style="background-color: #040419;">
    <div class="panel-body">
        <div class="col-md-4">
            <header>
                           </header>
            <div class="discription"></div>
           
        </div>
        <div class="col-md-4">
            <header>
               </header>
            <div class="discription"></div>

        </div>
        <div class="col-md-4">
            <header>
              
            </header>
            <div class="discription"></div>
          
        </div>
    </div>
    <div class="panel-footer" style="text-align: center;background-color: #040419;color:white;">
        <button onclick="topFunction()" id="myBtn" title="Go to top" class="btn btn-success">Back to top</button>
        <br>
        <span class="copyright">Copyright Â© 2018</span>
    </div>
</div>

<!-- footer end -->

<script type="text/javascript">
window.onscroll = function() {scrollFunction()};
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>
 
</body>
</html>


