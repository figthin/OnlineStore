<%@page pageEncoding="UTF-8" contentType="text/html; utf-8" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/iconfont.css">
	<link rel="stylesheet" href="css/global.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="css/swiper.min.css">
	<link rel="stylesheet" href="css/styles.css">
	<script src="js/jquery.1.12.4.min.js" charset="UTF-8"></script>
	<script src="js/bootstrap.min.js" charset="UTF-8"></script>
	<script src="js/swiper.min.js" charset="UTF-8"></script>
	<script src="js/global.js" charset="UTF-8"></script>
	<script src="js/jquery.DJMask.2.1.1.js" charset="UTF-8"></script>
	<title>U袋网</title>
</head>
<body>
	<!-- 顶部tab -->
	<div class="tab-header">
		<div class="inner">
			<div class="pull-left">
				<div class="pull-left">嗨，欢迎来到<span class="cr">U袋网</span></div>
				<a href="agent_level.html">网店代销</a>
				<a href="temp_article/udai_article4.html">帮助中心</a>
			</div>
			<div class="pull-right">
				<a href="login.html"><span class="cr">登录</span></a>
				<a href="login.html?p=register">注册</a>
				<a href="udai_welcome.html">我的U袋</a>
				<a href="udai_order.html">我的订单</a>
				<a href="udai_integral.html">积分平台</a>
			</div>
		</div>
	</div>
	<!-- 搜索栏 -->
	<div class="top-search">
		<div class="inner">
			<a class="logo" href="index.html"><img src="images/icons/logo.jpg" alt="U袋网" class="cover"></a>
			<div class="search-box">
				<form class="input-group">
					<input placeholder="Ta们都在搜U袋网" type="text">
					<span class="input-group-btn">
						<button type="button">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
					</span>
				</form>
				<p class="help-block text-nowrap">
					<a href="">连衣裙</a>
					<a href="">裤</a>
					<a href="">衬衫</a>
					<a href="">T恤</a>
					<a href="">女包</a>
					<a href="">家居服</a>
					<a href="">2017新款</a>
				</p>
			</div>
			<div class="cart-box">
				<a href="udai_shopcart.html" class="cart-but">
					<i class="iconfont icon-shopcart cr fz16"></i> 购物车 0 件
				</a>
			</div>
		</div>
	</div>
	<!-- 内页导航栏 -->
	<div class="top-nav bg3">
		<div class="nav-box inner">
			<div class="all-cat">
				<div class="title"><i class="iconfont icon-menu"></i> 全部分类</div>
			</div>
			<ul class="nva-list">
				<a href="index.html"><li>首页</li></a>
				<a href="temp_article/udai_article10.html"><li>企业简介</li></a>
				<a href="temp_article/udai_article5.html"><li>新手上路</li></a>
				<a href="class_room.html"><li>U袋学堂</li></a>
				<a href="enterprise_id.html"><li>企业账号</li></a>
				<a href="udai_contract.html"><li>诚信合约</li></a>
				<a href="item_remove.html"><li>实时下架</li></a>
			</ul>
		</div>
	</div>
	<div class="content inner">
		<section class="invite-agent clearfix">
			<div class="agent-level">
				<h2 class="cr fz18">诚邀网店代销</h2>
				<p class="c6">您的账户还不是代销商，<a href="#agent">立即开通</a>！</p>
				<!-- <p class="c6">欢迎您，亲爱的代销商，您当前的等级是【一级会员代销商】</p> -->
				<div class="agent-buy clearfix">
					<form action="" class="content" id="agent" style="border-right: 1px solid #b31e22">
						<b class="fz16 cr">选择您所需的会员：</b>
						<div class="radio"><label><input name="agent" value="lv1" type="radio"><i class="iconfont icon-radio-checked"></i>一级会员代销商：300元</label></div>
						<div class="radio"><label><input name="agent" value="lv2" type="radio"><i class="iconfont icon-radio"></i>二级会员代销商：500元</label></div>
						<div class="radio"><label><input name="agent" value="lv3" type="radio"><i class="iconfont"></i>高级会员代销商：1000元</label></div>
						<button type="button" class="btn btn-block btn-primary">立即支付</button>
					</form>
					<!-- <form action="" class="content" id="agent" style="border-right: 1px solid #b31e22">
						<b class="fz16 cr">您可以升级为以下会员：</b>
						<div class="radio"><label><i class="iconfont"></i><input name="agent" value="lv2" type="radio">二级会员代销商：500元</label></div>
						<div class="radio"><label><i class="iconfont"></i><input name="agent" value="lv3" type="radio">高级会员代销商：1000元</label></div>
						<button type="button" class="btn btn-block btn-primary">立即支付</button>
					</form> -->
					<!-- <form action="" class="content" id="agent" style="border-right: 1px solid #b31e22">
						<b class="fz16 cr">您已高级会员代销商！</b>
						<p><br></p>
						<b class="fz20 c6">感谢您对我们的信赖，<br><small>U袋网竭诚为您服务~</small></b>
					</form> -->
					<div class="content">
						<h2>特权说明</h2>
						<p>1.支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br>支付宝收款接口：在线即可开通，零预付，免年费，单笔阶梯费率，无流量限制支付宝网站(www.alipay.com) <br>是国内先进的网上支付平台。<br>2.支付宝收款接口：在线即可开通，零预付，免年费，单笔阶梯费率，无流量限制</p>
					</div>
				</div>
			</div>
		</section>
		<section class="invite-agent clearfix">
			<div class="filter-value">
				<div class="filter-title">网店代销说明</div>
			</div>
			<div class="html-code">
				<p>1.开通代理需要填写申请代理的信息，并额定支付代理费用提交后台审核，审核通过后成为代理，代理和普通会员显示的商品的价格不同，结算的时候会展示比普通会员优惠的金额</p>
				<p>2.代理和普通会员的区别：普通会员可以购买2件商品。代理购买商品时无数量限制</p>
				<p><img src="images/temp/agent-rule.jpg" alt="" width="100%"></p>
			</div>
		</section>
	</div>
	<!-- 右侧菜单 -->
	<div class="right-nav">
		<ul class="r-with-gotop">
			<li class="r-toolbar-item">
				<a href="udai_welcome.html" class="r-item-hd">
					<i class="iconfont icon-user" data-badge="0"></i>
					<div class="r-tip__box"><span class="r-tip-text">用户中心</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="udai_shopcart.html" class="r-item-hd">
					<i class="iconfont icon-cart"></i>
					<div class="r-tip__box"><span class="r-tip-text">购物车</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="udai_collection.html" class="r-item-hd">
					<i class="iconfont icon-aixin"></i>
					<div class="r-tip__box"><span class="r-tip-text">我的收藏</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="" class="r-item-hd">
					<i class="iconfont icon-liaotian"></i>
					<div class="r-tip__box"><span class="r-tip-text">联系客服</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="issues.html" class="r-item-hd">
					<i class="iconfont icon-liuyan"></i>
					<div class="r-tip__box"><span class="r-tip-text">留言反馈</span></div>
				</a>
			</li>
			<li class="r-toolbar-item to-top">
				<i class="iconfont icon-top"></i>
				<div class="r-tip__box"><span class="r-tip-text">返回顶部</span></div>
			</li>
		</ul>
		<script>
			$(document).ready(function(){ $('.to-top').toTop({position:false}) });
		</script>
	</div>
	<!-- 底部信息 -->
	<div class="footer">
		<div class="footer-tags">
			<div class="tags-box inner">
				<div class="tag-div">
					<img src="images/icons/footer_1.gif" alt="厂家直供">
				</div>
				<div class="tag-div">
					<img src="images/icons/footer_2.gif" alt="一件代发">
				</div>
				<div class="tag-div">
					<img src="images/icons/footer_3.gif" alt="美工活动支持">
				</div>
				<div class="tag-div">
					<img src="images/icons/footer_4.gif" alt="信誉认证">
				</div>
			</div>
		</div>
		<div class="footer-links inner">
			<dl>
				<dt>U袋网</dt>
				<a href="temp_article/udai_article10.html"><dd>企业简介</dd></a>
				<a href="temp_article/udai_article11.html"><dd>加入U袋</dd></a>
				<a href="temp_article/udai_article12.html"><dd>隐私说明</dd></a>
			</dl>
			<dl>
				<dt>服务中心</dt>
				<a href="temp_article/udai_article1.html"><dd>售后服务</dd></a>
				<a href="temp_article/udai_article2.html"><dd>配送服务</dd></a>
				<a href="temp_article/udai_article3.html"><dd>用户协议</dd></a>
				<a href="temp_article/udai_article4.html"><dd>常见问题</dd></a>
			</dl>
			<dl>
				<dt>新手上路</dt>
				<a href="temp_article/udai_article5.html"><dd>如何成为代理商</dd></a>
				<a href="temp_article/udai_article6.html"><dd>代销商上架教程</dd></a>
				<a href="temp_article/udai_article7.html"><dd>分销商常见问题</dd></a>
				<a href="temp_article/udai_article8.html"><dd>付款账户</dd></a>
			</dl>
		</div>
		<div class="copy-box clearfix">
			<ul class="copy-links">
				<a href="agent_level.html"><li>网店代销</li></a>
				<a href="class_room.html"><li>U袋学堂</li></a>
				<a href="udai_about.html"><li>联系我们</li></a>
				<a href="temp_article/udai_article10.html"><li>企业简介</li></a>
				<a href="temp_article/udai_article5.html"><li>新手上路</li></a>
			</ul>
			<!-- 版权 -->
			<p class="copyright">
				© 2005-2017 U袋网 版权所有，并保留所有权利<br>
				ICP备案证书号：闽ICP备16015525号-2&nbsp;&nbsp;&nbsp;&nbsp;福建省宁德市福鼎市南下村小区（锦昌阁）1栋1梯602室&nbsp;&nbsp;&nbsp;&nbsp;Tel: 18650406668&nbsp;&nbsp;&nbsp;&nbsp;E-mail: 18650406668@qq.com
			</p>
		</div>
	</div>
</body>
</html>