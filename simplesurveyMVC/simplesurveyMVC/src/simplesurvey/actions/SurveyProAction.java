package simplesurvey.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import simplesurvey.SurveyDao;
import simplesurvey.SurveyDto;

public class SurveyProAction implements CmdAction{

	@Override
	public String requestProc(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		int salary = Integer.parseInt(request.getParameter("salary"));
		int salarydesired = Integer.parseInt(request.getParameter("salarydesired"));
		
		SurveyDto dto = new SurveyDto();
		dto.setAge(age);
		dto.setGender(gender);
		dto.setSalary(salary);
		dto.setSalarydesired(salarydesired);
		
		SurveyDao dao = SurveyDao.getInstance();
		dao.insert(dto); 
		return "/WEB-INF/survey/surveyProc.jsp";
	}
	
}
