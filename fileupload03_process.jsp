<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String fileUploadPath = "C:\\upload";
	
		DiskFileUpload upload = new DiskFileUpload();
	
		List item = upload.parseRequest(request);
		
		Iterator params = item.iterator();
		
		while(params.hasNext()) {
			FileItem fileItem = (FileItem)params.next();
			if(!fileItem.isFormField()) {
				String fileName = fileItem.getName();
				fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
				File file = new File(fileUploadPath + "/"+fileName);
				fileItem.write(file);
			}
		}
	%>
</body>
</html>