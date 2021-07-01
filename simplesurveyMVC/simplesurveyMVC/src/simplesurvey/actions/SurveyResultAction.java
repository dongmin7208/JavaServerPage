package simplesurvey.actions;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import simplesurvey.SurveyDao;
import simplesurvey.SurveyDto;

public class SurveyResultAction implements CmdAction{

	@Override
	public String requestProc(HttpServletRequest request, HttpServletResponse response) throws Throwable {
			SurveyDao dao = SurveyDao.getInstance();
			ArrayList<SurveyDto> ret = dao.getSurveyAll();

			request.setAttribute("result", ret);
			
			return "/WEB-INF/survey/surveyResult.jsp";
	}

}
