
<%@include file="header1.jsp" %>
<style>

#regForm {
  background-color:; 
  font-family: Raleway;
  padding: 40px; 
  background-color: white;
}

</style>


<div class="container container-sm border" >
<div class="container" >

<br>
<div style="" id="regForm">
    <div class="row">
    <div class="col-sm-6"><img src="images//level3.jpg" style=""></div>
    
    <div class="col-sm-6" style="color:black">
    <form  action="gmfcs2Controller" method="post">    
    <div class="alert alert-info">
    <h4><p><b>1.Walks with assistive mobility devices indoors and outdoors on level surfaces</b></p>
    <p><input type="radio" name="7" value="Yes" >Yes</p>
    <p><input type="radio" name="7" value="No" > No</p></div>
    <div class="alert alert-info">
    <h4><p><b>2.May be able to climb stairs using a railing</b></p>
    <p><input type="radio" name="8" value="Yes" >Yes</p>
    <p><input type="radio" name="8" value="No" > No</p>
   </div> 
   <div class="alert alert-info">
    <h4> <p><b>3.May propel a manual wheel chair and need assistance for long distances or uneven surfaces</b></p>
    <p><input type="radio" name="9" value="Yes">Yes</p>
    <p><input type="radio" name="9" value="No" > No</p>
    </div><br>
    <button class="button btn btn-danger" type="submit">Submit</button>
    </form>
    </div>
  </div>  
</div> 

<<!--  -->
</div></div>

 <br> 
  <%@include file="footer.jsp" %>