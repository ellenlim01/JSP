package com.korait.board2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/list")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<BoardVO> list = Database.db;
		request.setAttribute("list", list);
		
		String jsp = "/WEB-INF/jsp/list.jsp";
		request.getRequestDispatcher(jsp).forward(request, response);//get 방식: 화면 띄우는 역할이 큼
	}

}
