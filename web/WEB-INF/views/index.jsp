<%@page pageEncoding="UTF-8" contentType="text/html; UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" href="${path}/static/favicon.ico">
	<link rel="stylesheet" href="${path}/static/css/iconfont.css">
	<link rel="stylesheet" href="${path}/static/css/global.css">
	<link rel="stylesheet" href="${path}/static/css/bootstrap.min.css">
	<link rel="stylesheet" href="${path}/static/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="${path}/static/css/swiper.min.css">
	<link rel="stylesheet" href="${path}/static/css/styles.css">
	<script src="${path}/static/js/jquery.1.12.4.min.js" charset="UTF-8"></script>
	<script src="${path}/static/js/bootstrap.min.js" charset="UTF-8"></script>
	<script src="${path}/static/js/swiper.min.js" charset="UTF-8"></script>
	<script src="${path}/static/js/global.js" charset="UTF-8"></script>
	<script src="${path}/static/js/jquery.DJMask.2.1.1.js" charset="UTF-8"></script>
	<title>U袋网</title>

</head>
<body>
	<!-- 顶部tab -->
	<div class="tab-header">
		<div class="inner">
			<div class="pull-left">
				<div class="pull-left">嗨，欢迎来到<span class="cr">U袋网</span></div>
				<a href="${path}/static/agent_level.jsp">网店代销</a>
				<a href="temp_article/udai_article4.jsp">帮助中心</a>
			</div>
			<div class="pull-right">
				<c:if test="${sessionScope.user != null}">
					<a href="${path}/logout"><span class="cr">退出登录</span></a>
				</c:if>
				<c:if test="${sessionScope.user == null}">
					<a href="${path}/login"><span class="cr">登录</span></a>
					<a href="${path}/register">注册</a>
				</c:if>
				<a href="${path}/welcome">我的U袋</a>
				<a href="${path}/]order">我的订单</a>
				<a href="${path}/integral">积分平台</a>
			</div>
		</div>
	</div>
	<!-- 搜索栏 -->
	<div class="top-search">
		<div class="inner">
			<a class="logo" href="${path}/index"><img src="${path}/static/images/icons/logo.jpg" alt="U袋网" class="cover"></a>
			<%@ include file="_form.jsp"%>
			<div class="cart-box">
				<a href="${path}/cart" class="cart-but">
					<i class="iconfont icon-shopcart cr fz16"></i> 购物车 0 件
				</a>
			</div>
		</div>
	</div>
	<!-- 首页导航栏 -->
	<div class="top-nav bg3">
		<div class="nav-box inner">
			<div class="all-cat">
				<div class="title"><i class="iconfont icon-menu"></i> 全部分类</div>
				<div class="cat-list__box">
					<div class="cat-box">
						<c:forEach items="${requestScope.navs}" var="navs">
							<div class="title">
