<%@include file="header.jsp" %>
<%@page import="java.util.*" %> 
<style>
.img1{
height:200px;
width:200px;
}
</style>


      
       <div class="container container-sm border" style="">
	  <div class="container" >
	  <header class="container announcement-sm" style="text-align: center;">
	  <h1>RESULT</h1>
	  </header>
 <hr>
 
<div class="panel-group" id="accordian">
<div class="well">
      <div class="row">
  <div class="col-sm-4 panel-body"><div ><h3><img src="images//mycat.gif" class="img1"></div></div>
  <div class="col-sm-6 well">
 
  <!-- <img  src="images//excellent.png"> -->
   <p style="color:red">Name:&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("userName")%></p>
   <p style="color:red">AGE:&nbsp;&nbsp;&nbsp;&nbsp;<%=session.getAttribute("age")%></p> 
   
   <h3 style="text-align:center;"><b>Generated Result</b></h3>
      <p style="color:blue;text-align:center;">We found the possibility of having following disabilities</p>
   
   <hr>
   <%if(session.getAttribute("list")!=null){ %>
    <ul>
    <%ArrayList<String> list=(ArrayList<String>)session.getAttribute("list");
    for(String item:list){ %>
   <li style="color:red;"><%=item%>&nbsp;&nbsp;&nbsp;&nbsp;<a href="locomotion.jsp"style="color:black;text-decoration:underline;">Know More</a></li>
   <%}}%>
   </ul>
      

    <br>
</div>
   </div>  
     <div class="row">
  <div class="col-sm-6 well">
   <h4 style="text-align:center;"><b> Precautions</b></h4>
   <ul>
   <li></li>
   </ul>
   </div>
  <div class="col-sm-6 well"><h4 style="text-align:center;"><b>Suggestions</b></h4>
   <ul>
   <li></li>
   </ul>
   </div> </div>


      </div>
      
    
    </div>
      </div>
  
</div>
