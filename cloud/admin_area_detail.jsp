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
						<li class="active"><a href="/cf_admin_company_tglist.shtml?uid=${person_date.uid }">查看明细</a></li>
						<li><a href="/cf_admin_company_message.shtml?uid=${person_date.uid }">账户信息</a></li>
						<li><a href="/cf_admin_company_update.shtml?uid=${person_date.uid }">修改信息</a></li>
					</ul>


					<br>
					<table class="table table-bordered table-striped">
						<colgroup>
							<col class="span1">
							<col class="span6">
							<col class="span1">
							<col class="span1">
						</colgroup>
						<thead>
							<tr>
								<th>时间</th>
								<th>收入金额</th>
								<th>类型</th>
								<th>描述</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${list}" varStatus="status">
								<tr>
									<td><fmt:formatDate value="${list.sysdate }" pattern="yyyy/MM/dd  HH:mm:ss"/></td>
									<td><span class="label label-info">${list.money }</span> 元</td>
									<td>
										<c:if test="${list.type eq '1'}">基础运营商推广</c:if>
										<c:if test="${list.type eq '2'}">区域代理推广</c:if>
									</td>
									<td>奖励${list.money }元/家</td>
								</tr>
							</c:forEach>
							
						</tbody>
					</table>

					<br>
					<div class="pagination">
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


				</div>

			
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" ></jsp:include>