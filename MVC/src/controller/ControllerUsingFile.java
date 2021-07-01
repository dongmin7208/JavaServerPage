package controller;

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

import cmd.CommandHandler;
import cmd.NullHandler;

public class ControllerUsingFile extends HttpServlet {
	private Map<String, CommandHandler> CommandHandlerMap =
			new HashMap<String, CommandHandler>();
	
	public void init() throws ServletException{
		String configFile = getInitParameter("configFile");
		Properties property = new Properties();
		FileInputStream fis = null;
		try {
			String configFilePath =
					getServletContext().getRealPath(configFile);
			fis = new FileInputStream(configFilePath);
			property.load(fis);
		}catch (IOException e) {
			throw new ServletException(e);
		}finally {
			if(fis != null) {
				try {
					fis.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		Iterator keyIt = property.keySet().iterator();
		while(keyIt.hasNext()) {
			String command = (String)keyIt.next();
			String handlerClassName =
					property.getProperty(command);
			try {
				Class<?> handlerClass =
				Class.forName(handlerClassName);
				
				CommandHandler handlerInstance =
				(CommandHandler) handlerClass.newInstance();
				
				CommandHandlerMap.put(
						command, handlerInstance);
			}catch(ClassNotFoundException e) {
				throw new ServletException(e);
			}catch(InstantiationException e) {
				throw new ServletException(e);
			}catch(IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String command = request.getParameter("cmd");
		CommandHandler handler = CommandHandlerMap.get(command);
		if(handler == null) {
			handler = new NullHandler();
		}
		String viewPage = null;
		try {
			viewPage = handler.process(request, response);
		} catch(Throwable e) {
			throw new ServletException(e);
		}
		
		RequestDispatcher dispatcher =
				request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
