<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">

			<jsp:include page="admin_sidebar.jsp" ></jsp:include>


			<div class="span9">

				<div class="bs-docs-example">
					
					<ul class="nav nav-tabs tabcut">
						<li><a href="/cf_admin_company_tgtotal.shtml?uid=${person_date.uid }">业务详情</a></li>
						<li><a href="/cf_admin_company_tglist.shtml?uid=${person_date.uid }">查看明细</a></li>
						<li><a href="/cf_admin_company_message.shtml?uid=${person_date.uid }">账户信息</a></li>
						<li class="active"><a href="/cf_admin_company_update.shtml?uid=${person_date.uid }">修改信息</a></li>
					</ul>

					<br>

					<form action="/cf_admin_person_message_update.shtml" class="form-horizontal" method="post">
					<input type="hidden" name="id" value="${list.mid }">
						<div class="control-group">
							<label class="control-label">业务类型：</label>
							<div class="controls">
								
									基础运营商
									
								
							</div>
						</div>


						<div class="control-group">
							<label class="control-label">姓名：</label>
							<div class="controls"><input type="text" name="realname" value="${list.realname2 }"></div>
						</div>

						<div class="control-group">
							<label class="control-label">身份证号：</label>
							<div class="controls"><input type="text" name="identity" value="${list.identity }"></div>
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