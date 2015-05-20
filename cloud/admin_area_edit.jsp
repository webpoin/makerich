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
						<li><a href="/cf_admin_company_tgtotal.shtml?uid=18">业务详情</a></li>
						<li><a href="/cf_admin_company_tglist.shtml?uid=18">查看明细</a></li>
						<li><a href="/cf_admin_company_message.shtml?uid=18">账户信息</a></li>
						<li class="active"><a href="/cf_admin_company_update.shtml?uid=18">修改信息</a></li>
					</ul>

					

					<br>
					<form action="/cf_admin_company_message_update.shtml" method="post" class="form-horizontal">
					<input type="hidden" name="id" value="${list.mid }">
					<input type="hidden" name="agency_grade" value="${list.agency_grade }">
						
						<div class="control-group">
							<label class="control-label">业务类型：</label>
							<div class="controls"  style="padding-top:5px;">区域代理商</div>
						</div>

						

						<div class="control-group">
							<label class="control-label">代理等级：</label>
							<div class="controls">
								<c:if test="${list.agency_grade eq '1'}">省级</c:if>
								<c:if test="${list.agency_grade eq '2'}">市级</c:if>
								<c:if test="${list.agency_grade eq '3'}">县级</c:if>
								<c:if test="${list.agency_grade eq '4'}">社区</c:if>
							</div>
						</div>

						<div class="control-group">
							<label class="control-label">代理费：</label>
							<div class="controls"><input type="text" name="apply_money" value="${list.apply_money/10000}">万元</div>
						</div>
						

						<div class="control-group">
							<label class="control-label">公司名：</label>
							<div class="controls"><input type="text" name="company_name" value="${list.company_name }"></div>
						</div>

						<div class="control-group">
							<label class="control-label">营业执照号：</label>
							<div class="controls"><input type="text" name="business_license" value="${list.business_license }"></div>
						</div>

						<div class="control-group">
							<label class="control-label">联系电话：</label>
							<div class="controls"><input type="text" name="phone" value="${list.touch_phone }"></div>
						</div>

						<div class="control-group">
							<label class="control-label">联系邮箱：</label>
							<div class="controls"><input type="text" name="email" value="${list.email }"></div>
						</div>

						<div class="control-group">
								<label class="control-label">服务地址：</label>
								<div class="controls js-form-city">
									<select class="prov span2" name="province_code" ></select>
									<select class="city span2" name="city_code" ></select>
									<select class="town span2" name="county_code"></select>

									<input type="hidden" class="prov_name" name="province" default="${list.province2 }">
									<input type="hidden" class="city_name" name="city" default="${list.city2 }">
									<input type="hidden" class="town_name" name="county" default="${list.county2 }">

									<br><br>
									<input type="text" value="" name="address" default="${list.address2 } class="span5">
								</div>
						</div>


						<div class="control-group">
							<div class="controls"><button type="submit" class="btn btn-primary" style="padding:4px 30px;">确定</button></div>
						</div>


					




					</form>
				


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