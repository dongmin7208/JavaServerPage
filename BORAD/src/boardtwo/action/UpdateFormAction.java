package boardtwo.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boardtwo.model.BoardDao;
import boardtwo.model.BoardDto;

public class UpdateFormAction implements CommandAction {
		public String requestPro(
				HttpServletRequest request,
				HttpServletResponse response) throws Throwable{
			int num = Integer.parseInt(request.getParameter("num"));
			String pageNum = request.getParameter("pageNum");
			BoardDao dbPro = BoardDao.getInstance();
			BoardDto article = dbPro.updateGetArticle(num);
			
			//뷰에서 사용할 속성
			request.setAttribute("pageNum", new Integer(pageNum));
			request.setAttribute("article", article);
			
			return "/boardtwo/updateForm.jsp"; //보여줄 뷰 경로
		}
}