<%--								<a>${navs.class1Name}</a>--%>
							<a href="${path}/item_category?class1Id=${navs.class1Id}" class="iconfont icon-skirt ce">${navs.class1Name}</a>
							</div>
							<ul class="cat-list clearfix">
								<c:forEach items="${navs.children}" var="class2">
									<a style="color: white" href="${path}/item_category?class2Id=${class2.class2Id}">${class2.class2Name}</a>
								</c:forEach>
							</ul>
							<%--<div class="cat-list__deploy">
								<div class="deploy-box">
									<div class="genre-box clearfix">
										<span class="title">下装：</span>
										<div class="genre-list">
											<a href="">牛仔裤</a>
											<a href="">短裤</a>
											<a href="">休闲裤</a>
											<a href="">打底裤</a>
											<a href="">丝袜</a>
										</div>
									</div>
									<div class="genre-box clearfix">
										<span class="title">上装：</span>
										<div class="genre-list">
											<a href="">牛仔裤</a>
											<a href="">短裤</a>
											<a href="">休闲裤</a>
											<a href="">打底裤</a>
											<a href="">丝袜</a>
										</div>
									</div>
									<div class="genre-box clearfix">
										<span class="title">裙装：</span>
										<div class="genre-list">
											<a href="">牛仔裤</a>
											<a href="">短裤</a>
											<a href="">休闲裤</a>
											<a href="">打底裤</a>
											<a href="">丝袜</a>
										</div>
									</div>
									<div class="genre-box clearfix">
										<span class="title">内衣：</span>
										<div class="genre-list">
											<a href="">牛仔裤</a>
											<a href="">短裤</a>
											<a href="">休闲裤</a>
											<a href="">打底裤</a>
											<a href="">丝袜</a>
											<a href="">牛仔裤</a>
											<a href="">短裤</a>
											<a href="">休闲裤</a>
											<a href="">打底裤</a>
											<a href="">丝袜</a>
										</div>
									</div>
								</div>
							</div>--%>
						</c:forEach>
						<%--<c:forEach items="${requestScope.class1}" var="class1">
							<div class="title">
								<a href="${path}/item_category?class1Id=${class1.CLASS1_ID}" class="iconfont icon-skirt ce">${class1.CLASS1_NAME}</a>
							</div>

						</c:forEach>--%>
					</div>
				</div>
			</div>
			<ul class="nva-list">
				<a href="${path}/index"><li class="active">首页</li></a>
				<a href="temp_article/udai_article10.jsp"><li>企业简介</li></a>
				<a href="temp_article/udai_article5.jsp"><li>新手上路</li></a>
				<a href="${path}/class_room.jsp"><li>U袋学堂</li></a>
				<a href="${path}/enterprise_id.jsp"><li>企业账号</li></a>
				<a href="${path}/udai_contract.jsp"><li>诚信合约</li></a>
				<a href="${path}/item_remove.jsp"><li>实时下架</li></a>
			</ul>
			<div class="user-info__box">
				<div class="login-box">
					<div class="avt-port">
						<img src="${path}/static/images/icons/default_avt.png" alt="欢迎来到U袋网" class="cover b-r50">
					</div>
					<!-- 已登录 -->
					<div class="name c6">Hi~ <span class="cr">${sessionScope.user.USER_NAME}</span></div>
					<div class="point c6">积分: ${sessionScope.user.INTEGRAL}</div>

					<!-- 未登录 -->
					<!-- <div class="name c6">Hi~ 你好</div>
					<div class="point c6"><a href="">点此登录</a>，发现更多精彩</div> -->
					<div class="report-box">
<%--						<span class="badge">+30</span>--%>
						<a class="btn btn-info btn-block<%-- disabled--%>" href="#" role="button">已签到${sessionScope.user.CHECK_IN}天</a>
