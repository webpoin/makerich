<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">

			<jsp:include page="admin_sidebar.jsp" ></jsp:include>



			<div class="span9">

				<div class="bs-docs-example">


					<ul class="nav nav-tabs tabcut">
						<li><a href="/sw_admin_business.shtml?id=${list.pid}">业务详情</a></li>
						<li class="active"><a href="/sw_admin_info.shtml?id=${list.pid}">账户信息</a></li>
						<li><a href="/sw_to_admin_edit.shtml?id=${list.pid}">修改信息</a></li>
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
								<td>张三电子科技</td>
							</tr>

							<tr>
								<td>代理等级：</td>
								<td>
									<c:if test="${list.agency_grade == 1}">
										省级
									</c:if>
									<c:if test="${list.agency_grade == 2}">
										地市级
									</c:if>
									<c:if test="${list.agency_grade == 3}">
										县区级
									</c:if>
									<c:if test="${list.agency_grade == 4}">
										社区级
									</c:if>
									</td>
							</tr>
							
							<tr>
								<td>登录账号：</td>
								<td>${list.acount }</td>
							</tr>
								
							<!-- 
							<tr>
								<td>营业执照号：</td>
								<td>45***************18</td>
							</tr>
							 -->
							
							<tr>
								<td>联系电话：</td>
								<td>${list.phone }</td>
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
								<td>录入时间：</td>
								<td>${list.regdate}</td>
							</tr>


							<tr>
								<td>推荐人：</td>
								<td>${person }</td>
							</tr>

						</tbody>
					</table>

				
				</div>

			
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" ></jsp:include>