<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 

<jsp:include page="header.jsp" ></jsp:include>



<div class="branch">
	<h1>入口选择</h1>
	
	<c:if test="${user_type eq '1'}">
		<a href="/sw_user_index.shtml"><img src="/images/branch_siwei.png" alt=""></a>
		<a href="/cf_user_index.shtml"><img src="/images/branch_cloud.png" alt=""></a>
	</c:if>
	
	<c:if test="${user_type eq '2'}">
		<a href="/sw_user_index.shtml"><img src="/images/branch_siwei.png" alt=""></a>
		<a href="/cf_user_index.shtml"><img src="/images/branch_cloud.png" alt=""></a>
	</c:if>
	
	<c:if test="${user_type eq '3'}">
		<a href="/sw_admin_index.shtml"><img src="/images/branch_siwei.png" alt=""></a>
		<a href="/cf_admin_index.shtml"><img src="/images/branch_cloud.png" alt=""></a>
	</c:if>
	
</div>






<jsp:include page="footer.jsp" ></jsp:include>