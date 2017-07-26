package com.javaex.email;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaex.dao.EmaillistDao;
import com.javaex.vo.EmaillistVo;


@WebServlet("/el")
public class Emaillistservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String actionName=request.getParameter("a");//action의 a를 넣어줌
		
		if("form".equals(actionName)) {
			RequestDispatcher rd=request.getRequestDispatcher("form.jsp");
			rd.forward(request, response);
			
			System.out.println("form출력");
			
		}else if("insert".equals(actionName)) {
			System.out.println("저장관련");
			
			String firstName=request.getParameter("fn");				
			String lastName=request.getParameter("ln");
			String email=request.getParameter("email");
			
			EmaillistVo vo=new EmaillistVo(firstName,lastName,email);//dao에 세개짜리 있나 확인
			
			EmaillistDao dao=new EmaillistDao();
			dao.insert(vo);
			
			response.sendRedirect("/emaillist.2/el");//리스트쪽으로 가겠지
			
			
			
		}else {
			System.out.println("기본값 리스트");
			
			EmaillistDao dao=new EmaillistDao();
			List<EmaillistVo>list=dao.getlist();
			
			request.setAttribute("list", list);//리스트 얹어줌
			RequestDispatcher rd=request.getRequestDispatcher("list.jsp");
			rd.forward(request, response);
			
			System.out.println(list.toString());
			
			
		}
		
		
		/*System.out.println(actionName);*///브라우저에 http://localhost:8088/emaillist.2/el?a=form라고 쓰면 form출력
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
