<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">
			
			<jsp:include page="admin_sidebar.jsp" ></jsp:include>

			<div class="span9">

				<div class="bs-docs-example">

					<legend><strong>销售统计</strong></legend>

					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>代理等级</th>
								<th>直接销售数量</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><span class="text-error">省级</span></dd>
								<td>300 台</td>
							</tr>
							<tr>
								<td><span class="text-warning">市级</span></dd>
								<td>300 台</td>
							</tr>
							<tr>
								<td><span class="text-info">县级</span></dd>
								<td>300 台</td>
							</tr>
							<tr>
								<td><span class="text-success">区级</span></dd>
								<td>300 台</td>
							</tr>

							
						</tbody>
					</table>
				




				</div>

			
			</div>
		</div>
	</div>



<jsp:include page="footer.jsp" ></jsp:include>

