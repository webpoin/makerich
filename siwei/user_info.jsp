<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" ></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

	
	<div class="container">

		<div class="row">
			
			<jsp:include page="user_sidebar.jsp" ></jsp:include>

			<div class="span9">

				<div class="bs-docs-example">

					<legend><strong>商户信息</strong></legend>


					<br>
					<h4>本年任务完成进度</h4>
					<br>
					<table class="table table-bordered table-striped">
						<tbody>
							<tr>
								<td style="width:120px">销售指标</dd>
								<td><code>
									<c:if test="${temp_flag eq 2}">${target}</c:if>
									<c:if test="${temp_flag eq 0}">--</c:if>
								</code> 台</td>
							</tr>
							<tr>
								<td>已销售</dd>
								<td><b class="text-info" style="font-size:20px">
									<c:if test="${temp_flag eq 2}">${totalsales}</c:if>
									<c:if test="${temp_flag eq 0}">--</c:if>
								</b> 台</td>
								
							</tr>

							<tr>
								<td>完成比例</td>
								<td>
									<c:if test="${temp_flag eq 2}">${sale_rate}</c:if>
									<c:if test="${temp_flag eq 0}">--</c:if>
								</td>
							</tr>
							<tr>
								<td>时间进度</td>
								<td>
									<c:if test="${temp_flag eq 2}">${time_rate}</c:if>
									<c:if test="${temp_flag eq 0}">--</c:if>
								</td>
							</tr>

							<tr>
								<td></td>
								<td><a href="#" class="btn btn-success btn-small">查看销售情况</a></td>
							</tr>
							
						</tbody>
					</table>
					

					<br><br>
					<h4>基本信息</h4>
					<br>
					<table class="table table-bordered table-striped">
						<colgroup>
							<col class="span1">
							<col class="span8">
						</colgroup>
						
						<tbody>
							
							<tr>
								<td>商户类别</td>
								<c:if test="${user_info.type == 1}">
									<td>个体</td>
								</c:if>
								<c:if test="${user_info.type == 2}">
									<td>企业</td>
								</c:if>
							</tr>

							<tr>
								<td>代理等级</td>
								<td>
									<c:if test="${temp_flag eq 2}">
									<c:if test="${agency_map.agency_grade == 1}">
											省级
										</c:if>
										<c:if test="${agency_map.agency_grade == 2}">
											地市级
										</c:if>
										<c:if test="${agency_map.agency_grade == 3}">
											县区级
										</c:if>
										<c:if test="${agency_map.agency_grade == 4}">
											社区级
										</c:if>
									</c:if>
									<c:if test="${temp_flag eq 0}">--</c:if>
								</td>
							</tr>

							<tr>
								<td>所属辖区</td>
								<td>
									<c:if test="${temp_flag eq 2}">
										<c:if test="${agency_map.agency_grade == 1}">
											${agency_map.province}
										</c:if>
										<c:if test="${agency_map.agency_grade == 2}">
											${agency_map.province}-${agency_map.city}
										</c:if>
										<c:if test="${agency_map.agency_grade == 3}">
											${agency_map.province}-${agency_map.city}-${agency_map.county}
										</c:if>
										<c:if test="${agency_map.agency_grade == 4}">
											${agency_map.province}-${agency_map.city}-${agency_map.county}-${agency_map.address}
										</c:if>
									</c:if>
									<c:if test="${temp_flag eq 0}">--</c:if>
								</td>
							</tr>
							
							<tr>
								<td>法人姓名</td>
								<td>${user_info.realname }</td>
							</tr>

							
							<tr>
								<td>登录账号：</td>
								<td>${user_info.phone }</td>
							</tr>
								
							
							<tr>
								<td>身份证号：</td>
								<td>
									<c:if test="${temp_flag eq 2}">${agency_map.identity}</c:if>
									<c:if test="${temp_flag eq 0}">--</c:if>
								</td>
							</tr>

							
							<tr>
								<td>联系电话：</td>
								<td>
								${user_info.phone }
								</td>
							</tr>
								
							
							<tr>
								<td>联系邮箱：</td>
								<td>
									<c:if test="${temp_flag eq 2}">${agency_map.email }</c:if>
									<c:if test="${temp_flag eq 0}">--</c:if>
									
								</td>
							</tr>

							
							<tr>
								<td>联系地址：</td>
								<td>${user_info.province}${user_info.city}${user_info.county}${user_info.address}</td>
							</tr>


							
							<tr>
								<td>录入时间：</td>
								<td><fmt:formatDate value="${user_info.regdate}" pattern="yyyy-MM-dd"/></td>
							</tr>


							<tr>
								<td>推荐人：</td>
								<td>
									<c:if test="${temp_flag eq 2}">${person }</c:if>
									<c:if test="${temp_flag eq 0}">--</c:if>
								</td>
							</tr>

							<tr>
								<td>密码安全：</td>
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

