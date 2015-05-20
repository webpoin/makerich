<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">

			<jsp:include page="admin_sidebar.jsp" ></jsp:include>


			<div class="span9">

				<div class="bs-docs-example">
					<legend><strong>区域代理商管理</strong></legend>
				
				<%--
					<form action="">
						<label class="radio inline"><input type="radio" value="option1">公司名称</label>
						<label class="radio inline"><input type="radio" value="option1">身份证号</label>
						<label class="radio inline"><input type="radio" value="option1">电话号码</label>
						<label class="radio inline"><input type="radio" value="option1">地址</label>
						<label class="radio inline"><input type="radio" value="option1">其他</label>

						<div class="input-append inline" style="vertical-align: middle;margin: 5px 5px 0;">
							<input class="span2" type="text">
							<button class="btn" type="button">搜索</button>
						</div>
					</form>
				 --%>
					<table class="table table-bordered table-striped">
						<colgroup>
							<col class="span1">
							<col class="span4">
							<col class="span1">
							<col class="span3">
						</colgroup>
						<thead>
							<tr>
								<th>公司名称</th>
								<th>联系方式</th>
								<th>代理等级</th>
								<th>代理区域</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="list" items="${list}" varStatus="status">
							<tr>
								<td>${list.company_name }</td>
								<td>${list.phone }</td>
								<td>
									<c:if test="${list.agency_grade eq '1'}">省级代理</c:if>
									<c:if test="${list.agency_grade eq '2'}">市级代理</c:if>
									<c:if test="${list.agency_grade eq '3'}">省级代理</c:if>
									<c:if test="${list.agency_grade eq '4'}">社区代理</c:if>
								</td>
								<td>
									<c:if test="${list.agency_grade eq '1'}">${list.province}</c:if>
									<c:if test="${list.agency_grade eq '2'}">${list.province}${list.city}</c:if>
									<c:if test="${list.agency_grade eq '3'}">${list.province}${list.city}${list.county}</c:if>
									<c:if test="${list.agency_grade eq '4'}">${list.province}${list.city}${list.county}${list.address}</c:if>
								</td>
								<td>
									<a href="/cf_admin_company_tgtotal.shtml?uid=${list.uid }" class="btn btn-small btn-primary">业绩统计</a>
									<a href="/cf_admin_company_tglist.shtml?uid=${list.uid }" class="btn btn-small btn-success">查看明细</a>
									<a href="/cf_admin_company_message.shtml?uid=${list.uid }" class="btn btn-small btn-info">账户信息</a>
								</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>

					<br>
				<%--<div class="pagination">
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