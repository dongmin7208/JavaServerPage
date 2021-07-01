package simplesurvey.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import simplesurvey.actions.CmdAction;

public class SurveyController extends HttpServlet{
	
	private Map<String, Object> cmdMap = new HashMap<String, Object>();
	
	@Override
	public void init() throws ServletException {
		super.init();
		String props = getInitParameter("property");
		Properties pr = new Properties();
		FileInputStream f = null;
		String path = getServletContext().getRealPath("/WEB-INF");
		try{
			f = new FileInputStream(new File(path, props));
			pr.load(f);
		}catch(IOException e){
			e.printStackTrace();
		}finally{
			if(f != null) {
				try{
					f.close(); 
				}catch(IOException e){
					e.printStackTrace();
				}
			}
		}
		Iterator<Object> cmdkey = pr.keySet().iterator();
		while(cmdkey.hasNext()){
			String cmd = (String)cmdkey.next();
			String className = pr.getProperty(cmd);
			try{
				Class<?> cmdClass = Class.forName(className);
				Object cmdInstance = cmdClass.newInstance();
				System.out.println(cmd+"::"+cmdInstance);
				cmdMap.put(cmd, cmdInstance);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException{
		System.out.println("GET요청:" + request.getRequestURI());
		requestPro(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		System.out.println("POST요청:" + request.getRequestURI());
		requestPro(request, response);
	}
	private void requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String view = null;
		CmdAction ca = null;
		try{
			String cmd = request.getRequestURI();
			if(cmd.indexOf(request.getContextPath()) == 0){
				cmd = cmd.substring(request.getContextPath().length());
			}
			ca = (CmdAction)cmdMap.get(cmd);
			view = ca.requestProc(request, response);
			System.out.println(cmd + " -> view:" + view);
		}catch(Throwable e){
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}
}