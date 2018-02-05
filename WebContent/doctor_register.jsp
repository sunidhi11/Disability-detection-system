<%@include file="header1.jsp"%>

<div class="container container-sm border" >
<div class="container" >
<div class="panel panel-primary" style="text-align: center">
      <div class="panel-heading" style="font-family: cooper">
      <h1>REGISTER HERE</h1></div>
      <div>
      <form action="DoctorRegistrationController" method="post">
      <table class="table">
     <tr> <td>NAME </td><td> <input type="text" name="name" class="form-control" required></td></tr>
     <tr> <td>  CONTACT</td><td>  <input type="text" name="contact" class="form-control" required></td></tr>
      <tr> <td>  EMAIL </td><td> <input type="text" name="email" class="form-control" required></td></tr>
      <tr> <td>  ADDRESS </td><td> <input type="text" name="address" class="form-control" required></td></tr>
     <tr> <td>   SPECIFICATION </td><td> <input type="text" name="field" class="form-control" required> </td></tr>
     <tr> <td>    YEAR OF EXPERIENCE</td><td> <input type="text" name="experience" class="form-control" required></td></tr>
        <tr> <td><input type="submit" value="submit"></td></tr>
      </table>
      </form>
      </div>  
      </div>
      
      <!--END  -->
</div></div>
  <%@include file="footer.jsp" %>