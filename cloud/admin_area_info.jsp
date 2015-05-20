<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">

			<jsp:include page="admin_sidebar.jsp" ></jsp:include>



			<div class="span9">

				<div class="bs-docs-example">


					<ul class="nav nav-tabs tabcut">
						<li><a href="/cf_admin_company_tgtotal.shtml?uid=${person_date.uid }">业务详情</a></li>
						<li><a href="/cf_admin_company_tglist.shtml?uid=${person_date.uid }">查看明细</a></li>
						<li class="active"><a href="/cf_admin_company_message.shtml?uid=${person_date.uid }">账户信息</a></li>
						<li><a href="/cf_admin_company_update.shtml?uid=${person_date.uid }">修改信息</a></li>
					</ul>

					<br>
					<table class="table table-bordered table-striped">
						<colgroup>
							<col class="span1">
							<col class="span8">
						</colgroup>
						
						<tbody>
							
							<tr>
								<td>业务类型：</td>
								<td>区域代理</td>
							</tr>

							<tr>
								<td>推广资源码：</td>
								<td>${list.sigen }</td>
							</tr>
							
							<tr>
								<td>公司名称：</td>
								<td>${list.company_name }</td>
							</tr>

							<tr>
								<td>代理等级：</td>
								<td>
									<c:if test="${list.agency_grade eq 1}">省级</c:if>
									<c:if test="${list.agency_grade eq 2}">市级</c:if>
									<c:if test="${list.agency_grade eq 3}">县级</c:if>
									<c:if test="${list.agency_grade eq 4}">社区</c:if>
								</td>
							</tr>
							
							<tr>
								<td>登录账号：</td>
								<td>${list.user_phone }</td>
							</tr>
								
							
							<tr>
								<td>营业执照号：</td>
								<td>${list.business_license}</td>
							</tr>

							
							<tr>
								<td>联系电话：</td>
								<td>${list.touch_phone }</td>
							</tr>
								
							
							<tr>
								<td>联系邮箱：</td>
								<td>${list.email }</td>
							</tr>

							
							<tr>
								<td>联系地址：</td>
								<td>${list.province }${list.city }${list.county }${list.address }</td>
							</tr>


							
							<tr>
								<td>申请时间：</td>
								<td><fmt:formatDate value="${list.apply_date }" pattern="yyyy/MM/dd  HH:mm:ss"/></td>
							</tr>



						</tbody>
					</table>

				
				</div>

			
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" ></jsp:include>