<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">

			<jsp:include page="admin_sidebar.jsp" ></jsp:include>


			<div class="span9">

				<div class="bs-docs-example">

					<ul class="nav nav-tabs tabcut">
						<li class="active"><a href="/cf_admin_personal_tgtotal.shtml?uid=${person_date.uid }">业务详情</a></li>
						<li><a href="/cf_admin_personal_tglist.shtml?uid=${person_date.uid }">查看明细</a></li>
						<li><a href="/cf_admin_personal_message.shtml?uid=${person_date.uid }">账户信息</a></li>
						<li><a href="/cf_admin_personal_update.shtml?uid=${person_date.uid }">修改信息</a></li>
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
								<td>职称等级</td>
								<td><strong><code> 
									<c:if test="${person_date.fundation_grade eq '1'}">总监</c:if>
									<c:if test="${person_date.fundation_grade eq '2'}">经理</c:if>
									<c:if test="${person_date.fundation_grade eq '3'}">总管</c:if>
									<c:if test="${person_date.fundation_grade eq '4'}">专员</c:if>
								 </code></strong></td>
							</tr>


							<tr>
								<td>业务总收入：
								</td><td><b class="text-info" style="font-size:20px">
									<c:if test="${!empty date_list.total_money}">${date_list.total_money}</c:if>
									<c:if test="${empty date_list.total_money}">0</c:if>
								</b> 元</td>
							</tr>
							<tr>
								<td>招募基础运营商数量</td>
								<td>
									<c:if test="${!empty date_list.total1}">${date_list.total1}</c:if>
									<c:if test="${empty date_list.total1}">0</c:if>
								人</td>
							</tr>
							<tr>
								<td>招募区域代理数量</td>
								<td>
									<c:if test="${!empty date_list.total2}">${date_list.total2}</c:if>
									<c:if test="${empty date_list.total2}">0</c:if>
								人</td>
							</tr>
							
							<tr>
								<td>会员卡销售</td>
								<td>-----张</td>
							</tr>
							
							<tr>
								<td>培训等级：
								</td><td>中级</td>
							</tr>
							<tr>
								<td>服务地区：
								</td><td>${person_date.province }${person_date.city }${person_date.county }${person_date.address }</td>
							</tr>

						</tbody>
					</table>

					

				</div>

			
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" ></jsp:include>