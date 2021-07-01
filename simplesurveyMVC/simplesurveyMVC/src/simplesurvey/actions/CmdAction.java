package simplesurvey.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CmdAction {
	public String requestProc(
			HttpServletRequest request, 
			HttpServletResponse response) throws Throwable;
}
