package quizzy;

import java.io.*;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class quizcheck
 */
@WebServlet("/quizcheck")
public class quizcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quizcheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		if(session.getAttribute("LUN")==null){
			response.sendRedirect("loginquiz.jsp");
		}
		
		PrintWriter pw= response.getWriter();
		response.setContentType("text/html");
		
		int sizeArray=(int) session.getAttribute("Size");
		String[] input=new String[(int) sizeArray];
			
		for (int i = 0; i < sizeArray; i++) {
				input[i] = request.getParameter("ques"+(i+1));
			}
		
//		ArrayList<String> input = new ArrayList<String>();
//		for (int i = 0; i < sizeArray; i++) {
//			input.add(request.getParameter("ques"+(i+1)));
//		}
		
		int marks=0;
		quizclass objQ = new quizclass();
		marks = objQ.anscheck(input, sizeArray);
		
		pw.println(marks);
		
		 
	}

}
