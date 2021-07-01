package simplesurvey.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SurveyMain implements CmdAction{

	@Override
	public String requestProc(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		return "/WEB-INF/survey/surveyMain.jsp";
	}

}
