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
				
					<legend><strong>申请加盟信息</strong></legend>

					<br>
					<table class="table table-bordered table-striped">
						<colgroup>
							<col class="span1">
							<col class="span8">
						</colgroup>
						
						<tbody>
							
							<tr><td>业务类型：</td>
								<td>
									<c:if test="${company_detail.agency_grade eq '1'}">省级代理</c:if>
									<c:if test="${company_detail.agency_grade eq '2'}">市级代理</c:if>
									<c:if test="${company_detail.agency_grade eq '3'}">县级代理</c:if>
									<c:if test="${company_detail.agency_grade eq '4'}">社区代理</c:if>
								</td>
							</tr>
							
								<tr><td>姓名：</td>
								<td>${company_detail.realname }</td>
							</tr>

							
							<tr><td>登录账号：</td>
								<td>${company_detail.user_phone }</td>
							</tr>
								
							
							<tr><td>身份证号：</td>
								<td>${company_detail.company_name }</td>
							</tr>

							
							<tr><td>联系电话：</td>
								<td>${company_detail.touch_phone }</td>
							</tr>
								
							
							<tr><td>联系邮箱：</td>
								<td>${company_detail.email }</td>
							</tr>

							
							<tr><td>联系地址：</td>
								<td>${company_detail.province }${company_detail.city }${company_detail.county }${company_detail.address }</td>
							</tr>
							
							<tr><td>录入时间：</td>
								<td><fmt:formatDate value="${company_detail.apply_date }" pattern="yyyy/MM/dd  HH:mm:ss"/></td>
							</tr>


						</tbody>
					</table>

					

				</div>

			
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" ></jsp:include>