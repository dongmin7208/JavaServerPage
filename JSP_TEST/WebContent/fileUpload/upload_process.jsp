<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<html>

<head>
<title>업로드 처리</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String savePath = "/fileUpload/upload";
	int uploadFileSizeLimit = 5 * 1024 * 1024;
	String encType = "UTF-8";
	
	ServletContext context = getServletContext();
	String uploadFilePath = context.getRealPath(savePath);
	System.out.println("서버상의 실제 디렉터리");
	System.out.println(uploadFilePath);
	try{
		MultipartRequest multi = new MultipartRequest(
				request,
				uploadFilePath,
				uploadFileSizeLimit,
				encType,
				new DefaultFileRenamePolicy());
		String fileName = multi.getFilesystemName("uploadFile");
		if(fileName == null){
			System.out.print("파일 업로드 실패");
		}
		else{
			out.println("<br> 글쓴이 : " + multi.getParameter("name"));
			out.println("<br> 제 &nbsp; 목 : " + multi.getParameter("title"));
			out.println("<br> 파일명 : " + fileName);
		}
	}catch(Exception e){
		System.out.print("예외 발생 : " + e);
		e.printStackTrace();
	}
%>

</body>
</html>