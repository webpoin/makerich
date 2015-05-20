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
						<li><a href="/cf_admin_personal_tgtotal.shtml?uid=${person_date.uid }">业务详情</a></li>
						<li><a href="/cf_admin_personal_tglist.shtml?uid=${person_date.uid }">查看明细</a></li>
						<li class="active"><a href="/cf_admin_personal_message.shtml?uid=${person_date.uid }">账户信息</a></li>
						<li><a href="/cf_admin_personal_update.shtml?uid=${person_date.uid }">修改信息</a></li>
					</ul>


					<br>
					<table class="table table-bordered table-striped">
						<colgroup>
							<col class="span1">
							<col class="span8">
						</colgroup>
						
						<tbody>
							
								<tr><td>业务类型：</td>
								<td>基础运营商</td>
							</tr>
							
							<tr>
								<td>推广资源码：</td>
								<td>${list.sigen }</td>
							</tr>
							
								<tr><td>姓名：</td>
								<td>${list.realname }</td>
							</tr>

							
								<tr><td>登录账号：</td>
								<td>${list.user_phone }</td>
							</tr>
								
							
								<tr><td>身份证号：</td>
								<td>${list.identity }</td>
							</tr>

							
								<tr><td>联系电话：</td>
								<td>${list.touch_phone }</td>
							</tr>
								
							
								<tr><td>联系邮箱：</td>
								<td>${list.email }</td>
							</tr>

							
								<tr><td>联系地址：</td>
								<td>${list.province }${list.city }${list.county }${list.address }</td>
							</tr>


							
								<tr><td>申请时间：</td>
								<td><fmt:formatDate value="${list.apply_date }" pattern="yyyy/MM/dd  HH:mm:ss"/></td>
							</tr>

							

						</tbody>
					</table>

					

				</div>

			
			</div>
		</div>
	</div>


<jsp:include page="footer.jsp" ></jsp:include>