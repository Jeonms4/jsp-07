<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File upload</title>
</head>
<body>

<form action="fileupload01_process.jsp" enctype="multipart/form-data" method="post">
<p>파일 : <input type="file" name="file1">
<p><input type="submit" value="파일 업로드">
</form>

</body>
</html>