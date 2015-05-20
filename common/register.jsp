<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="header.jsp" ></jsp:include>


		<div class="reginster">
		<h1 style="background:#78819f;line-height:40px;font-size:16px;padding:0 20px;color:#fff;">账户注册</h1>
			<br><br>
			
			<form action="registered.shtml" class="fukrm" method="post" >
				

				<label>
					<span><em>*</em>用户类型：</span>
					<select name="type"  >
						<option value="1">个人用户</option>
						<option value="2">企业用户</option>
					</select>
					<p>请选择正确的用户类型，不同的用户有不一样的权限，请正确选择</p>
				</label>

				
				<!--<label>
					<span><em>*</em>资源码：</span>
					<input type="text" name="sigen" value="${sigen }" placeholder="您推荐人的资源码" class="username" >
				</label>
				-->

				<label>
					<span><em>*</em>姓名：</span>
					<input type="text" name="realname" value="" placeholder="请输入您的姓名" class="username" >
				</label>
			

				<label>
					<span><em>*</em>手机号码：</span>
					<input type="text" name="phone" placeholder="请输入联系人手机号码" check="required,phone,ajax_register_phone" class="fukrm_save">
					<p>手机号码为异业联盟登陆账户名，请保证输入正确有效</p>
				</label>

				
				<label>
					<span><em>*</em>短信验证码：</span>
					<input type="text" name="code" placeholder="请输入手机验证码" check="required" style="width:136px" class="checkcode">
					<b class="getcode" for="phone" url="send_message.shtml">获取验证码 ></b>
					<p>请点击“获取验证码”获取验证码，验证码5分钟内有效</p>
				</label>


				
				<label>
					<span><em>*</em>账户密码：</span>
					<input type="password" name="password" placeholder="请输入异业联盟账户密码" check="required,password"  class="checkstrong fukrm_save">
					<p style="width:400px;padding-top:5px;">
						密码强度: <span class="checkstrong_res">
						<b>弱</b><b>中</b><b>强</b></span><br>
						<img src="/images/icon_warm.png" style="vertical-align: -2px;">为保证您帐号的安全，建议密码由6-16位字符（字母、数字、符号）<br>组合而成，不能只使用一种字符，不区分大小写！
					</p>
				</label>

				
				<label>
					<span><em>*</em>确认账户密码：</span>
					<input type="password" name=""  placeholder="请重新输入账户密码" check="required,repassword"  class="fukrm_save">
				</label>
				
				<cite>
					<span><em>*</em>联系地址：</span>
					<label class="js-form-city">
						<select class="prov" style="width:180px;" name="province_code" default="湖南省"></select>
						<select class="city" style="width:180px;" name="city_code" default="常德市"></select>
						<select class="town" name="county_code"></select>
						<input type="text" value="" name="address" class="span5" style="margin-top: 10px;">

						<input type="hidden" class="prov_name" name="province" >
						<input type="hidden" class="city_name" name="city">
						<input type="hidden" class="town_name" name="county">
						
					<p>此处所填地址将作为申请代理时的地址信息依据，请妥善填写。</p>
				</cite>
				

			

				<cite><input type="submit" value="提交"></cite>

				<br><br><br><br><br>
			</form>



		</div>

	
	<a href="#myModal" style="display: none;" class="fuck" data-toggle="modal"></a>
	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h3 id="myModalLabel">登陆错误</h3>
		</div>
		<div class="modal-body">
			<p>${msg}</p>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
		</div>
	</div>



<!-- 页脚 -->
<jsp:include page="footer.jsp" ></jsp:include>
<c:if test="${!empty msg}" ><script>$('.fuck').trigger('click');</script></c:if>
<script>
	$('.prov').on('change',function(){$('.prov_name').val($(this).find("option:selected").text())});
	$('.city').on('change',function(){$('.city_name').val($(this).find("option:selected").text())});
	$('.town').on('change',function(){$('.town_name').val($(this).find("option:selected").text())});
</script>
