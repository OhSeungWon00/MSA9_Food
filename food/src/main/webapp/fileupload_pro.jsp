<%@page import="java.util.UUID"%>
<%@page import="food.DTO.Files"%>
<%@page import="food.Service.FileServiceImpl"%>
<%@page import="food.Service.FileService"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 	String searchname = request.getParameter("brandname"); // 여기 문제있어요
// 	System.out.println("PK1 : " + searchname);
	/* searchname = "호식이"; */
// 	request.setAttribute("searchname", searchname);
	
	String path = "C:\\UPLOAD";

	DiskFileUpload upload = new DiskFileUpload();
	
	upload.setSizeMax(10*1000*1000); 		// 10MB - 파일 최대 크기
	upload.setSizeThreshold( 4 * 1024 );	// 4MB	- 메모리상의 최대 크기
	upload.setRepositoryPath(path);			// 임시 저장 경로
	
	List<FileItem> items = upload.parseRequest(request);
	Iterator params = items.iterator();
	
	String brandname = "";
	String brandId = "";
	String searchname = "";
	
	while( params.hasNext() ) {
		FileItem item = (FileItem) params.next();
		// 일반 데이터 (텍스트)
		if( item.isFormField() ) {
			String name = item.getFieldName();
			String value = item.getString("utf-8");
			out.println(name + " : " + value + "<br>");
			if(name.equals("brandname")) {
				brandname = value;
				searchname = brandname;
				System.out.print("brandname : " + brandname);
			}
			if(name.equals("brandId")) {
				brandId = value;
			}
		}
		// 파일 데이터
		else {
			String fileFieldName = item.getFieldName();
			String fileName = item.getName();
			String contentType = item.getContentType();
			
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			long fileSize = item.getSize();
			
			File file = new File(path+ "/" + fileName);
			item.write(file);
			
			// DB 에 파일 데이터 등록
			Files uploadFile  =  new Files();
			uploadFile.setId( UUID.randomUUID().toString() );
			uploadFile.setPTable("brand");
			uploadFile.setPNo(Long.parseLong( brandId ));
			uploadFile.setFileType("MAIN");
			uploadFile.setFileName(fileName);
			uploadFile.setFilePath(path + File.separator  + fileName);
			uploadFile.setFileSize(fileSize);
			
			FileService fileService = new FileServiceImpl();
			fileService.upload(uploadFile);
			
			out.println("-------------------------------------------------- <br>");
			out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
			out.println("저장 파일 이름: " + fileName + "<br>");
			out.println("파일 컨텐츠 타입 : " + contentType + "<br>");
			out.println("파일 크기 : " + fileSize + "<br>");
			
//			System.out.println("searchname : " + searchname);
// 			System.out.println("PK2 : " + searchname);
			
 			response.sendRedirect("updateBrand_pro.jsp?searchname=" + URLEncoder.encode(searchname, "UTF-8"));
		}
	}
// 	out.write("이름: " + paramName + "<br>");
// 	out.write("제목: " + paramTitle + "<br>");
%>





