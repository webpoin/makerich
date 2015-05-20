<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<jsp:include page="header.jsp" ></jsp:include>



<div class="login">
		

		<div class="login_banner">
			<ul>
				<li><img src="/images/login_banner1.jpg" alt=""></li>
				<li><img src="/images/login_banner2.jpg" alt=""></li>
				<li><img src="/images/login_banner3.jpg" alt=""></li>
			</ul>
		</div>


		<form class="login_form fukrm" action="/user_login.shtml" method="post" >



			<h2><!-- 登录异业联盟 -->&nbsp;</h2>
			

			<cite><span><img src="/images/login_icon1.png" alt=""></span>
				<input type="text" name="phone" placeholder="请输入手机账号" check="required,phone">
			</cite>
			
			<cite><span><img src="/images/login_icon2.png" alt=""></span>
				<input type="password" name="password" placeholder="请输入登录密码" check="required,password">
			</cite>

			<cite><span><img src="/images/login_icon3.png" alt=""></span>
				<input type="text" name="checkcode" placeholder="请输入右边验证码" check="required" style="width: 110px;" class="notecheckcode">
				<b class="checkcode"><img src="/authImg?type=loginCode&id=1" onclick="this.src=this.src.replace(/\d*$/,(new Date).getTime())"/></b>

			</cite>

			<div class="login_submit">
				<a href="/to_register.shtml" style="color:#ee2323;">立即注册</a>
				<input type="submit" value="登 &nbsp; 录">
			</div>
			
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
	
	$.fn.extend({
	slides: function(opts) {

		opts = jQuery.extend({name:'slides',speed:300,start:0,auto:true,interval:5000}, opts || {});//默认参数
		
		return this.each(function(){

			var $this = $(this);
			var item = $this.find('li').not(':first-child').css({opacity:0}).end();
			var idx = opts.start;
			var size = item.length;
			var interval = false;
			
			var crl = $('<div/>').addClass(opts.name+'_crl').html('123456789'.substr(0,size).replace(/(\d)/g,"<b>$1</b>")).appendTo($this).children('b').eq(opts.start).addClass('on').end();
			

			var anim = function(form,to){

				item.stop(true,true);

				item.eq(form).css({'z-index':0}).animate({opacity:0},opts.speed);
				item.eq(to).css({'z-index':1}).animate({opacity:1},opts.speed);
				crl.eq(form).removeClass('on').end().eq(to).addClass('on');
				idx = to;
			}


			//动画	
			var next = function(){	
				anim(idx,++idx >= size ? 0 : idx);
			}

			var prev = function(){
				anim(idx,--idx <=0  ? 0 : idx);
			}


			if(opts.auto){
				interval = setInterval(next,opts.interval);
			}


			$this.on({mouseenter:function(){
				// 暂停
				interval = interval && clearInterval(interval) && false;
			},mouseleave:function(){
				// 启动
				interval = interval || setInterval(next,opts.interval);
			}});



			crl.on('click',function(){

				// 重置
				interval && clearInterval(interval);
				interval =  setInterval(next,opts.interval);
				anim(idx,crl.index($(this)));

				return false;
			})

		});
	}
});

$('.login_banner').slides({name:'slide',interval:5000,speed:1000});

</script>
