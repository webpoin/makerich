<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>创富管理系统</title>
	<link href="/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" href="/css/style.css">
</head>
<body>

	<div class="navbar navbar-inverse">
		<div class="navbar-inner">
			<div class="container">

				<a class="brand" href="/index.shtml"> <img src="/images/logo.png" style="width:36px;margin-right:10px;" >摇乾树云创富管理系统</a>
				<div class="nav-collapse collapse">
					<p class="navbar-text pull-right">
						<c:if test="${!empty phone}" ><i class="icon-user icon-white"></i> ${phone }，<a href="user_logout.shtml" class="navbar-link">退出</a></c:if>
						<c:if test="${empty phone}" ><a href="index.shtml" class="navbar-link">登录</a></c:if>
					</p>
				</div><!--/.nav-collapse -->
			</div>
		</div>
	</div>