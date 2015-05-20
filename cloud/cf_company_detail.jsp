<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">

			<jsp:include page="user_sidebar.jsp" ></jsp:include>

			<div class="span9">

				<div class="bs-docs-example">
					<legend><strong>企业信息</strong></legend>
					
					<table class="table table-bordered table-striped">
						<colgroup>
							<col class="span1" >
							<col class="span8">
						</colgroup>
						
						<tbody>
							<tr>
								<td>业务类型：</td>
								<td>
									<c:if test="${empty company_user.agency_grade}">未申请</c:if>
									<c:if test="${company_user.agency_grade eq '1'}">省级代理</c:if>
									<c:if test="${company_user.agency_grade eq '2'}">市级代理</c:if>
									<c:if test="${company_user.agency_grade eq '3'}">县级代理</c:if>
									<c:if test="${company_user.agency_grade eq '4'}">社区专员</c:if>
								</td>
							</tr>
							
							<tr>
								<td>姓名：</td>
								<td>${company_user.realname }</td>
							</tr>
							
							<tr>
								<td>登录账号：</td>
								<td>${company_user.user_phone}</td>
							</tr>
				
							<tr>
								<td>公司名称：</td>
								<td>
									<c:if test="${!empty company_user.company_name}">${company_user.company_name}</c:if>
									<c:if test="${empty company_user.company_name }">还未申请</c:if>
								</td>
							</tr>
							
							<tr>
								<td>联系电话：</td>
								<td>
									<c:if test="${!empty company_user.touch_phone}">${company_user.touch_phone}</c:if>
									<c:if test="${empty company_user.touch_phone}">还未申请</c:if>
								</td>
							</tr>
							
							<tr>
								<td>联系邮箱：</td>
								<td>
									<c:if test="${!empty company_user.email}">${company_user.email}</c:if>
									<c:if test="${empty company_user.email}">还未申请</c:if>
								</td>
							</tr>

							<tr>
								<td>联系地址：</td>
								<td>${company_user.province}${company_user.city}${company_user.county}${company_user.address}</td>
							</tr>
								
							<tr>
								<td>申请时间：</td>
								<td>
									<c:if test="${!empty company_user.apply_date}">
										<fmt:formatDate value="${company_user.apply_date }" pattern="yyyy/MM/dd  HH:mm:ss"/>
									</c:if>
									<c:if test="${empty company_user.apply_date}">还未申请</c:if>
								</td>
							</tr>
							
							<tr>
								<td>申请状态：</td>
								<td>
									<c:if test="${empty company_user.receipt_flag}">还未申请</c:if>
									<c:if test="${company_user.receipt_flag eq '1'}">审核中</c:if>
									<c:if test="${company_user.receipt_flag eq '2'}">已通过</c:if>
									<c:if test="${company_user.receipt_flag eq '3'}">未通过</c:if>
								</td>
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





					<br>
					<p class="muted">个人信息有错误？ 请联系客服人员，电话：<b class="text-info">4008-119-789</b>；QQ：<b class="text-info">2659147448</b>
					
					</p>


				</div>

			
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" ></jsp:include>