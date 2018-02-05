<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

<div class="container">
<div class="btn-group">
  <button type="button" class="btn btn-primary"> HAND COMPONENT </button>
   </div>
  
 <ul class="nav nav-tabs">
  <li
  <% if(session.getAttribute("result")==null) { %>
   class="active"<%}if(session.getAttribute("flag")!=null){
	  	int flag= (Integer)session.getAttribute("flag");
	  	if(flag==0){
   %>
   class="active"<%}} %>>
  <a data-toggle="tab" href="#home">Prehension </a></li>
 <li <%
   if(session.getAttribute("flag")!=null) {
	  	int flag= (Integer)session.getAttribute("flag");
  if(flag==1){%>class="active"<%}}%>>
  <a data-toggle="tab" href="#menu1">Sensation</a></li>
  
  <li <%
   if(session.getAttribute("flag")!=null) {
	  	int flag= (Integer)session.getAttribute("flag");
  if(flag==1){%>class="active"<%}}%>>
  <a data-toggle="tab" href="#menu2"> Strength </a></li>
</ul>

<div class="tab-content">
  <div id="home" 
     <%if(session.getAttribute("flag")!=null) {
	  	int flag= (Integer)session.getAttribute("flag");
   if(flag==0){%>class="tab-pane fade in active" <%}if(flag!=0){%> class="tab-pane fade"<%}}%>
    <%if(session.getAttribute("flag")==null){%>class="tab-pane fade in active"<%}%>
    >

    <h3>PREHENSION</h3>
    <div class="well">   
    <form action="locomotionController" method="post">
   <div class="alert alert-info">
   <table class="table">
  <th rowspan="4" class="secTab">
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Opposition</button>
  <div id="demo" class="collapse col-sm-3">
    Is it opposing your motion?
  </div>
  <!-- <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Opposition</button>
  <div id="demo" class="collapse">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
  </div> -->
   
  Tested against</th>
    <td class="secTab"> Index finger</td><td class="secTab">
  <input type="radio" name="index" value="YES" > YES
  <input type="radio" name="index" value="NO"> NO<br>  
   </td></tr>

    <tr><td class="secTab"> Middle finger</td><td class="secTab">
  <input type="radio" name="middle" value="YES" > YES
  <input type="radio" name="middle" value="NO"> NO<br>   
    </td></tr> 
    <tr><td class="secTab">Ring finger</td><td class="secTab">
  <input type="radio" name="ring" value="YES" > YES
  <input type="radio" name="ring" value="NO"> NO<br>  
   </td></tr>
    <tr><td class="secTab"> Little finger </td><td class="secTab">
  <input type="radio" name="little" value="YES" > YES
  <input type="radio" name="little"value="NO"> NO<br>  
   </td></tr>    
</table>
</div>  
    
  <div class="alert alert-info">
  <table class="table">
  <tr>
   <th class="secTab">Lateral pinch <br>Can u hold a key between the thumb and lateral side of index
finger.</th>
  <td>
  <input type="radio" name="lateral" value="YES"> YES
  <input type="radio" name="lateral" value="NO"> NO<br>  
</td></tr>
  </table>
</div>  

  <div class="alert alert-info">
  <table class="table">
 <th rowspan="3" class="secTab">
   <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo1">Cylindrical grasp</button>
  <div id="demo1" class="collapse col-sm-3">
    Test your grasp disability by taking any Cylindrical object.
  </div>
<!--  Cylindrical grasp --></td></th>
    <tr><td class="secTab">Large object of approx  4 inches</td><td class="secTab">
  <input type="radio" name="cylindricalLarge" value="YES" > YES
  <input type="radio" name="cylindricalLarge" value="NO"> NO<br>  
  </td></tr> 
    <tr><td class="secTab">Small object of 1-2 inch size</td><td class="secTab">
  <input type="radio" name="cylindricalSmall" value="YES" > YES
  <input type="radio" name="cylindricalSmall" value="NO"> NO<br>  
  </td></tr>
  </table>
