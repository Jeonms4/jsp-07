<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload</title>
</head>
<body>

<%
DiskFileUpload upload = new DiskFileUpload();
List list = upload.parseRequest(request);
Iterator data = list.iterator();
File file = null;
FileItem fileitem = null;

while(data.hasNext()){
	fileitem = (FileItem)data.next();
	if(!fileitem.isFormField()){
		String filename = fileitem.getName();
		filename = filename.substring(filename.lastIndexOf("\\")+1);
		file = new File("C:\\Users\\지형\\eclipse-workspace\\JSPBook\\WebContent\\ch07\\upload\\" + filename);
		
		fileitem.write(file);
	}
}
%>
<p> 요청 파라미터 이름 : <%= fileitem.getFieldName() %>
<p> 저장 파일 이름 : <%= fileitem.getName() %>
<p> 파일 콘텐츠 유형 : <%= fileitem.getContentType() %>
<p> 파일 크기 : <%= file.length() %>

</body>
</html>