<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


	<div class="container">




		<br>
		<legend></legend>
		<p class="footer_links">
			<a href="http://www.anzimall.com/">积分商城</a>
			<a href="http://union.anzimall.com/">异业联盟</a>
			<a href="http://card.anzipay.com/">安子预付卡</a>
			<a href="http://anzipay.com/">安子支付</a>
			<a href="http://www.anziapp.com/">安子助手</a>
			<a href="http://119.254.69.98:8090/agentmgr/">分销平台</a>
		</p>
		<p class="footer_copyright">备案号粤ICP备13079336号  &copy; Copyright 2015 安子支付 版权所有 | 客服电话：4008-119-7895 | QQ：2659147448。 </p>
		<br>
	</div>




	<script src="/js/jquery.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/fukrm.js"></script>
    <script>
    	
    	// 侧边焦点问题
		var pathname = location.pathname || '';
		$('.aside').find('a').filter(function(){return pathname.indexOf(this.getAttribute('href')) >-1;}).last().parent().addClass('active')



    </script>
</body>
</html>