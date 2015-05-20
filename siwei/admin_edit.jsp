<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">

			<jsp:include page="admin_sidebar.jsp" ></jsp:include>



			<div class="span9">

				<div class="bs-docs-example">

					<ul class="nav nav-tabs tabcut">
						<li><a href="/sw_admin_business.shtml?id=${list.pid}">业务详情</a></li>
						<li><a href="/sw_admin_info.shtml?id=${list.pid}">账户信息</a></li>
						<li class="active"><a href="/sw_to_admin_edit.shtml?id=${list.pid}">修改信息</a></li>
					</ul>

					<br>
					<form action="/sw_admin_edit.shtml" class="form-horizontal" method="post">

						<input type="hidden" name="id" value="${list.id}">
						<input type="hidden" name="uid" value="${list.pid}">
						<div class="control-group">
							<label class="control-label">业务类型：</label>
							<div class="controls"  style="padding-top:5px;">区域代理商</div>
						</div>

						

						<div class="control-group">
							<label class="control-label">代理等级：</label>
							<div class="controls">
								<select type="text" name="agency_grade" value="">
									<option value="1">省级代理</option>
									<option value="2">市级代理</option>
									<option value="2">县级代理</option>
									<option value="2">社区代理</option>
								</select>

							</div>
						</div>

						
						
						
						
						
						
						
						<div class="control-group">
							<label class="control-label">代理费：</label>
							<div class="controls"><input type="text" name="money" value="${list.money }"></div>
						</div>
						<div class="control-group">
							<label class="control-label">联系电话：</label>
							<div class="controls"><input type="text" name="phone" value="${list.phone }"></div>
						</div>

						<div class="control-group">
							<label class="control-label">联系邮箱：</label>
							<div class="controls"><input type="text" name="email" value="${list.email }"></div>
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