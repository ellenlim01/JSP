package cm.koreait.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/write")
public class BoardWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("data", Database.list);//서블릿에서 jsp로 값 전달하는 방법(값 넣는 방법) request.setAttribute(키값, 밸류값); 값 뺴는 방법 request.getAttribute(키값);
		
		String jsp = "/WEB-INF/jsp/write.jsp";
		request.getRequestDispatcher(jsp).forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");//client(브라우저)에서 서버쪽으로 넘어온 것은 무조건 request.getParameter(키값); 사용 
		String ctnt = request.getParameter("ctnt");
		
		BoardVO vo = new BoardVO();
		vo.setTitle(title);
		vo.setCtnt(ctnt);
		
		Database.list.add(vo);
		
		//윗 줄 풀어쓴 것
		//List<BoardVO> refList = Database.list;
		//refList.add(vo);
		
		response.sendRedirect("/list");//GET 방식으로 주소 이동
	}

}
