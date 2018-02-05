
<%@include file="header.jsp" %>
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
    <div class="col-sm-6"><img src="images//law.jpg" style="height:250px;width:250px"></div>
    
    <div class="col-sm-6" style="color:black">
    <form  action="hearing2Controller" method="post">    
    <div class="alert alert-info">
    <h4>3.Are You able to hear this sound?</h4>
    
  <audio controls>
    <source src="audio/2000Hz.wav" type="audio/wav">
      <source src="audio/2000Hz.wav" type="audio/wav">
   </audio>
      <p> <input type="radio" name="3" value="Yes" >Yes</p>
    <p> <input type="radio" name="3" value="No" > No</p><br>
    <button class="button btn btn-danger" type="submit">Submit</button>
    </div>
    </form>
    
    </div>
  </div>  
</div> 

</div></div>

 <br> 