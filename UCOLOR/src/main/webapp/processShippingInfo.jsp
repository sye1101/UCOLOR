<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("UTF-8");

	Cookie cartId = new Cookie("Reservation_cartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8"));
	Cookie name = new Cookie("Reservation_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
	Cookie date = new Cookie("Reservation_date", URLEncoder.encode(request.getParameter("date"), "utf-8"));
	Cookie time = new Cookie("Reservation_time",URLEncoder.encode(request.getParameter("time"), "utf-8"));
	Cookie phone = new Cookie("Reservation_phone",	URLEncoder.encode(request.getParameter("phone"), "utf-8"));	
	
	cartId.setMaxAge(24 * 60 * 60);
	name.setMaxAge(24 * 60 * 60);
	date.setMaxAge(24 * 60 * 60);
	time.setMaxAge(24 * 60 * 60);
	phone.setMaxAge(24 * 60 * 60);

	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(date);
	response.addCookie(time);
	response.addCookie(phone);
	
	response.sendRedirect("orderConfirmation.jsp");
%>

