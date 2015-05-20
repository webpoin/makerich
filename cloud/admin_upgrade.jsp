<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">

			<jsp:include page="admin_sidebar.jsp" ></jsp:include>

			<div class="span9">

				<div class="bs-docs-example">
					<legend><strong>基础运营商 职级升级申请</strong></legend>

				
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
								<th>姓名</th>
								<th>总业绩</th>
								<th>职位等级</th>
								<th style="width:220px">操作</th>
							</tr>
						</thead>
						<tbody>
						 <tr><td colspan="5"><div class="alert alert-block">建设中</div></td></tr>
						<!--
							<tr>
								<td>2015-03-20 18:30</td>
								<td>张三</td>
								<td><code>30000</code> 元</td>
								<td>专员</td>
								<td>
									<a href="admin_base_business.jsp" class="btn btn-small btn-primary">业绩统计</a>
									<a href="admin_base_info.jsp" class="btn btn-small btn-info">账户信息</a>
									<a href="#" class="btn btn-small btn-warning" onclick="return confirm('确定通过审核吗？')">通过审核</a>
								</td>
							</tr>
						  -->	
						</tbody>
					</table>

					<br>
					<!--
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
 				 -->

				</div>

			
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" ></jsp:include>