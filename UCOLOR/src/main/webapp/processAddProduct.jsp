<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String filename ="";
	String realFolder ="C:\\jsp-work\\UCOLOR\\src\\main\\webapp\\resources\\images";	//웹 애플리케이션상의 절대 경로
	int maxSize = 5*1024*1024;			//최대 업로드될 파일의 크기
	String enctype = "utf-8";			//인코딩 유형
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, enctype, new DefaultFileRenamePolicy());

	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String peopleNum = multi.getParameter("peopleNum");
	String description = multi.getParameter("description");
	
	Integer price;
	Integer people;
	
	people = Integer.valueOf(peopleNum);
	
	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);
	
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	String sql = "insert into product values(?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	pstmt.setString(2, name);
	pstmt.setInt(3, price);
	pstmt.setInt(4, people);
	pstmt.setString(5, description);
	pstmt.setString(6, fileName);
	pstmt.executeUpdate();
	
	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();
	
	response.sendRedirect("reservation.jsp");
	
%>