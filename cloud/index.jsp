<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">
			
			<jsp:include page="user_sidebar.jsp" ></jsp:include>

			<div class="span9">

				<div class="bs-docs-example">

					<legend><strong>业绩能力</strong></legend>
					<blockquote><p>个人的业绩总额，发展商户数量等汇总与业务范围规定</p></blockquote>

					<!-- 如果未申请成为云创富系统成员 -->
					<!-- ${temp_flag } <br>  
					1表示个体已申请待审核  2表示个体申请已审核通过  3表示个体已申请审核未通过  4表示个体还未申请<br>
					5表示企业已申请待审核  6表示企业申请已审核通过  7表示企业已申请审核未通过  8表示企业还未申请<br>
					${user_info}				
					 -->
					
					
					
					<br>
					
				<c:if test="${temp_flag eq '1'}"><div class="alert alert-block">您的申请正在审核…………</div></c:if>
				<c:if test="${temp_flag eq '5'}"><div class="alert alert-block">您的申请正在审核…………</div></c:if>
				<c:if test="${temp_flag eq '8'}">
					<div class="alert alert-block">

						<button type="button" class="close" data-dismiss="alert">×</button>
						
						<h3 class="text-center">申请成为云创富系统成员</h3>
						<br>

						<form action="user_agency_apply.shtml" class="form-horizontal" method="post">


							<div class="control-group">
								<label class="control-label">业务类型：</label>
								<div class="controls" style="padding-top:3px;">区域代理商</div>
							</div>

							

							<div class="control-group">
								<label class="control-label">代理等级：</label>
								<div class="controls">
									<select type="radio" name="agency_grade" value="">
										<option value="1">省级代理</option>
										<option value="2">市级代理</option>
										<option value="2">县级代理</option>
										<option value="2">社区代理</option>
									</select>

								</div>
							</div>

							<div class="control-group">
								<label class="control-label">代理金额：</label>
								<div class="controls" style="padding-top:3px;"><input type="text" name="apply_money">万元</div>
							</div>
							
							<div class="control-group">
								<label class="control-label">创富资源码：</label>
								<div class="controls" style="padding-top:3px;"><input type="text" name="sigen"></div>
							</div>


							<div class="control-group">
								<label class="control-label">公司名：</label>
								<div class="controls"><input type="text" name="company_name" value=""></div>
							</div>

							<div class="control-group">
								<label class="control-label">营业执照号：</label>
								<div class="controls"><input type="text" name="business_license" value=""></div>
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
								<label class="control-label">服务地址：</label>
								<div class="controls js-form-city">
									<select class="prov span2" name="province_code" default="湖南省"></select>
									<select class="city span2" name="city_code" default="常德市"></select>
									<select class="town span2" name="county_code"></select>

									<input type="hidden" class="prov_name" name="province" >
									<input type="hidden" class="city_name" name="city">
									<input type="hidden" class="town_name" name="county">

									<br><br>
									<input type="text" value="" name="address" class="span5">
								</div>
							</div>


							<div class="control-group">

								<div class="controls"> <button class="btn btn-primary" type="submit" style="padding:4px 30px;">确 定</button></div>
							</div>

						</form>
				
					</div>
				</c:if>
				
				<c:if test="${temp_flag eq '4'}">
					<div class="alert alert-block">

						<button type="button" class="close" data-dismiss="alert">×</button>
						
						<h3 class="text-center">申请成为云创富系统成员</h3>
						<br>

						<form action="user_fundation_apply.shtml" class="form-horizontal" method="post">


							<div class="control-group">
								<label class="control-label">业务类型：</label>
								<div class="controls" style="padding-top:3px;">基础运营商</div>
							</div>

							<div class="control-group">
								<label class="control-label">创富资源码：</label>
								<div class="controls" style="padding-top:3px;"><input type="text" name="sigen"></div>
							</div>


							<div class="control-group">
								<label class="control-label">姓名：</label>
								<div class="controls"><input type="text" name="realname" value=""></div>
							</div>

							<div class="control-group">
								<label class="control-label">身份证号：</label>
								<div class="controls"><input type="text" name="identity" value=""></div>
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
								<label class="control-label">服务地址：</label>
								<div class="controls js-form-city">
									<select class="prov span2" name="province_code" default="湖南省"></select>
									<select class="city span2" name="city_code" default="常德市"></select>
									<select class="town span2" name="county_code"></select>

									<input type="hidden" class="prov_name" name="province" >
									<input type="hidden" class="city_name" name="city">
									<input type="hidden" class="town_name" name="county">

									<br><br>
									<input type="text" value="" name="address" class="span5">
								</div>
							</div>


							<div class="control-group">

								<div class="controls"> <button class="btn btn-primary" type="submit" style="padding:4px 30px;">确 定</button></div>
							</div>

						</form>
				
					</div>
				</c:if>




			<c:if test="${temp_flag eq '2'}">
					<h3>业绩发展报告</h3>
					
					<div class="alert alert-success">您当前的职称等级： <strong>专员</strong>,
						再加把力，就可以晋升<strong>主管</strong>了哦！
						<!-- 您的表现异常突出，可申请升级<strong>主管</strong>了哦！<a href="#" class="btn btn-small btn-primary" style="margin-top:-2px;">点击申请</a> -->

					</div>


					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th style="width:200px">项目</th>
								<th>成绩</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>业务总收入：</td>
								<td><b class="text-info" style="font-size:20px">------</b> 元</td>
							</tr>
							<tr>
								<td>推广资源码</td>
								<td><code>${user_info.sigen}</code></td>
							</tr>

							<tr>
								<td>招募基础运营商数量</td>
								<td>-----人</td>
							</tr>
							<tr>
								<td>招募区域代理商数量</td>
								<td>-----个</td>
							</tr>

							<tr>
								<td>会员卡销售</td>
								<td>----- 张</td>
							</tr>
							
							<tr>
								<td>培训等级：</td>
								<td>-----</td>
							</tr>
							<tr>
								<td>服务地区：</td>
								<td>${user_info.province }</td>
							</tr>

						</tbody>
					</table>
			</c:if>
			
			<c:if test="${temp_flag  eq '6'}">
					<h3>业绩发展报告</h3>
					
					


					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th style="width:200px">项目</th>
								<th>成绩</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>业务总收入：</td>
								<td><b class="text-info" style="font-size:20px">
									<c:if test="${!empty date_list.total_money}">${date_list.total_money}</c:if>
									<c:if test="${empty date_list.total_money}">0</c:if>
								</b> 元</td>
							</tr>
							<tr>
								<td>推广资源码</td>
								<td><code>${user_info.sigen}</code></td>
							</tr>

							<tr>
								<td>招募基础运营商数量</td>
								<td>
									<c:if test="${!empty date_list.total1}">${date_list.total1}</c:if>
									<c:if test="${empty date_list.total1}">0</c:if>
								人</td>
							</tr>
							<tr>
								<td>招募区域代理商数量</td>
								<td>
									<c:if test="${!empty date_list.total2}">${date_list.total2}</c:if>
									<c:if test="${empty date_list.total2}">0</c:if>
								个</td>
							</tr>

							<tr>
								<td>会员卡销售</td>
								<td>----- 张</td>
							</tr>
							
							<tr>
								<td>培训等级：</td>
								<td>-----</td>
							</tr>
							<tr>
								<td>服务地区：</td>
								<td>${user_info.province }</td>
							</tr>

						</tbody>
					</table>
			</c:if>

					<br>
					<h3>业务内容</h3>

					<ol class="smallnoline">
						<li><h6>发展基础运营商</h6>
							<p><i class="icon-circle-arrow-right"></i> 基础运营商准入标准：</p>
							<blockquote>
								<small> 申请费用 5608 元，可获得创业价值 19309 元的礼包。其中：摇乾树 A8 手机 1 部（4913 元/台） 、安子刷卡器 2 台 796 元（398 元/台） 、软件电话费 5000 元、创业补贴 5000 元（限启动期） 、系统维护费 3600 元/年</small>
							</blockquote>

							<p><i class="icon-circle-arrow-right"></i> 享受权利</p>
							<blockquote>
								<small> 授权基础运营商主要从事项目招商（基础运营商、区域代理商） 、用户签约（个人用户、企业用户） 、服务支持（个人用户、企业用户）及产品销售（安子支付系列产品）业务</small>
							</blockquote>
							<br>
						</li>

						<li><h6>发展区域代理商</h6>
							<p><i class="icon-circle-arrow-right"></i> 区域代理商准入条件：</p>
							<blockquote>
								<small>具有固定的办公场所、有效的营业资格、良好服务意识及有志于从事支付服务事业的机构。</small>
							</blockquote>

							<p><i class="icon-circle-arrow-right"></i> 代理费用</p>
							<blockquote>
								<small> 省级代理——在省级行政区设立独家代理商（管理中心），代理费根据地区类别核收（500-800 万元） 。<br>市级代理——在地区级行政区设立独家代理商（运营中心），代理费根据地区类别核收（100-300 万元） 。<br>
								县级代理——在县级行政区设立独家代理商（服务中心），代理费根据地区类别核收（10-30 万元） 。<br>
								社区代理——在乡级行政区设立独家代理（体验中心） ，代理费根据地区类别核收（1-3 万元） 。</small>
							</blockquote>
							<br>
						</li>


						<li><h6>销售安子系列产品</h6>
							<p><i class="icon-circle-arrow-right"></i> 安子系列产品</p>
							<blockquote>
								<small>摇钱树5号、摇钱树3号、摇钱树1号、安子支付手机、会员卡等</small>
							</blockquote>
						</li>
					</ol>

				

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