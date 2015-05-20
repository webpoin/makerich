<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<div class="span3">
	<ul class="nav nav-tabs nav-stacked aside">
		<li class="nav-tabs-header"><a href="">导航菜单</a></li>
		<li><a href="cf_user_index.shtml"><i class="icon-chevron-right"></i>业绩能力</a></li>
		<%--<li><a href="cf_user_month.shtml"><i class="icon-chevron-right"></i>月度收益</a></li> --%>
		<li><a href="cf_user_account.shtml"><i class="icon-chevron-right"></i>收账明细</a></li>
		<li><a href="cf_user_projects.shtml"><i class="icon-chevron-right"></i>获利项目</a></li>
		<c:if test="${user_type eq '1'}"><li><a href="cf_personal_info.shtml"><i class="icon-chevron-right"></i>个人信息</a></li></c:if>
		<c:if test="${user_type eq '2'}"><li><a href="cf_company_info.shtml"><i class="icon-chevron-right"></i>企业信息</a></li></c:if>
	</ul>
</div>
