<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:include page="header.jsp" ></jsp:include>
	
	<div class="container">

		<div class="row">

			<jsp:include page="admin_sidebar.jsp" ></jsp:include>


			<div class="span9">

				<div class="bs-docs-example">
				
					<ol><li><legend><strong>申请加盟信息</strong></legend></li></ol>

					
					<table class="table table-bordered table-striped">
						<colgroup>
							<col class="span1">
							<col class="span8">
						</colgroup>
						
						<tbody>
							
								<tr><td>业务类型：</td>
								<td>
									<c:if test="${applay_info.type == 1}">个体</c:if>
									
									
									<c:if test="${applay_info.type == 2}">企业</c:if>
										
								
								</td>
							</tr>
							
								<tr><td>姓名：</td>
								<td>${applay_info.realname }</td>
							</tr>

							
								<tr><td>登录账号：</td>
								<td>${applay_info.account }</td>
							</tr>
								
							
								<tr><td>身份证号：</td>
								<td>${applay_info.identity }</td>
							</tr>

							
								<tr><td>联系电话：</td>
								<td>${applay_info.phone }</td>
							</tr>
								
							
								<tr><td>联系邮箱：</td>
								<td>${applay_info.email }</td>
							</tr>

							
								<tr><td>联系地址：</td>
								<td>${applay_info.uprovince}${applay_info.ucity}${applay_info.ucounty}${applay_info.uaddress}</td>
							</tr>


							
								<tr><td>录入时间：</td>
								<td>${applay_info.regdate}</td>
							</tr>

							<tr>
								<td>加盟费：</td>
								<td>${applay_info.money }</td>
							</tr>

						</tbody>
					</table>

					

				</div>

			
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" ></jsp:include>