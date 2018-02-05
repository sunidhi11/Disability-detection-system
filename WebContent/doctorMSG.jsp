<%@include file="header1.jsp"%>
  


<%String email=request.getParameter("email");
DoctorDao dao=sis.com.dao.daofactory.DaoFactory.getDoctorDao();
System.out.println("*********"+email);
Doctor doctor= dao.getDoctorById(email);
%>
<div class="container container-sm border" >
<div class="container" >
<div class="panel panel-primary" style="text-align: center">
      <div class="panel-heading" style="font-family: cooper">
      <h1> CONSULT TO DOCTOR </h1>            
      </div>
      <div><br><br>
      <table class="table" >

      <tr>
        <th>NAME</th> <td><%=doctor.getName()%></td></tr>
       <tr> <th>CONTACT</th><td><%=doctor.getContact()%></td> </tr>
        <tr> <th>EMAIL</th><td><%=doctor.getEmail()%></td> </tr>
       <tr> <th>ADDRESS</th><td><%=doctor.getAddress()%></td></tr>
        <tr><th>YEAR OF EXPERIENCE <td><%=doctor.getExperience()%></td></th>
        <tr><th>Specilalist <td><%=doctor.getFiled()%></td></th>
      </tr>
  <% String emailmy= doctor.getEmail();%>
        </table>
        <div class="alert alert-info">
        <%session.setAttribute("emailID",emailmy); %>
          <form action="queryEmailController" method="post">
        Leave a Query  : <textarea type="text" name="query"  required></textarea>
                       <input type="submit" value="submit">
          </form>
        </div>
                
           </div>
      </div>
      
      <!--END  -->
</div></div>
  <%@include file="footer.jsp" %>