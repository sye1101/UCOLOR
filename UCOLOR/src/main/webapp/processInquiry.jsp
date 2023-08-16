<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("UTF-8");

	Cookie name = new Cookie("Reservation_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
	Cookie phone = new Cookie("Reservation_phone",	URLEncoder.encode(request.getParameter("phone"), "utf-8"));	
	
	name.setMaxAge(24 * 60 * 60);
	phone.setMaxAge(24 * 60 * 60);

	response.addCookie(name);
	response.addCookie(phone);

	response.sendRedirect("reservationConfirmation.jsp");
%>

