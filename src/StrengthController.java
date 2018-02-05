

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class StrengthController
 */
public class StrengthController extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession();
			float result_sensation=(Float)session.getAttribute("result_sensation");
			float result_prehension=(Float)session.getAttribute("result");
			int flag=3;
			float result_strength=0;
			float total_result=0;
			String grip= request.getParameter("grip");
			if(grip.equalsIgnoreCase("no")){
				result_strength=result_strength+20;
			}
			String Index1= request.getParameter("Pinch");
			if(Index1.equalsIgnoreCase("no")){
				result_strength=result_strength+20;
			}
			total_result=result_strength+result_sensation+result_prehension;
			session.setAttribute("flag",flag);
			session.setAttribute("result_strength",result_strength);
			session.setAttribute("total_result",total_result);
			System.out.println("total result"+total_result);
			response.sendRedirect("result_hand.jsp");
	}

}
