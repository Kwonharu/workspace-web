<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PersonDao" %>

<%
	//파라미터 꺼내기 (db 전달해서 삭제할 id값)
	String id = request.getParameter("id");
	int personId = Integer.parseInt(id);
	
	System.out.println(personId);
	
	//personDao의 personDelete() 통해서 지우기
	PersonDao personDao = new PersonDao();
	int count = personDao.personDelete(personId);
	System.out.println(count);
	
	//리스트 출력 --> 리스트 리다이렉트
	response.sendRedirect("./list.jsp");
	
%>
