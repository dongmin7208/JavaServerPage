<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 전송 폼</title>
</head>
<body>
	<form action="upload_process.jsp" method="post"
		enctype="multipart/form-data">
		글쓴이 : <input type="text" name="name">
		<p>
			제 &nbsp; 목 : <input type="text" name="title">
		<p>
			파일 선택 : <input type="file" name="uploadFile">
		<p>
			<input type="submit" value="전송">
		</form>
</body>
</html>