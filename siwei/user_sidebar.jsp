<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<div class="span3">
	<ul class="nav nav-tabs nav-stacked aside">
		<li class="nav-tabs-header"><a href="">导航菜单</a></li>
		<li><a href="/sw_user_to_apply.shtml"><i class="icon-chevron-right"></i>加盟申请</a></li>
		<li><a href="/sw_user_index.shtml"><i class="icon-chevron-right"></i>商品介绍</a></li>
		<li><a href="/get_userinfo_siwei.shtml"><i class="icon-chevron-right"></i>商户信息</a></li>
		<c:if test="${apply_state eq 2}">
		<li><a href="/sw_to_user_order_manager.shtml"><i class="icon-chevron-right"></i>订单管理</a></li>
		</c:if>
		<c:if test="${apply_state eq 2}">
		<li><a href="/sw_to_user_order_list.shtml"><i class="icon-chevron-right"></i>产品订购</a></li>
		</c:if>
		<li><a href="/sw_to_user_profit.shtml"><i class="icon-chevron-right"></i>收益详情</a></li>
		<li><a href="/sw_to_agency_system.shtml"><i class="icon-chevron-right"></i>代理体系</a></li>
	</ul>
</div>