</div>  


   <div class="alert alert-info">
  <table class="table">
  <th rowspan="3" class="secTab">
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo2">Spherical grasp</button>
  <div id="demo2" class="collapse col-sm-3">
    Test your grasp disability by taking any spherical object.
  </div>
  <!-- Spherical grasp --></td></th>
    
    <tr><td class="secTab">Large object of approx  4 inches</td><td class="secTab">
    <input type="radio" name="Sphericallarge" value="YES" > YES
  <input type="radio" name="Sphericallarge" value="NO"> NO<br></td></tr>
   
    <tr><td class="secTab">Small object of 1-2 inch size</td><td class="secTab">
    <input type="radio" name="Sphericalsmall" value="YES" > YES
  <input type="radio" name="Sphericalsmall" value="NO"> NO<br></td></tr>
  </table>
  </div>


  
   <div class="alert alert-info">
  <table class="table">
 <tr> <th>Hook grasp </th>
  <td class="secTab">Can you lift a bag without any problem</td><td class="secTab">
  <input type="radio" name="Hook" value="YES"> YES
  <input type="radio" name="Hook" value="NO"> NO<br>  
  </td></tr> 
  <tr>
    
   
  </table>
  </div>
  <table width="100%">
  <tr><td><br><br><input type="reset" value="reset" ></td>
  
  <td><br><br><input type="submit" value="next" ></td></tr>
  </table>
   </form>
  <!--  <tr>
  <td></td> -->
 
 </div>  </div>
  
  <div id="menu1"
   <%if(session.getAttribute("flag")!=null) {
	  	int flag= (Integer)session.getAttribute("flag");
   if(flag==1){%>class="tab-pane fade in active"<%}if(flag!=1){%> class="tab-pane fade"<%}}%>
    <%if(session.getAttribute("flag")==null){%>class="tab-pane fade"<%}%>
    > 
 <!--  <div id="menu1" class="tab-pane fade"> -->
  
    <h2>SENSATION</h2>
   <div class="alert alert-info">
   <h3>Do you feel complete loss of sensation  </h3>
   <form action="SensationController" method = "post">
  <table class="table">
      <tr><td> Thumb ray </td>
   <td> <input type="radio" name="Thumb1" value="YES" > YES
  <input type="radio" name="Thumb1" value="NO"> NO<br></td></tr>
   
    <tr><td>Index finger </td> <td>
    <input type="radio" name="Index1" value="YES" > YES
  <input type="radio" name="Index1" value="feYES"> NO<br></td></tr>
  
   <tr><td>Middle finger  </td> <td>
    <input type="radio" name="Middle1" value="YES" > YES
  <input type="radio" name="Middle1" value="NO"> NO<br></td></tr>
   <tr><td>Ring finger  </td> <td>
    <input type="radio" name="Ring1" value="YES" > YES
  <input type="radio" name="Ring1" value="NO"> NO<br></td></tr>
  <tr><td>Little finger</td> <td>
    <input type="radio" name="Little1" value="YES" > YES
  <input type="radio" name="Little1" value="NO"> NO<br></td></tr>
  </table>
   <table width="100%">
  <tr><td><br><br><input type="reset" value="reset" ></td>
  
  <td><br><br><input type="submit" value="next" ></td></tr>
  </table>
<!--   <button class="button btn btn-danger" type="submit">Submit</button>
 -->  
  </form>
  </div>
  </div>
  
    <div id="menu2"
  <%if(session.getAttribute("flag")!=null) {
	  	int flag= (Integer)session.getAttribute("flag");
   if(flag==2){%>class="tab-pane fade in active"<%}if(flag!=2){%> class="tab-pane fade"<%}}%>
    <%if(session.getAttribute("flag")==null){%>class="tab-pane fade"<%}%>
  >
  <!-- <div id="menu2" class="tab-pane fade"> -->
    <h2>STRENGTH</h2>
   <div class="alert alert-info">
   <h3>Do you feel you have enough strength to</h3>
   <form action="StrengthController" method="post">
  <table class="table">
      <tr><td> Grip</td>
   <td> <input type="radio" name="grip" value="YES" > YES
  <input type="radio" name="grip" value="NO"> NO<br></td></tr>
   
    <tr><td>Pinch </td> <td>
    <input type="radio" name="Pinch" value="YES" > YES
  <input type="radio" name="Pinch" value="NO"> NO<br></td></tr>
  <tr><td> <button class="button btn btn-danger" type="submit">Submit</button></td></tr>
     </table>
     <table width="100%">
  <tr><td><br><br><input type="reset" value="reset" ></td>
  
  <td><br><br><input type="submit" value="submit" ></td></tr>
  </table>
     </form>
  </div>
  </div>
</div>
</div>