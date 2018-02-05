<%@include file="header1.jsp" %>
<style>
.img1{
height:200px;
width:200px;
}
</style>
<%if(session.getAttribute("queryResponse")!=null){
	%> <div class="alert alert-info">
	<h3>EMAIL HAS BEEN SENT SUCCESSFULLY </h3>
	</div>
	<% session.removeAttribute("queryResponse");
} %>
<div class="container container-sm border" >
<div class="container" >

<div class="panel panel-primary" style="text-align: center">
      <div class="panel-heading" style="font-family: cooper">
      <h1> RESULT </h1>
      </div>
      <div class="row">
  <div class="col-sm-4 panel-body"><div ><h3><img src="images//result.gif" class="img1"></div></div>
  <div class="col-sm-6">
  
  <%if(session.getAttribute("level1MSG")!=null && ((Integer)(session.getAttribute("flag"))==1) ){%>
 <h3> <img  src="images//excellent.png">
   CONGRATULATIONS <br><br>
       You have no major disability.
    </h3>  <% } %> 
    
    <% if(session.getAttribute("level2MSG")!=null && ((Integer)(session.getAttribute("flag"))==2)) {
      int percentage = ((Integer)(session.getAttribute("level2MSG")));
    %>
    <br>
    <div class="progress">
  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"
  aria-valuenow="<%=percentage%>" aria-valuemin="0" aria-valuemax="100" style="width:<%=percentage%>%">
    <%=percentage%>
  </div>
</div>
 <h3>  You have <%=percentage%> % Disability 
    </h3>  <% } %> 
    
     <% if(session.getAttribute("level3MSG")!=null && ((Integer)(session.getAttribute("flag"))==3)) {
      int percentage = ((Integer)(session.getAttribute("level3MSG")));
    %>
    <br>
    <div class="progress">
  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"
  aria-valuenow="<%=percentage%>" aria-valuemin="0" aria-valuemax="100" style="width:<%=percentage%>%">
    <%=percentage%>
  </div>
</div>
 <h3>  You have <%=percentage%> % Disability 
    </h3>  <% } %> 
    
    
     <% if(session.getAttribute("level4MSG")!=null && ((Integer)(session.getAttribute("flag"))==4)) {
      int percentage = ((Integer)(session.getAttribute("level4MSG")));
    %>
    <br>
    <div class="progress">
  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"
  aria-valuenow="<%=percentage%>" aria-valuemin="0" aria-valuemax="100" style="width:<%=percentage%>%">
    <%=percentage%>
  </div>
</div>
 <h3>  You have <%=percentage%> % Disability 
    </h3>  <% } %> 
    
    
     <% if(session.getAttribute("level4MSG")!=null && ((Integer)(session.getAttribute("flag"))==5)) {
      int percentage = 90;
    %>
    <br>
    <div class="progress">
  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"
  aria-valuenow="<%=percentage%>" aria-valuemin="0" aria-valuemax="100" style="width:<%=percentage%>%">
    <%=percentage%>
  </div>
</div>
 <h3>  You have <%=percentage%> % Disability 
    </h3>  <% } %>
   <br> <hr>
     <div class="row">
  <div class="col-sm-5 alert alert-info">
   <h4 style="color:black"> Precautions</h4>
   <ul>
   <li>Avoiding exposure to infections or viruses known to impact fetal health</li>
<li> Controlling underlying health issues, such as blood pressure, diabetes, etc.</li>
<li>Avoiding alcohol, cigarettes and prescription drugs known to pose risks</li>
   </ul>
   </div>
  <div class="col-sm-5 alert alert-info" Style="margin-left: 10px;"><h4 style="color:black">Remedy</h4>
   <ul>
   <li>Optimize mobility</li>
<li>Manage primary conditions</li>
 <li>Control pain </li>
  <li>Maximize independence</li>
<li>Enhance social and peer interactions</li>
 <li>Maximize learning potential</li><br>
  &nbsp;<br>
  &nbsp;
   </ul>
   </div> </div>
     <div class="col-sm-5 alert alert-info" Style="margin-left: 10px;"><h4 style="color:black">You can consult to these doctor.</h4>
    <!--  <form action="showDcotorController" method="get">
     <input type="hidden" name="field" value="physical">
     <input type="submit" name="show" value="show">
     </form> -->
   <% DoctorDao dao=sis.com.dao.daofactory.DaoFactory.getDoctorDao();
   List<Doctor> doctorlist= dao.getAllDoctor("physical");
   for(Doctor doctor:doctorlist){%>
	   <a href='doctorMSG.jsp?email=<%=doctor.getEmail()%>'> <li><%=doctor.getName()%> </li></a>  
  <%}

%>      

   
   <ul>
<br>
  &nbsp;<br>
 
   </ul>
   </div>
   

 </div>
      </div>
    
    </div>
      </div>
  

  <%@include file="footer.jsp" %>