<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">
			
			<jsp:include page="user_sidebar.jsp" ></jsp:include>

			<div class="span9">

				<div class="bs-docs-example">

					<legend><strong>收益详情</strong></legend>




					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>代理级别</th>
								<th>县区级</th>
								<th>备注说明</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>总销售量</td>
								<td>----台</td>
								<td></td>
							</tr>
							<tr>
								<td>直推终端差价利润</td>
								<td>---元</td>
								<td>价差利润=零售价-结算价+开通奖</td>
							</tr>
							<tr>
								<td>直推终端手续费分利润</td>
								<td>---元</td>
								<td>按直推商户刷卡支付总金额计算（6元/万）</td>
							</tr>
							<tr>
								<td>直推摇乾树（A8手机）开通奖</td>
								<td>---元</td>
								<td>按结算价计算：（完成注册奖励7%/使用一次支付后奖励9%）</td>
							</tr>
							<tr>
								<td>拓展代理奖</td>
								<td>---元</td>
								<td>按直接拓展代理商合同成交金额计算奖励（10%）<a href="#myModal" class="btn-link" data-toggle="modal">查看直属拓展商</a></td>
							</tr>
							<tr>
								<td>辖区销售奖</td>
								<td>---元</td>
								<td>按辖区(扣除直推)销售（开通）总金额计算奖励比例（积分2%）</td>
							</tr>
							<tr>
								<td>辖区消费返佣奖</td>
								<td>---元</td>
								<td>按辖区（扣除直推）商户消费反佣总金额计算奖励（积分1%）</td>
							</tr>
							<tr>
								<td>辖区手续费分润奖</td>
								<td>---元</td>
								<td>按辖区（扣除直推）商户刷卡支付总金额计算分润（积分1%）</td>
							</tr>
							<tr>
								<td>完成年度目标奖（住房或轿车）</td>
								<td>未完成</td>
								<td>完成目标即可获得奖励，奖励轿车不含牌照</td>
							</tr>
							<tr>
								<td>超额完成年度目标奖（赠送期权）</td>
								<td>未完成</td>
								<td>超额10%以上即奖（持股满1年享分红，满5年可行权）</td>
							</tr>
							<tr>
								<td>年销售指标</td>
								<td>---台</td>
								<td>以签订合同期满12个月为一个年度计算周期</td>
							</tr>
						</tbody>
					</table>

				</div>

			
			</div>
		</div>
	</div>

	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel">直系代理信息</h3>
		</div>
		<div class="modal-body">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>时间</th>
						<th>公司名</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>2015-03-20 20:10</td>
						<td>张三集团</td>
					</tr>
					<tr>
						<td>2015-03-20 20:10</td>
						<td>张三集团</td>
					</tr>
					<tr>
						<td>2015-03-20 20:10</td>
						<td>张三集团</td>
					</tr>
					<tr>
						<td>2015-03-20 20:10</td>
						<td>张三集团</td>
					</tr>
					
				</tbody>
			</table>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
		</div>
	</div>



<jsp:include page="footer.jsp" ></jsp:include>

