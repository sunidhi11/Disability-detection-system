
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
    <div class="col-sm-6"><img src="images//level2.jpg" style=""></div>
    
    <div class="col-sm-6" style="color:black">
    <form  action="gmfcs1Controller" method="post">    
    <div class="alert alert-info">
    <h4>1.Can climb stairs with a railing</h4>
    <p><input type="radio" name="4" value="Yes">Yes</p>
    <p><input type="radio" name="4" value="No"> No</p></div>
    <div class="alert alert-info">
    <h4>2. Has difficulty with uneven surfaces,inclines or in crowds</h4>
    <p><input type="radio" name="5" value="Yes"  >Yes</p>
    <p><input type="radio" name="5" value="No"> No</p>
   </div> 
   <div class="alert alert-info">
    <h4>3. Has only minimal ability to run or jump</h4>
    <p><input type="radio" name="6" value="Yes">Yes</p>
    <p><input type="radio" name="6" value="No"> No</p>
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