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

					<legend><strong>产品订购</strong></legend>
				
					<br>

					<form action="/sw_to_pay.shtml" class="fuck_form" method="post">
						
						<table class="table table-bordered table-striped user_list">
							<thead>
								<tr>
									<th>产品名称</th>
									<th>省级代理产品单价</th>
									<th>购买数量（台）</th>
									<th>货物总价</th>
								</tr>
							</thead>
							<tbody style="white-space: nowrap;">
								<c:forEach var="list" items="${goodsList}" varStatus="index" >
								
								<tr>
									<td><a target="_blank" href="${list.picpath }">${list.name}  </a></td>
									<td>
										<c:if test="${user_map.agency_grade eq '1'}">${list.price1}</c:if>
										<c:if test="${user_map.agency_grade eq '2'}">${list.price2}</c:if>
										<c:if test="${user_map.agency_grade eq '3'}">${list.price3}</c:if>
										<c:if test="${user_map.agency_grade eq '4'}">${list.price4}</c:if>
										<c:if test="${user_map.agency_grade eq '5'}">${list.price5}</c:if>
									</td>
									<td style="padding:3px 10px 0;">
										<input type="text" name="number${index.count }" value="0" style="width:30px;margin-bottom: 0;">
										<i class="exchange_num"><img src="/images/exchange_add.png" alt=""><img src="/images/exchange_del.png" alt=""></i>
									</td>
									<td>0</td>
								</tr>
								</c:forEach>
								<tr>
									<td colspan="2">总计<small style="color:#999;">(每销售摇乾树10号1台、1号3台、8号6台、9号35台分别折算1台销售指标)</small></td>
									<td class="numbers">0</td>
									<td><strong style="font-size: 18px;color: #58B058;" class="total">0</strong> 元</td>
								</tr>

								<tr>
									<td colspan="3">账户可用余额</dd>
									<td><strong style="font-size: 18px;color: #08c;" class="funds">${user_map.balance }</strong> 元</td>
								</tr>

								<tr>
									<td colspan="3">结算后账户余额</dd>
									<td><strong style="font-size: 18px;color:#d14;" class="balance">0</strong> 元 
										&nbsp;<a href="#myModal" class="btn btn-small btn-info recharge" style="margin-top:-8px;display:none;width:40px;" data-toggle="modal">充值</a>
									</td>
								</tr>

							</tbody>
						</table>

						<br>
						<blockquote>
							<small>您可以通过下方联系方式联系客服并向下方账户充值。充值账户：62220332010405010，客服电话：4008-119-7895；QQ：2659147448。</small>
							<small>如果您的可用余额不足以支付款项，您也可以点击支付先行下单，充值完成后即可直接发货。</small>
							<small>支付完成后，您的订单可以在 <a href="#" class=" btn-link">订单管理</a> 中查看您的订单</small>
						</blockquote>


						<br>
						<div class="text-center"><input type="submit" value=" 支付 " class="btn btn-success btn-large" style="width:160px;"></div>
						<br>
						
					</form>


				</div>

			
			</div>
		</div>
	</div>


<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			<h4 id="myModalLabel">账户充值方法</h4>
		</div>
		<div class="modal-body" style="line-height:28px;">
			<p>您可以通过下方联系方式联系客服并向下方账户充值。</p>
			<p>充值账户：<strong class="text-info">62220332010405010</strong>。</p>
			<p>客服电话：<strong class="text-info">4008-119-7895</strong>；QQ：<strong class="text-info">2659147448</strong>。</p>
			<p>您也可以 <code>点击支付</code> 先行下单，充值完成后即可直接发货。</p>
		</div>
		<div class="modal-footer">
			<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
		</div>
	</div>



<jsp:include page="footer.jsp" ></jsp:include>

<script>

	
	

	var user_list = $('.user_list');
	var total = $('.total'); //总计
	var funds = parseFloat($('.funds').text()); //资金
	var balance = $('.balance'); //余额
	var recharge = $('.recharge'); //充值
	var number = $('.numbers');

	var changeUser = function(){
		var res = 0;
		var num = [];
		var inpus = user_list.find('.exchange_num').parent().next().each(function(){
			res += parseFloat(this.innerHTML);
		}).end().end().siblings('input').each(function(){
			num.push(this.value);
		});

		number.html(Math.floor(num[0]/3)+Math.floor(num[1]/6)+Math.floor(num[2]/35)+Math.floor(num[3]/1));

		var balan = funds - res;
		total.html(res);
		balance.html(balan);
		recharge[0].style.display = balan<0? 'inline-block': 'none';

	}




	user_list.find('input[type=text]').on('keyup',function(e){
		var keycode = event.which||event.keyCode;
		if(keycode == 37 ||keycode == 38 ||keycode == 39 ||keycode == 40 ) return;
		this.value = (this.value.match(/[\d\.]+/gi) || []).join('') ;
		this.value = this.value.replace(/^0?/gi,'');
		$(this).trigger('change');

	}).on('change',function(){
		this.value = this.value == '' ? 0:this.value;
		var td = $(this).parent();
		td.next().html( parseFloat(td.prev().text())*parseInt(this.value));
		changeUser();
	}).trigger('change');

	$('.exchange_num').on('click','img',function(){
		var $this = $(this);
		var number = $this.parent().siblings('input');
		var idx = $this.parent().children('img').index($this);
		var val =  parseInt(number.val()) || 0;

		if(idx == 0){
			number.val(val+1);
		}else if(idx ==1){
			number.val(val<1? 0:val-1);
		}
		number.trigger('change');

		return false;
		
	});


	
	






</script>

