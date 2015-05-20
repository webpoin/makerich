<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">

			<jsp:include page="admin_sidebar.jsp" ></jsp:include>


			<div class="span9">

				<div class="bs-docs-example">
					<ul class="nav nav-tabs tabcut">
						<li class="active"><a href="/sw_admin_business.shtml?id=${list.pid}">业务详情</a></li>
						<li><a href="/sw_admin_info.shtml?id=${list.pid}">账户信息</a></li>
						<li><a href="/sw_to_admin_edit.shtml?id=${list.pid}">修改信息</a></li>
					</ul>

					<br>

					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th style="width:200px">项目</th>
								<th>成绩</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>代理等级</td>
								<td><strong><code> 
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
								 </code></strong></td>
							</tr>
							<tr>
								<td>代理地区：
								</td>
								<td>
									<c:if test="${list.agency_grade == 1}">
										${list.province }
									</c:if>
									<c:if test="${list.agency_grade == 2}">
										${list.province }${list.city }
									</c:if>
									<c:if test="${list.agency_grade == 3}">
										${list.province }${list.city }${list.county }
									</c:if>
									<c:if test="${list.agency_grade == 4}">
										${list.province }${list.city }${list.county }${list.address }
									</c:if>
								</td>
							</tr>

							<tr>
								<td>业务总收入：
								</td><td><b class="text-info" style="font-size:20px">--</b> 元</td>
							</tr>


							<tr>
								<td>刷卡分润</td>
								<td><code>--</code> 元</td>
							</tr>

							<tr>
								<td>消费分润</td>
								<td><code>--</code> 元</td>
							</tr>

							<tr>
								<td>销售分润</td>
								<td><code>--</code> 元</td>
							</tr>

							<tr>
								<td>储配补贴</td>
								<td><code>--</code> 元</td>
							</tr>

							<tr>
								<td>股权配送</td>
								<td><code>--</code> 元</td>
							</tr>

							<tr>
								<td>年化收益</td>
								<td><code>--</code> 元</td>
							</tr>


							<tr>
								<td>招募基础运营商数量</td>
								<td>--人</td>
							</tr>
							<tr>
								<td>签约企业客户</td>
								<td>--个</td>
							</tr>
							<tr>
								<td>签约个人客户</td>
								<td>--人</td>
							</tr>
							<tr>
								<td>会员卡销售</td>
								<td>-- 张</td>
							</tr>
							
							<tr>
								<td>培训等级：
								</td><td>--级</td>
							</tr>
							

						</tbody>
					</table>

					

				</div>

			
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" ></jsp:include>