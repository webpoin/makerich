<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">
			
			<jsp:include page="user_sidebar.jsp" ></jsp:include>

			<div class="span9">

				<div class="bs-docs-example">

					<legend><strong>加盟申请</strong></legend>
				
					<br>
					<table class="table table-bordered table-striped">

					<caption><h4>摇钱树系统产品代理条件及返佣分润奖励规则</h4><br></caption>

					<tbody>
						<tr>
							<td colspan="2">代理级别</td>
							<td>省级</td>
							<td>地市级</td>
							<td>县区级</td>
							<td>社区专营中心</td>
							<td>终端用户</td>
							<td>备注说明</td>
						</tr>
						<tr>
							<td colspan="2">次投资金额(万元）</td>
							<td>300 起 10涨100</td>
							<td>100 起 10 涨 20</td>
							<td>20 起 10 涨 10</td>
							<td>5 起 10 涨 1</td>
							<td></td>
							<td>其中 30%为系统开发维护费,其余为货款;每增加 10 个代理涨价一次。</td>
						</tr>
						<tr>
							<td rowspan="10"><br><br>代<br><br>理<br><br>商<br><br>十<br><br>大<br><br>收<br><br>益</td>
							<td>1、直推终端价差利润（元/台）</td>
							<td>2023</td>
							<td>1505</td>
							<td>1290</td>
							<td>1117</td>
							<td>1117</td>
							<td>价差利润=零售价-结算价+开通奖。</td>
						</tr>
						<tr>
							<td>2、直推终端手续费 分润奖（元/万）</td>
							<td>8</td>
							<td>7</td>
							<td>6</td>
							<td>5</td>
							<td>5</td>
							<td>按直推商户刷卡支付总金额计算奖励。</td>
						</tr>
						<tr>
							<td>3、直推终端消费返佣奖（积分%）</td>
							<td>8</td>
							<td>7</td>
							<td>6</td>
							<td>5</td>
							<td>5</td>
							<td>按直推商户消费产生返佣总金额计算奖励</td>
						</tr>
						<tr>
							<td>4、直推摇乾树（A8手机）开通奖（%）</td>
							<td>15/18</td>
							<td>9/12</td>
							<td>7/9</td>
							<td>5/7</td>
							<td>5/7</td>
							<td>按结算价计算：（完成注册奖励/使用一次支付后奖励）</td>
						</tr>
						<tr>
							<td>5、拓展代理奖（%）</td>
							<td>10</td>
							<td>10</td>
							<td>10</td>
							<td>10</td>
							<td>10</td>
							<td>按直接拓展代理商合同成交金额计算奖励</td>
						</tr>
						<tr>
							<td>6、辖区销售奖（积分%）</td>
							<td>2</td>
							<td>2</td>
							<td>2</td>
							<td>---</td>
							<td>---</td>
							<td>按辖区（扣除直推）销售（开通）总金额计算奖励比例</td>
						</tr>
						<tr>
							<td>7、辖区消费返佣奖（积分%）</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>---</td>
							<td>---</td>
							<td>按辖区（扣除直推）商户消费返佣总金额计算奖励</td>
						</tr>
						<tr>
							<td>8、辖区手续费分润奖（产品/万）</td>
							<td>1</td>
							<td>1</td>
							<td>1</td>
							<td>---</td>
							<td>---</td>
							<td>按辖区（扣除直推）商户刷卡支付总金额计算分润</td>
						</tr>
						<tr>
							<td>9、完成年度目标奖（住房或轿车）</td>
							<td>300 万元 住房 1 套</td>
							<td>100 万元保时捷 1 辆</td>
							<td>50万元奔驰 1 辆</td>
							<td>20万元传祺 1 辆</td>
							<td>---</td>
							<td>完成目标即可获得奖励，奖励轿车不含牌照</td>
						</tr>
						<tr>
							<td>10、超额完成年度目标奖 （赠送期权）（股）</td>
							<td>200000</td>
							<td>50000</td>
							<td>20000</td>
							<td>10000</td>
							<td>---</td>
							<td>超额10%以上即奖（持股满 1 年享分红，满 5 年可行权）</td>
						</tr>

						<tr>
							<td colspan="2">年销售指标（台）</td>
							<td>50000</td>
							<td>10000</td>
							<td>5000</td>
							<td>2000</td>
							<td>---</td>
							<td>以签订合同期满 12 个月为一个年度计算周期</td>
						</tr>

					</tbody>
				</table>

				<table class='table table-bordered table-striped'>
					<tbody>
						<tr><td colspan="8" style='text-align:center'><h5>摇乾树系统产品价格表</h5></td></tr>

						<tr>
							<td>产品名称</td>
							<td colspan="5">各级代理商供货（结算）价格(元/台)</td>
							<td>零售价</td>
							<td>刷卡金额满（万元/台）返还（元/台）</td>
						</tr>
						<tr>
							<td>摇乾树 1 号（8210POS机）</td>
							<td>1538</td>
							<td>1588</td>
							<td>1638</td>
							<td>1688</td>
							<td>1688</td>
							<td>2658</td>
							<td>满 500 返 2658</td>
						</tr>
						<tr>
							<td>摇乾树 8 号（土豪金 POS 机）</td>
							<td>588</td>
							<td>638</td>
							<td>668</td>
							<td>698</td>
							<td>698</td>
							<td>1568</td>
							<td>无</td>
						</tr>
						<tr>
							<td>摇乾树 9 号（刷卡器）</td>
							<td>118</td>
							<td>158</td>
							<td>178</td>
							<td>198</td>
							<td>198</td>
							<td>398</td>
							<td>无</td>
						</tr>
						<tr>
							<td>摇乾树 10 号（A8 手机）</td>
							<td>4313</td>
							<td>4313</td>
							<td>4313</td>
							<td>4313</td>
							<td>4313</td>
							<td>4913</td>
							<td>无</td>
						</tr>
						<tr>
							<td colspan="8">备注：<br>
								1、甲方将根据市场拓展情况对代理规则、产品价格、奖励、刷卡分润等政策进行适时调整。<br>
								2、甲方所赠期权，其行权价按原始股价 1 元/股，若双方在行权前终止合作，则甲方收回期权。<br>
								3、甲方奖励的轿车品牌、型号，仅供参考，甲方将根据市场情况，进行适当变动调整或停止赠送。<br>
								4、乙方拓展代理商或者商户后，要认真做好服务，若发生退款行为，乙方依其获得的奖励亦如数退还。<br>
								5、每个代理商年度内每销售摇乾树 10 号 1 台、1 号 3 台、8 号 6 台、9 号 35 台分别各折算 1 台销售指标。
							</td>
						</tr>
					</tbody>
				</table>
					<br><br>
					
					<div class="alert alert-block" style="padding-right: 14px;">

						
						<h4 class="text-center">申请成为四维创富系统成员</h4>
						<br>
						<div class="alert alert-success">
							<button type="button" class="close" data-dismiss="alert">×</button>
							<strong>注意</strong> 申请加盟完成后，我们的服务人员为与您联系，并签订服务协议，完成后即可入驻四维创富系统
						</div>
						<br>
						<h3>${msg}</h3>

						<c:if test="${check_state eq '0'}">
							<form action="/sw_user_apply.shtml" class="form-horizontal" method="post">

								<div class="control-group">
									<label class="control-label">推荐人资源码：</label>
									<div class="controls"><input type="text" name="sigen" value=""></div>
								</div>
	
								<div class="control-group">
									<label class="control-label">身份证号：</label>
									<div class="controls"><input type="text" name="identity" value=""></div>
								</div>
	
								<div class="control-group">
									<label class="control-label">申请等级：</label>
									<div class="controls">
										<select type="text" name="agency_grade" value="">
											<option value="1">省级代理</option>
											<option value="2">市级代理</option>
											<option value="2">县级代理</option>
											<option value="2">社区代理</option>
											<option value="2">终端用户</option>
										</select>
	
									</div>
								</div>
	
								<div class="control-group">
									<label class="control-label">投资金额</label>
									<div class="controls"><input type="text" name="money" value=""></div>
								</div>
								<div class="control-group">
									<label class="control-label">联系电话：</label>
									<div class="controls"><input type="text" name="phone" value=""></div>
								</div>

								<div class="control-group">
									<label class="control-label">联系邮箱：</label>
									<div class="controls"><input type="text" name="email" value=""></div>
								</div>
								<div class="control-group">
									<div class="controls js-form-city">
										<select class="prov span2" name="province_code" value="" default="湖南省"></select>
										<select class="city span2" name="city_code" default="常德市"></select>
										<select class="town span2" name="county_code"></select>
	
										<input type="hidden" class="prov_name" name="province" value="" >
										<input type="hidden" class="city_name" name="city">
										<input type="hidden" class="town_name" name="county">
	
										<br><br>
										<input type="text" value="" name="address" class="span5">
									</div>
								</div>
	
	

								<div class="control-group">
									<div class="controls"> <button class="btn btn-primary" type="submit" style="padding:4px 30px;">申 请</button></div>
								</div>
	
							</form>
						
						</c:if>

						<c:if test="${check_state eq '1'}"><div class="alert alert-block">您的申请正在审核中…………</div></c:if>
						<c:if test="${check_state eq '2'}">您的申请已通过…………</c:if>
						<c:if test="${check_state eq '3'}">您的申请未通过…………</c:if>
						
				
					</div>


				

				</div>

			
			</div>
		</div>
	</div>




<jsp:include page="footer.jsp" ></jsp:include>
<script>
	$('.prov').on('change',function () {$('.prov_name').val($(this).find(":selected").text()); });
	$('.city').on('change',function () {$('.city_name').val($(this).find(":selected").text()); });
	$('.town').on('change',function () {$('.town_name').val($(this).find(":selected").text()); });
</script>
