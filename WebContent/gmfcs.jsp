
<%@include file="header1.jsp" %>
<style>

#regForm {
  background-color:; 
  font-family: Raleway;
  padding: 40px; 
  background-color: white;
}

</style>
<body>

<div class="container container-sm border" >
<div class="container" >

<br>
  
 <div style="" id="regForm">
    <div class="row">
    <div class="col-sm-6"><img src="images//level1.jpg" style=""></div>
    
    <div class="col-sm-6" style="color:black">
    <form  action="gmfcsController" method="post">    
    <div class="alert alert-info">
    <h4>1.Can walk indoors and outdoors and
    climb stairs without using hands for
    support</h4>
    <p> <input type="radio" name="1" value="Yes" >Yes</p>
    <p> <input type="radio" name="1" value="No" > No</p></div>
    <div class="alert alert-info">
    <h4>2.Can perform usual activities such as
running and jumping
</h4>
    <p> <input type="radio" name="2" value="Yes" >Yes</p>
    <p> <input type="radio" name="2" value="No" > No</p>
   </div> 
   <div class="alert alert-info">
    <h4>3. Has decreased speed, balance and
coordination</h4>
    <p> <input type="radio" name="3" value="Yes">Yes</p>
    <p> <input type="radio" name="3" value="No" > No </p>
    </div><br>
    <button class="button btn btn-danger" type="submit">Submit</button>
    </form>
    </div>
  </div>  
</div> 

<<!--  -->
</div></div>

 <br> 
  <!-- One "tab" for each step in the form: -->
 
  <%@include file="footer.jsp" %>
