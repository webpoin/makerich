<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">

			<jsp:include page="user_sidebar.jsp" ></jsp:include>


			<div class="span9">

				<div class="bs-docs-example">
				<%--
					<legend><strong>本月收益</strong></legend>
					<blockquote><p>月度收益统计，默认显示本月的收入，其他月份请选择日期查询。</p></blockquote>

					
					<br>


					<form action="" style="margin-bottom: 0px;">
						<span style="display: inline-block;vertical-align: 4px;margin-right:5px;">选择日期：</span>
						<div class="input-append" style="display: inline-block;">
							<input class="span2" id="appendedInputButton" type="text" placeholder="请点击选择月份">
							<button class="btn" type="button">查询</button>
						</div>
					</form> 

					<div class="alert alert-success">您当前的职称等级是 <strong>专员</strong>，
						 本月您的收益总额为 <strong><code style="font-size:20px;">56800</code></strong> 元。</div>
					--%>
					<table class="table table-bordered table-striped">
						<thead>
							<%--<tr>
								<th>收入项</th>
								<th>数量</th>
								<th>收入总额(2015.4.01-2015.4.30)</th>
							</tr>
							 --%>
						</thead>
						<tbody>
						<div class="alert alert-block">建设中</div>
						<%--
							<tr>
								<td><span class="label">招商</span> 基础运营商</td>
								<td>0</td>
								<td><span class="label label-warning">0</span> 元</td>
							</tr>
						 --%>
						</tbody>
					</table>






					<br>
					<p class="muted">更多收益项目请点击查看 <a href="projects.html">获利项目</a>；
						如需查看收入详情，请点击查看 <a href="detail.html">收账明细</a>。
					</p>


				</div>

			
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" ></jsp:include>