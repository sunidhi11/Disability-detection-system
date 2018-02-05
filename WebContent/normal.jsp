
<%@ include file="header.jsp" %>
 <div class="container container-sm border" style="">
	  <div class="container" >
	  <header class="container announcement-sm" style="text-align: center;">
	  <h1>General Disability Test</h1>
	  </header>
 <hr>
 
<div class="panel-group" id="accordian">
<div class="well">
  <% String userName=request.getParameter("userName");
  String age=request.getParameter("age");
  System.out.println("name is"+userName);
  session.setAttribute("userName",userName);
  session.setAttribute("age",age);
  %>
  <form action="NormalController" method="post">
  
  <div class="alert alert-info">
     <table class="table" style="color: black;">
     <tr >
        <td>1.compared with other children,does or did<%=session.getAttribute("userName")%>  have any serious delay in sitting,standing,or walking?
        </td>
        <td style="float:right;"><input type="radio" name="optradio1" value="Yes">Yes
           <input type="radio" name="optradio1" value="No">No</td>
      </tr></table>
   </div>
    
      <div class="alert alert-info">
      <table class="table" style="color: black;"><tr >
        <td>2 does/did he/she can talk normally or express his/her feelings?</td>
        <td style="float:right;"><input type="radio" name="optradio2" value="Yes">Yes
           <input type="radio" name="optradio2" value="No">No</td>        
      </tr></table>
     </div>
     
     <div class="alert alert-info">
         <table class="table" style="color: black;">    <tr>
        <td>3.compared with other children,does he/she difficulty seeing ,either in the day time or at night?</td>
        <td style="float:right;"><input type="radio" name="optradio3" value="Yes">Yes
           <input type="radio" name="optradio3" value="No">No</td>        
      </tr></table>
     </div>
     
     <div class="alert alert-info">
         <table class="table" style="color: black;">  <tr >
        <td>4.does he/she appear to have difficulty hearing ?</td>
        <td style="float:right;"><input type="radio" name="optradio4" value="Yes">Yes
           <input type="radio" name="optradio4" value="No">No</td>        
      </tr></table>
     </div>
     
     <div class="alert alert-info" style="color: black;">
        <table class="table">   <tr>
        <td>5.when you tell he/she to do something,does he/she seem to understand what you are saying?</td>
        <td style="float:right;"><input type="radio" name="optradio5" value="Yes">Yes
           <input type="radio" name="optradio5" value="No">No</td>        
      </tr>
      </table>
     </div>
     
     <div class="alert alert-info">
     <table class="table" style="color: black;"> <tr>
        <td>6.does he/she have difficulty in walking or moving his/her arms or does he/she have weakness and/or does he/she have weakness and/or <br>stiffness in the arm or legs ?</td>
        <td style="float:right;">
           <input type="radio" name="optradio6" value="Yes">Yes
           <input type="radio" name="optradio6" value="No">No           
       </td>        
      </tr ></table>
     </div>
     
     <div class="alert alert-info">    
      <table class="table" style="color: black;"> <tr >
        <td>7.does he/she somtimes have fits,become rigid,or lose consciousness?</td>
        <td style="float:right;">
           <input type="radio" name="optradio7" value="Yes">Yes
           <input type="radio" name="optradio7" value="No">No           
       </td>        
      </tr></table>
      </div>
      
     <div class="alert alert-info">   
     <table  class="table" style="color: black;"> <tr>      
        <td>8.does he/she learn to do things like other children his/her age?</td>
          <td style="float:right;">
           <input type="radio" name="optradio8" value="Yes">Yes
           <input type="radio" name="optradio8" value="No">No
           
       </td>
       </tr></table></div>
       
       <div class="alert alert-info">   
     <table  class="table" style="color: black;"> <tr>      
        <td>9.does he/she make him or herself understood in words;can say recognizable words)?</td>
          <td style="float:right;">
           <input type="radio" name="optradio9" value="Yes">Yes
           <input type="radio" name="optradio9" value="No">No
           
       </td>
       </tr></table></div>
       
       
       <div class="alert alert-info">   
     <table  class="table" style="color: black;"> <tr>      
        <td>10.(for 3-9 year olds):is his/her speech in any way different from normal(not clear enough to be understood by people other than the immediate family)?</td>
          <td style="float:right;">
           <input type="radio" name="optradio10" value="Yes">Yes
           <input type="radio" name="optradio10" value="No">No
           
       </td>
       </tr></table></div>
       
       <div class="alert alert-info">   
     <table  class="table" style="color: black;"> <tr>      
        <td>11.compared with other children of the same age,does[name] appear in any way mentally backward,dull or slow?</td>
          <td style="float:right;">
           <input type="radio" name="optradio11" value="Yes">Yes
           <input type="radio" name="optradio11" value="No">No
           
       </td>
       </tr></table></div>
       
       <table width="100%">
  <tr><td><br><br><input type="reset" value="reset" ></td>
  
  <td><br><br><input type="submit" value="submit" ></td></tr>
  </table>
       
     
  </form>
</div>
</div>
</div>

</div>
</body>
</html>