<%--						<a class="btn btn-primary btn-block" href="#" role="button">签到领积分</a>--%>
					</div>
				</div>
				<div class="agent-box">
					<a href="#" class="agent">
						<i class="iconfont icon-fushi"></i>
						<p>申请网店代销</p>
					</a>
					<a href="javascript:;" class="agent">
						<i class="iconfont icon-agent"></i>
						<p><span class="cr">9527</span>位代销商</p>
					</a>
				</div>
				<div class="verify-qq">
					<div class="title">
						<i class="fake"></i>
						<span class="fz12">真假QQ客服验证-远离骗子</span>
					</div>
					<form class="input-group">
						<input class="form-control" placeholder="输入客服QQ号码" type="text">
						<span class="input-group-btn">
							<button class="btn btn-primary submit" id="verifyqq" type="button">验证</button>
						</span>
					</form>
					<script>
						$(function() {
							$('#verifyqq').click(function() {
								DJMask.open({
								　　width:"400px",
								　　height:"150px",
								　　title:"U袋网提示您：",
								　　content:"<b>该QQ不是客服-谨防受骗！</b>"
							　　});
							});
						});
					</script>
				</div>
				<div class="tags">
					<div class="tag"><i class="iconfont icon-real fz16"></i> 品牌正品</div>
					<div class="tag"><i class="iconfont icon-credit fz16"></i> 信誉认证</div>
					<div class="tag"><i class="iconfont icon-speed fz16"></i> 当天发货</div>
					<div class="tag"><i class="iconfont icon-tick fz16"></i> 人工质检</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 顶部轮播 -->
    <div class="swiper-container banner-box">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><a href="${path}/WEB-INF/views/item_show.jsp"><img src="${path}/static/images/temp/banner_1.jpg" class="cover"></a></div>
            <div class="swiper-slide"><a href="${path}/WEB-INF/views/item_show.jsp"><img src="${path}/static/images/temp/banner_2.jpg" class="cover"></a></div>
            <div class="swiper-slide"><a href="item_category.jsp"><img src="${path}/static/images/temp/banner_3.jpg" class="cover"></a></div>
            <div class="swiper-slide"><a href="${path}/WEB-INF/views/item_show.jsp"><img src="${path}/static/images/temp/banner_4.jpg" class="cover"></a></div>
            <div class="swiper-slide"><a href="${path}/item_sale_page.jsp"><img src="${path}/static/images/temp/banner_5.jpg" class="cover"></a></div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
	<!-- 楼层内容 -->
	<div class="content inner" style="margin-bottom: 40px;">
		<section class="scroll-floor floor-1 clearfix">
			<div class="pull-left">
				<div class="floor-title">
					<i class="iconfont icon-tuijian fz16"></i> 爆款推荐
					<a href="" class="more"><i class="iconfont icon-more"></i></a>
				</div>
			</div>
			<div class="pull-right">
				<div class="floor-title">
					<i class="iconfont icon-horn fz16"></i> 平台公告
					<a href="${path}/udai_notice.jsp" class="more"><i class="iconfont icon-more"></i></a>
				</div>
				<div class="con-box">
					<div class="notice-box bgf5">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【公告】U袋网平台已上线，您还在等什么呢？是吧~</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【资讯】P站服务器爆炸啦。国内86%地区IP被限制~</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【公告】六趣公司9月底将彻底关闭66RPG论坛~</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【资讯】Project1站将接盘66RPG，新域名rpg.blue</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【新闻】央行决定对普惠金融实施定向降准政策 最高下调1.5个百分点</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【新闻】那些年看的剧里十大虐心情节，谁戳中了你的泪点？</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【新闻】惨遭魔改？派拉蒙将拍真人版《你的名字。》</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【新闻】外媒称中国限制日本跟团游?旅行社:仍正常发团</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【新闻】广电总局：电台电视台应在重要法定节日播放国歌</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【新闻】高校性教育课成"爆款" 老师都讲哪些"大尺度"内容?</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【新闻】vivo X20全面屏手机首销火爆 陈赫欧豪现身助力</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【新闻】“拒绝妻子手术”现场医生：病人丈夫被冤枉了</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【新闻】游客们注意了！国庆你要避开十大坑</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【新闻】他卖了1.5万双假货，现在面临10年牢狱！</a>
								<a class="swiper-slide ep" href="${path}/udai_notice.jsp">【新闻】10月1日起国家再次提高部分优抚对象抚恤补助标准 烈属抚恤每年23130元</a>
							</div>
						</div>
					</div>
					<div class="buts-box bgf5">
						<div class="but-div">
							<a href="">
								<i class="but-icon"></i>
								<p>物流查询</p>
							</a>
						</div>
						<div class="but-div">
							<a href="${path}/item_sale_page.jsp">
								<i class="but-icon"></i>
								<p>热卖专区</p>
							</a>
						</div>
						<div class="but-div">
							<a href="${path}/item_sale_page.jsp">
								<i class="but-icon"></i>
								<p>满减专区</p>
							</a>
						</div>
						<div class="but-div">
							<a href="${path}/item_sale_page.jsp">
								<i class="but-icon"></i>
								<p>折扣专区</p>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<script>
		$(document).ready(function(){ 
			// 顶部banner轮播
			var banner_swiper = new Swiper('.banner-box', {
				autoplayDisableOnInteraction : false,
				pagination: '.banner-box .swiper-pagination',
				paginationClickable: true,
				autoplay : 5000,
			});
			// 新闻列表滚动
			var notice_swiper = new Swiper('.notice-box .swiper-container', {
				paginationClickable: true,
				mousewheelControl : true,
				direction : 'vertical',
				slidesPerView : 10,
				autoplay : 2e3,
			});
			// 楼层导航自动 active
			$.scrollFloor();
			// 页面下拉固定楼层导航
			$('.floor-nav').smartFloat();
			$('.to-top').toTop({position:false});
		});
	</script>
	<!-- 右侧菜单 -->
	<div class="right-nav">
		<ul class="r-with-gotop">
			<li class="r-toolbar-item">
				<a href="${path}/WEB-INF/views/udai_welcome.jsp" class="r-item-hd">
					<i class="iconfont icon-user"></i>
					<div class="r-tip__box"><span class="r-tip-text">用户中心</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="${path}/WEB-INF/views/udai_shopcart.jsp" class="r-item-hd">
					<i class="iconfont icon-cart" data-badge="10"></i>
					<div class="r-tip__box"><span class="r-tip-text">购物车</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="${path}/udai_collection.jsp" class="r-item-hd">
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
				<a href="${path}/issues.jsp" class="r-item-hd">
					<i class="iconfont icon-liuyan"></i>
					<div class="r-tip__box"><span class="r-tip-text">留言反馈</span></div>
				</a>
			</li>
			<li class="r-toolbar-item to-top">
				<i class="iconfont icon-top"></i>
				<div class="r-tip__box"><span class="r-tip-text">返回顶部</span></div>
			</li>
		</ul>
	</div>
	<!-- 底部信息 -->
	<div class="footer">
		<div class="footer-tags">
			<div class="tags-box inner">
				<div class="tag-div">
					<img src="${path}/static/images/icons/footer_1.gif" alt="厂家直供">
				</div>
				<div class="tag-div">
					<img src="${path}/static/images/icons/footer_2.gif" alt="一件代发">
				</div>
				<div class="tag-div">
					<img src="${path}/static/images/icons/footer_3.gif" alt="美工活动支持">
				</div>
				<div class="tag-div">
					<img src="${path}/static/images/icons/footer_4.gif" alt="信誉认证">
				</div>
			</div>
		</div>
		<div class="footer-links inner">
			<dl>
				<dt>U袋网</dt>
				<a href="temp_article/udai_article10.jsp"><dd>企业简介</dd></a>
				<a href="temp_article/udai_article11.jsp"><dd>加入U袋</dd></a>
				<a href="temp_article/udai_article12.jsp"><dd>隐私说明</dd></a>
			</dl>
			<dl>
				<dt>服务中心</dt>
				<a href="temp_article/udai_article1.jsp"><dd>售后服务</dd></a>
				<a href="temp_article/udai_article2.jsp"><dd>配送服务</dd></a>
				<a href="temp_article/udai_article3.jsp"><dd>用户协议</dd></a>
				<a href="temp_article/udai_article4.jsp"><dd>常见问题</dd></a>
			</dl>
			<dl>
				<dt>新手上路</dt>
				<a href="temp_article/udai_article5.jsp"><dd>如何成为代理商</dd></a>
				<a href="temp_article/udai_article6.jsp"><dd>代销商上架教程</dd></a>
				<a href="temp_article/udai_article7.jsp"><dd>分销商常见问题</dd></a>
				<a href="temp_article/udai_article8.jsp"><dd>付款账户</dd></a>
			</dl>
		</div>
		<div class="copy-box clearfix">
			<ul class="copy-links">
				<a href="${path}/agent_level.jsp"><li>网店代销</li></a>
				<a href="${path}/class_room.jsp"><li>U袋学堂</li></a>
				<a href="${path}/udai_about.jsp"><li>联系我们</li></a>
				<a href="temp_article/udai_article10.jsp"><li>企业简介</li></a>
				<a href="temp_article/udai_article5.jsp"><li>新手上路</li></a>
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
