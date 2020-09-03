<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<spring:url var="jquery" value="/resources/jquery" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Online Shopping - ${title}</title>

  <!-- Bootstrap core CSS -->
  <link href="${css}/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="${css}/shop-homepage.css" rel="stylesheet">

</head>

<body>
<div class="content">
  <!-- Navigation -->
<%@include file = "./shared/navbar.jsp" %>
  <!-- Page Content -->
<div>Online Shopping - ${userClickAbout} ${userClickHome} ${userClickContact}</div>
  <!-- /.container -->
 <c:if test="${userClickHome == true}">
<%@include file = "home.jsp" %>
</c:if>
<!-- Load only when user clicks about -->
 <c:if test="${userClickAbout == true}">
<%@include file = "about.jsp" %>
</c:if>
<!-- Load only when user clicks about -->
 <c:if test="${userClickContact == true}"></c:if>
<%@include file = "contact.jsp" %>

<c:if test="${userClickAll == Products == true or userClickCategoryProducts == true}">
<%@include file = "listProducts.jsp" %>
</c:if>
  <!-- Footer -->
<%@include file = "./shared/footer.jsp" %>
  <!-- Bootstrap core JavaScript -->
  <script src="${jquery}/jquery.min.js"></script>
  <script src="${js}/bootstrap.bundle.min.js"></script>
</div>
</body>

</html>
