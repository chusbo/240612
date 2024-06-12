<%@page import="jung.DessertRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jung.Dessert" import="jung.DessertRepository" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId=(String) session.getAttribute("sessionId");
%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<style>	
		img
		{width: 25px;}
		.a
		{display: flex; align-items: flex-start;}
        .text
        {margin-top: 10px;}
        .a img
        {margin-right: 2px;}
        .head
        {margin-bottom:10px;}
	</style>
<title>Insert title here</title>
</head>
    <nav class="navbar bg-body-tertiary fixed-top">
 	 <div class="container-fluid">
  
  	 <div class="a">
        <a href="./welcome.jsp"><img src="../resources/images/home.png" alt="Home"></a>
        <h6 class="text"><b>정가당</b></h6>
    </div>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
    
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">정가당</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
        	
        	<c:choose>
        		<c:when test="${empty sessionId }">
        			<li class="nav-item">
        				<a class="nav-link" href="<c:url value="./loginMember.jsp" />">로그인</a></li>
        			<li class="nav-item">
        				<a class="nav-link" href="<c:url value="./addMember.jsp" />">회원가입</a>
        		</c:when>
        		<c:otherwise>
        			<li style="padding-top:7px; color:gray">[<%=sessionId %>님]</li>
        	       	<li class="nav-item">
        	       		<a class="nav-link" href="<c:url value="./logout_process.jsp" />">로그아웃</a></li>
        	       	<li class="nav-item">
        	       		<a class="nav-link" href="<c:url value="./updateMember.jsp" />">회원수정</a></li>
        	       	<li class="nav-item">
        	       		<a class="nav-link" href="<c:url value="./deleteMember.jsp" />">회원탈퇴</a></li>            	       	
        	    </c:otherwise>
			</c:choose>
			
			<br>
          <li class="nav-item">
            <a class="nav-link" href="http://localhost:8085/junggadang/junggadang/sell.jsp">디저트 목록</a>
          </li>
          <li class="nav-item">
          	<a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1" />">게시판</a>
          </li>
          <br>
          <br>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              관리자 메뉴
            </a>
            <ul class="dropdown-menu">
              <li>
           	  	<a class="nav-link" href="./addsell.jsp">제품 등록</a>
              </li>
              <li>
            	<a class="nav-link" href="./editDessert.jsp?edit=update">제품 수정</a>
              </li>
              <li>
          		<a class="nav-link" href="./editDessert.jsp?edit=delete">제품 삭제</a>
              </li>
            </ul>
          </li>
        </ul>
        <form class="d-flex mt-3" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </div>
</nav>
</body>
</html>