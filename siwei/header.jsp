<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%><!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>四维创富管理系统</title>
	<link href="/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="/css/style.css">
</head>
<body>

	<div class="navbar navbar-inverse">
		<div class="navbar-inner">
			<div class="container">

				<a class="brand" href="/index.shtml"> <img src="/images/logo.png" style="width:36px;margin-right:10px;" >摇乾树 · 四维创富管理系统</a>
				<div class="nav-collapse collapse">
				<c:if test="${fn:length(phone) > 0}">
					<p class="navbar-text pull-right"><i class="icon-user icon-white"></i> ${phone} <a href="/user_logout.shtml" class="navbar-link">退出</a></p>
				</c:if>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>