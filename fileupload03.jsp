<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>File Upload</title>
</head>
<body>
    <form name="fileForm" method="post" enctype="multipart/form-data"
    action="fileupload03_process.jsp">
        <p> 파일 : <input type="file" name="filename">
        <p> <input type="submit" value="파일 올리기">
    </form>
</body>
</html>