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
					<legend>
						<a href="/cf_admin_area.shtml" class="btn btn-small btn-info" style="float:right";>查看个人申请</a>
						<strong>基础运营商 职级升级申请</strong>
						
					</legend>

					<table class="table table-bordered table-striped">
						<colgroup>
							<col class="span1">
							<col class="span4">
							<col class="span1">
							<col class="span3">
						</colgroup>
						<thead>
							<tr>
								<th>申请时间</th>
								<th>公司名称</th>
								<th>客户类型</th>
								<th>联系方式</th>
								<th style="width:150px">操作</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="list" items="${list}" varStatus="status">
							<tr>
								<td><fmt:formatDate value="${list.apply_date }" pattern="yyyy/MM/dd  HH:mm:ss"/></td>
								<td>${list.company_name }</td>
								<td>企业用户</td>
								<td>${list.phone }</td>
								<td>
									<a href="/cf_admin_details_agency.shtml?id=${list.id }" class="btn btn-small btn-info">账户信息</a>
									<a href="/cf_addmin_pass_agency.shtml?id=${list.id }" class="btn btn-primary btn-small" onclick="return confirm('确定通过审核？')">通过审核</a>
								</td>
							</tr>
						</c:forEach>
							
						</tbody>
					</table>

					<br>
				<%--
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
 				--%>

				</div>

			
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" ></jsp:include>