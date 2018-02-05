<%@include file="header.jsp" %>
<style>
.img1{
height:200px;
width:200px;
}
</style>

 <div class="container container-sm border" style="">
	  <div class="container" >
	  <header class="container announcement-sm" style="text-align: center;">
	  <h1>Hand Disability Result</h1>
	  </header>
 <hr>
       <div class="row">
  <div class="col-sm-4 panel-body"><div ><h3><img src="images//mycat.gif" class="img1"></div></div>
  <div class="col-sm-6 well">
 
  <!-- <img  src="images//excellent.png"> -->
   <% if(session.getAttribute("total_result")!=null) {
      float percentage = ((Float)(session.getAttribute("total_result")));
    %>
    <br>
   
   
   <h3 style="text-align:center;"><b>Generated Result</b></h3>
     
   <hr>
   <div class="progress">
  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"
  aria-valuenow="<%=percentage%>" aria-valuemin="0" aria-valuemax="100" style="width:<%=percentage%>%">
    <%=percentage%>
  </div>
</div>
 <h3>  You have <%=percentage%> % Disability 
    </h3>  <% } %> 
      

    <br>
</div>
   </div>  
     <div class="row">
  <div class="col-sm-6 well">
   <h4 style="text-align:center;"><b> Precautions</b></h4>
   <ul>
    <li>Avoiding exposure to infections or viruses known to impact fetal health</li>
<li> Controlling underlying health issues, such as blood pressure, diabetes, etc.</li>
<li>Avoiding alcohol, cigarettes and prescription drugs known to pose risks</li>
   
   </ul>
   </div>
  <div class="col-sm-6 well"><h4 style="text-align:center;"><b>Suggestions</b></h4>
   <ul>
   <li></li>
   </ul>
   </div>

    </div>
      </div>
  
