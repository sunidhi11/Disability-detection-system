<%@include file="header.jsp" %>
<style>
.img1{
height:200px;
width:200px;
}
</style>

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
       You have<%=session.getAttribute("level1MSG") %>
    </h3>  <% } %> 
    
    <% if(session.getAttribute("level2MSG")!=null && ((Integer)(session.getAttribute("flag"))==2)) {
    %>
    <br>
    
 <h3>  You have <%=session.getAttribute("level2MSG")%>
    </h3>  <% } %> 
    
     <% if(session.getAttribute("level3MSG")!=null && ((Integer)(session.getAttribute("flag"))==3)) {
    %>
    <br>
    
 <h3>  You have <%=session.getAttribute("level3MSG")%> 
    </h3>  <% } %> 
    
    
     <% if(session.getAttribute("level4MSG")!=null && ((Integer)(session.getAttribute("flag"))==4)) {
    %>
    <br>
    
 <h3>  You have <%=session.getAttribute("level4MSG")%> 
    </h3>  <% } %> 
    
    
     <% if(session.getAttribute("level4MSG")!=null && ((Integer)(session.getAttribute("flag"))==5)) {
      int percentage = 90;
    %>
    <br>
 
 <h3>  You have <%=session.getAttribute("level4MSG")%> 
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

 </div>
      </div>
    
    </div>
      </div>
  
