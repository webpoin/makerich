<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">
			
			<jsp:include page="admin_sidebar.jsp" ></jsp:include>

			<div class="span9">

				<div class="bs-docs-example">

					<legend><strong>用户管理</strong></legend>



					<!--<form action="">

						
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

					--><br>

					<table class="table table-bordered table-striped">
						<thead>
						
							<tr>
								<th>商户名称</th>
								<th>编号</th>
								<th>等级</th>
								<th>销售状况（台）</th>
								<th>货款余额（元）</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="list" items="${list}">
							<tr>
								<td>${list.realname}</td>
								<td>--</td>
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
								<td>--台</td>
								<td>${list.balance}</td>
								<td>
									<a href="/sw_admin_business.shtml?id=${list.pid}" class="btn btn-small btn-primary">业务详情</a>
									<a href="/sw_admin_info.shtml?id=${list.pid}" class="btn btn-small btn-info">账户信息</a>

								</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					

					<br>
					<!--<div class="pagination">
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




				--></div>

			
			</div>
		</div>
	</div>



<jsp:include page="footer.jsp" ></jsp:include>

