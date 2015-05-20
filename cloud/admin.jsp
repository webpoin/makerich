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
			<!-- 错误信息${msg} -->
					<legend><strong>系统管理</strong></legend>
				

					<table class="table table-bordered table-striped">
					
						<tbody>
							<tr>
								<td>姓名</dd>
								<td>${admin_user.realname }</td>
							</tr>
							<tr>
								<td>登陆账号</dd>
								<td>${admin_user.phone }</td>
							</tr>
							<tr>
								<td>最后登陆时间</td>
								<td><fmt:formatDate value="${admin_user.login_date }" pattern="yyyy/MM/dd  HH:mm:ss"/></td>
							</tr>
							
							<tr>
								<td>密码安全</td>
								<td>
									<form action="/cf_user_reset_password.shtml" class="form-horizontal" method="post">
										<div class="controls"><input type="password" name="old_password" id="inputPassword" placeholder="旧密码"></div>
										<div class="controls"><input type="password" name="new_password" id="inputPassword" placeholder="新密码"></div>
										<div class="controls"><input type="password" name="new_repassword" id="inputPassword" placeholder="确认密码"></div>
										<div class="controls"><button type="submit" class="btn">确认修改</button></div>
									</form>

								</td>
							</tr>

						</tbody>
					</table>

				

				</div>

			
			</div>
		</div>
	</div>



	<jsp:include page="footer.jsp" ></jsp:include>