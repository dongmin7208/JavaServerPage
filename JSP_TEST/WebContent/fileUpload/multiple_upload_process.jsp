<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.Enumeration"%>
<html>
<head><title>전송결과</title></head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");
        String savePath = "/fileUpload/upload";
        int uploadFileSizeLimit = 5 * 1024 * 1024;
        String encType = "UTF-8";
        ServletContext context = getServletContext();
        String uploadFilePath = context.getRealPath(savePath);
        try {
            MultipartRequest multi = new MultipartRequest(
            		request, uploadFilePath,
            		uploadFileSizeLimit, encType, 
            		new DefaultFileRenamePolicy());
            Enumeration files = multi.getFileNames();
            while (files.hasMoreElements()) {
                String file = (String) files.nextElement();
                String file_name = multi.getFilesystemName(file);
                String ori_file_name = multi.getOriginalFileName(file);
                out.print("<br> 업로드된 파일명 : " + file_name);
                out.print("<br> 원본 파일명 : " + ori_file_name);
                out.print("<hr>");
            }
        } // try 
        catch (Exception e) { System.out.print("예외 발생 : " + e); } // catch
    %>
</body>
</html>