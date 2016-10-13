<%@page import="com.bit2016.emaillist.dao.EmailListDao"%>
<%@page import="com.bit2016.emaillist.vo.EmailListVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");
	
	EmailListVo vo = new EmailListVo();
	vo.setEmail(email);
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	
	EmailListDao dao = new EmailListDao();
	dao.insert(vo);
	
	//redirect
	response.sendRedirect("/emaillist/index.jsp");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공적으로 등록되었습니다.</h1>
	
</body>
</html>
