
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
    <div class="col-sm-6"><img src="images//level4.jpg" style=""></div>
    
    <div class="col-sm-6" style="color:black">
    <form  action="gmfcs3Controller" method="post">    
    <div class="alert alert-info">
    <h4> <p><b> 1.Has physical impairments that
restrict voluntary control of movement</b></p>
    <p><input type="radio" name="10" value="Yes" >Yes</p>
    <p><input type="radio" name="10" value="No" > No</p></div>
    <div class="alert alert-info">
    <h4> <p><b>2. Ability to maintain head and neck
position against gravity restricted</b></p>
    <p><input type="radio" name="11" value="Yes" >Yes</p>
    <p><input type="radio" name="11" value="No" > No</p>
   </div> 
   <div class="alert alert-info">
    <h4> <p><b>3. Cannot sit or stand independently,
even with adaptive equipment</b></p>
    <p><input type="radio" name="12" value="Yes">Yes</p>
    <p><input type="radio" name="12" value="No" > No</p>
    </div>
    
    <div class="alert alert-info">
    <h4> <p><b> Cannot independently walk but may
be able to use powered mobility</b></p>
    <p><input type="radio" name="13" value="Yes">Yes</p>
    <p><input type="radio" name="13" value="No" > No</p>
    </div>
   
    <br>
    <button class="button btn btn-danger" type="submit">Submit</button>
    </form>
    </div>
  </div>  
</div> 

<<!--  -->
</div></div>

 <br> 
  <%@include file="footer.jsp" %>