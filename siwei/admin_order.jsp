<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">
			
			<jsp:include page="admin_sidebar.jsp" ></jsp:include>

			<div class="span9">

				<div class="bs-docs-example">

					<legend><strong>订单信息</strong></legend>


				<%--
					<form action="">

						
						<label class="radio inline">商户等级:
							<select name="#" style="width:80px;margin: 0;">
								<option value="#">省级</option>
								<option value="#">市级</option>
								<option value="#">县级</option>
								<option value="#">区级</option>
							</select>
						</label>

						<label class="radio inline">订单状态:
							<select name="#" style="width:80px;margin: 0;">
								<option value="#">确认付款</option>
								<option value="#">等待验证</option>
								<option value="#">确认发货</option>
							</select>
						</label>
					
						<div class="input-append inline" style="vertical-align: middle;margin: 5px 5px 0;">
							<input class="span2" type="text" placeholder="商户名称">
							<button class="btn" type="button">搜索</button>
						</div>
					</form>
					 --%>
				
					<br>

					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>时间/订单号</th>
								<th>商品</th>
								<th>总价</th>
								<th>商户</th>
								<th>订单状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							

							<c:forEach var="list" items="${list}">
							<tr>
								<td><fmt:formatDate value="${list.paydate}" pattern="yyyy/MM/dd  HH:mm:ss"/>/${list.orderno}</td>
								<td>
									摇钱树1号&nbsp;${list.num1}<br>
									摇钱树8号&nbsp;${list.num2}<br>
									摇钱树9号&nbsp;${list.num3}<br>
									摇钱树10号&nbsp;${list.num4}<br>
									总计 <code>${list.num1+list.num2+list.num3+list.num4}</code> 台 
								</td>
								<td>${list.totalprice}</td>
								<td> 
									<c:if test="${list.agency_grade == 1}">
										[省级]
									</c:if>
									<c:if test="${list.agency_grade == 2}">
										[地市级]
									</c:if>
									<c:if test="${list.agency_grade == 3}">
										[县区级]
									</c:if>
									<c:if test="${list.agency_grade == 4}">
										[社区级]
									</c:if>
									&nbsp;${list.realname}
								</td>
								<td>
									<c:if test="${list.status == 1}">
										待付款
									</c:if>
									<c:if test="${list.status == 2}">
										待发货
									</c:if>
									<c:if test="${list.status == 3}">
										待确认收货
									</c:if>
									<c:if test="${list.status == 4}">
										订单完成
									</c:if>
								</td>
								<td>
									<c:if test="${list.status == 1}">
										<a href="/sw_admin_paysuccess.shtml?id=${list.id}" class="btn btn-small btn-success">确认付款</a>
									</c:if>
									<c:if test="${list.status == 2}">
										<a href="/sw_admin_deliver.shtml?id=${list.id}" class="btn btn-small btn-success">确认发货</a>
									</c:if>
								
								</td>
							</tr>
						</c:forEach>
							
						</tbody>
					</table>
					<blockquote>
						<small>注：订单状态分为：待付款，已付款（付款后以经过几天），已发货（发货后已经过几天），已收货 <br>操作对应分为：待验证，请确认付款（开始制作15日左右发货），确认发货，提醒用户收货（7天后自动确认收货），确认收货</small>
					</blockquote>
					

					<br>
					<%-- <div class="pagination">
						<ul>
							<li><a href="#">«</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">»</a></li>
						</ul>
					</div>
					--%>



				</div>

			
			</div>
		</div>
	</div>



<jsp:include page="footer.jsp" ></jsp:include>

