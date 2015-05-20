<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">

			<jsp:include page="user_sidebar.jsp" ></jsp:include>


			<div class="span9">

				<div class="bs-docs-example">
					<legend><strong>获利项目概览</strong></legend>

					<div class="alert alert-success">您当前的职称等级是 <strong>专员</strong>，加油！</div>
					<h3>安子支付基础运营商收益一览表</h3>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th colspan="2">代理级别</th>
								<th>专员</th>
								<th>主管</th>
								<th>经理</th>
								<th>总监</th>
								<th width="60px">结算周期</th>
								<th>备 注</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td rowspan="2" width="18px">招 商</td>
								<td>基础运营商</td>
								<td colspan="4">1000元/家</td>
								<td>日结周付</td>
								<td>按实际招商数量核算</td>
							</tr>
							<tr>
								<td>区域代理</td>
								<td colspan="4">10%</td>
								<td>周结月付</td>
								<td>按合同成交额核算</td>
							</tr>


							<tr>
								<td rowspan="4">签 约</td>
								<td>线上支付</td>
								<td colspan="4">3/万</td>
								<td>周结月付</td>
								<td>按签约企业线上支付总额</td>
							</tr>
							<tr>
								<td>线下支付</td>
								<td colspan="4">5/万</td>
								<td>周结月付</td>
								<td>按签约企业线下刷卡总额</td>
							</tr>
							<tr>
								<td>系统广告</td>
								<td>8%</td>
								<td>10%</td>
								<td>12%</td>
								<td>15%</td>
								<td>周结月付</td>
								<td>按签约企业广告支出总额</td>
							</tr>
							<tr>
								<td>消费返佣</td>
								<td>5%</td>
								<td>6%</td>
								<td>7%</td>
								<td>8%</td>
								<td>周结月付</td>
								<td>按签约企业实际支付消费返佣总额</td>
							</tr>
							

							<tr>
								<td rowspan="4">服 务</td>
								<td>个人消费</td>
								<td>——</td>
								<td>7%</td>
								<td>9%</td>
								<td>11%</td>
								<td>周结月付</td>
								<td>按服务对象获得的消费积分总额</td>
							</tr>
							<tr>
								<td>消费返佣</td>
								<td>——</td>
								<td>7%</td>
								<td>9%</td>
								<td>11%</td>
								<td>周结月付</td>
								<td>按服务企业实际支付消费返佣总额</td>
							</tr>
							<tr>
								<td>企业广告</td>
								<td>——</td>
								<td>7%</td>
								<td>9%</td>
								<td>11%</td>
								<td>周结月付</td>
								<td>按服务企业广告支出总额</td>
							</tr>
							<tr>
								<td>系统维护</td>
								<td>——</td>
								<td>6%</td>
								<td>8%</td>
								<td>10%</td>
								<td>年付</td>
								<td>按用户实际缴纳系统使用年费核算</td>
							</tr>

							<tr>
								<td rowspan="3">管 理</td>
								<td>岗位津贴</td>
								<td>——</td>
								<td>6%</td>
								<td>4%</td>
								<td>2%</td>
								<td>月付</td>
								<td>按辖区业绩总额核算</td>
							</tr>
							<tr>
								<td>辅导津贴</td>
								<td>——</td>
								<td>10%</td>
								<td>10%</td>
								<td>10%</td>
								<td>月付</td>
								<td>按所属同级运营商直接业务收益</td>
							</tr>
							<tr>
								<td>办公补贴</td>
								<td>——</td>
								<td>——</td>
								<td>3%</td>
								<td>5%</td>
								<td>月付</td>
								<td>按工作室所属运营商直接业务收益</td>
							</tr>

							<tr>
								<td rowspan="2">销售</td>
								<td>会 员 卡</td>
								<td>15 元/张</td>
								<td>20 元/张</td>
								<td>25 元/张</td>
								<td>30 元/张</td>
								<td>周付</td>
								<td>按实际发送用户卡数量</td>
							</tr>
							<tr>
								<td>指定商品</td>
								<td>10%</td>
								<td>12%</td>
								<td>15%</td>
								<td>20%</td>
								<td>周付</td>
								<td>按指定商品销售总额</td>
							</tr>
						</tbody>
					</table>


					<br>
					<h3>安子支付福利奖励一览表</h3>

					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th></th>
								<th>保险</th>
								<th>培训</th>
								<th>旅游</th>
								<th>豪车/游艇</th>
								<th>别墅</th>
								<th>股权</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>专员</td>
								<td>100</td>
								<td>万</td>
								<td>初级</td>
								<td>——</td>
								<td>——</td>
								<td>——</td>
								<td>——</td>
							</tr>
							<tr>
								<td>主管</td>
								<td>300</td>
								<td>万</td>
								<td>中级</td>
								<td>Y</td>
								<td>——</td>
								<td>——</td>
								<td>——</td>
							</tr>
							<tr>
								<td>经理</td>
								<td>600</td>
								<td>万</td>
								<td>高级</td>
								<td>Y</td>
								<td>Y</td>
								<td>——</td>
								<td>——</td>
							</tr>
							<tr>
								<td>总监</td>
								<td>1000</td>
								<td>万</td>
								<td>超级</td>
								<td>Y</td>
								<td>Y</td>
								<td>Y</td>
								<td>——</td>
							</tr>
							<tr>
								<td>荣誉董事</td>
								<td>2000</td>
								<td>万</td>
								<td>Y</td>
								<td>Y</td>
								<td>Y</td>
								<td>Y</td>
								<td>Y</td>
							</tr>


						
						</tbody>
					</table>


					


				</div>

			
			</div>
		</div>
	</div>



<jsp:include page="footer.jsp" ></jsp:include>