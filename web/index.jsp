<%@page pageEncoding="UTF-8" contentType="text/html; UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/iconfont.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/global.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
	<script src="${pageContext.request.contextPath}/js/jquery.1.12.4.min.js" charset="UTF-8"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" charset="UTF-8"></script>
	<script src="${pageContext.request.contextPath}/js/swiper.min.js" charset="UTF-8"></script>
	<script src="${pageContext.request.contextPath}/js/global.js" charset="UTF-8"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.DJMask.2.1.1.js" charset="UTF-8"></script>
	<title>U袋网</title>
</head>
<body>
	<!-- 顶部tab -->
	<div class="tab-header">
		<div class="inner">
			<div class="pull-left">
				<div class="pull-left">嗨，欢迎来到<span class="cr">U袋网</span></div>
				<a href="${pageContext.request.contextPath}/agent_level.jsp">网店代销</a>
				<a href="temp_article/udai_article4.html">帮助中心</a>
			</div>
			<div class="pull-right">
				<a href="${pageContext.request.contextPath}/login.jsp"><span class="cr">登录</span></a>
				<a href="${pageContext.request.contextPath}/login.jsp?p=register">注册</a>
				<a href="udai_welcome.html">我的U袋</a>
				<a href="${pageContext.request.contextPath}/udai_order.jsp">我的订单</a>
				<a href="udai_integral.html">积分平台</a>
			</div>
		</div>
	</div>
	<!-- 搜索栏 -->
	<div class="top-search">
		<div class="inner">
			<a class="logo" href="index.html"><img src="${pageContext.request.contextPath}/images/icons/logo.jpg" alt="U袋网" class="cover"></a>
			<div class="search-box">
				<form class="input-group">
					<input placeholder="Ta们都在搜U袋网" type="text">
					<span class="input-group-btn">
						<button type="button">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
					</span>
				</form>
				<%--<p class="help-block text-nowrap">
					<a href="">连衣裙</a>
					<a href="">裤</a>
					<a href="">衬衫</a>
					<a href="">T恤</a>
					<a href="">女包</a>
					<a href="">家居服</a>
					<a href="">2017新款</a>
				</p>--%>
			</div>
			<div class="cart-box">
				<a href="udai_shopcart.html" class="cart-but">
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
						<div class="title">
							<i class="iconfont icon-skirt ce"></i> 女装
						</div>
						<ul class="cat-list clearfix">
							<li>下装</li>
							<li>上装</li>
							<li>裙装</li>
							<li>内衣</li>
						</ul>
						<div class="cat-list__deploy">
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
						</div>
					</div>
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-fushi ce"></i> 男装
						</div>
						<ul class="cat-list clearfix">
							<li>下装</li>
							<li>上装</li>
							<li>套装</li>
						</ul>
						<div class="cat-list__deploy">
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
									<span class="title">套装：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-bao ce"></i> 包包
						</div>
						<ul class="cat-list clearfix">
							<li>女士包包</li>
							<li>男士包包</li>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<div class="genre-box clearfix">
									<span class="title">女士包包：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">男士包包：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-kid ce"></i> 童装
						</div>
						<ul class="cat-list clearfix">
							<li>女童</li>
							<li>男童</li>
							<li>男女童鞋</li>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<div class="genre-box clearfix">
									<span class="title">女童：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">男童：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">男女童鞋：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-shoes ce"></i> 鞋靴
						</div>
						<ul class="cat-list clearfix">
							<li>男鞋</li>
							<li>女鞋</li>
							<li>儿童鞋</li>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<div class="genre-box clearfix">
									<span class="title">男鞋：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">女鞋：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">儿童鞋：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<ul class="nva-list">
				<a href="index.html"><li class="active">首页</li></a>
				<a href="temp_article/udai_article10.html"><li>企业简介</li></a>
				<a href="temp_article/udai_article5.html"><li>新手上路</li></a>
				<a href="class_room.html"><li>U袋学堂</li></a>
				<a href="enterprise_id.html"><li>企业账号</li></a>
				<a href="udai_contract.html"><li>诚信合约</li></a>
				<a href="item_remove.html"><li>实时下架</li></a>
			</ul>
			<div class="user-info__box">
				<div class="login-box">
					<div class="avt-port">
						<img src="${pageContext.request.contextPath}/images/icons/default_avt.png" alt="欢迎来到U袋网" class="cover b-r50">
					</div>
					<!-- 已登录 -->
					<div class="name c6">Hi~ <span class="cr">18759808122</span></div>
					<div class="point c6">积分: 30</div>

					<!-- 未登录 -->
					<!-- <div class="name c6">Hi~ 你好</div>
					<div class="point c6"><a href="">点此登录</a>，发现更多精彩</div> -->
					<div class="report-box">
						<span class="badge">+30</span>
						<a class="btn btn-info btn-block disabled" href="#" role="button">已签到1天</a>
						<!-- <a class="btn btn-primary btn-block" href="#" role="button">签到领积分</a> -->
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
            <div class="swiper-slide"><a href="item_show.html"><img src="${pageContext.request.contextPath}/images/temp/banner_1.jpg" class="cover"></a></div>
            <div class="swiper-slide"><a href="item_show.html"><img src="${pageContext.request.contextPath}/images/temp/banner_2.jpg" class="cover"></a></div>
            <div class="swiper-slide"><a href="item_category.html"><img src="${pageContext.request.contextPath}/images/temp/banner_3.jpg" class="cover"></a></div>
            <div class="swiper-slide"><a href="item_show.html"><img src="${pageContext.request.contextPath}/images/temp/banner_4.jpg" class="cover"></a></div>
            <div class="swiper-slide"><a href="item_sale_page.html"><img src="${pageContext.request.contextPath}/images/temp/banner_5.jpg" class="cover"></a></div>
        </div>
        <div class="swiper-pagination"></div>
    </div>
    <!-- 首页楼层导航 -->
	<nav class="floor-nav visible-lg-block">
		<span class="scroll-nav active">爆款推荐</span>
		<span class="scroll-nav">女装</span>
		<span class="scroll-nav">男装</span>
		<span class="scroll-nav">活力童装</span>
		<span class="scroll-nav">时尚包包</span>
		<span class="scroll-nav">鞋靴</span>
	</nav>
	<!-- 楼层内容 -->
	<div class="content inner" style="margin-bottom: 40px;">
		<section class="scroll-floor floor-1 clearfix">
			<div class="pull-left">
				<div class="floor-title">
					<i class="iconfont icon-tuijian fz16"></i> 爆款推荐
					<a href="" class="more"><i class="iconfont icon-more"></i></a>
				</div>
				<div class="con-box">
					<a class="left-img hot-img" href="">
						<img src="${pageContext.request.contextPath}/images/floor_1.jpg" alt="" class="cover">
					</a>
					<div class="right-box hot-box">
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="${pageContext.request.contextPath}/images/temp/S-001.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6">进货价</span>
							</div>
							<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="${pageContext.request.contextPath}/images/temp/S-002.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6">进货价</span>
							</div>
							<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="${pageContext.request.contextPath}/images/temp/S-003.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6">进货价</span>
							</div>
							<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="${pageContext.request.contextPath}/images/temp/S-004.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6">进货价</span>
							</div>
							<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="${pageContext.request.contextPath}/images/temp/S-005.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6">进货价</span>
							</div>
							<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="${pageContext.request.contextPath}/images/temp/S-006.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6">进货价</span>
							</div>
							<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
						</a>
					</div>
				</div>
			</div>
			<div class="pull-right">
				<div class="floor-title">
					<i class="iconfont icon-horn fz16"></i> 平台公告
					<a href="udai_notice.html" class="more"><i class="iconfont icon-more"></i></a>
				</div>
				<div class="con-box">
					<div class="notice-box bgf5">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<a class="swiper-slide ep" href="udai_notice.html">【公告】U袋网平台已上线，您还在等什么呢？是吧~</a>
								<a class="swiper-slide ep" href="udai_notice.html">【资讯】P站服务器爆炸啦。国内86%地区IP被限制~</a>
								<a class="swiper-slide ep" href="udai_notice.html">【公告】六趣公司9月底将彻底关闭66RPG论坛~</a>
								<a class="swiper-slide ep" href="udai_notice.html">【资讯】Project1站将接盘66RPG，新域名rpg.blue</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】央行决定对普惠金融实施定向降准政策 最高下调1.5个百分点</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】那些年看的剧里十大虐心情节，谁戳中了你的泪点？</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】惨遭魔改？派拉蒙将拍真人版《你的名字。》</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】外媒称中国限制日本跟团游?旅行社:仍正常发团</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】广电总局：电台电视台应在重要法定节日播放国歌</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】高校性教育课成"爆款" 老师都讲哪些"大尺度"内容?</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】vivo X20全面屏手机首销火爆 陈赫欧豪现身助力</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】“拒绝妻子手术”现场医生：病人丈夫被冤枉了</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】游客们注意了！国庆你要避开十大坑</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】他卖了1.5万双假货，现在面临10年牢狱！</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】10月1日起国家再次提高部分优抚对象抚恤补助标准 烈属抚恤每年23130元</a>
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
							<a href="item_sale_page.html">
								<i class="but-icon"></i>
								<p>热卖专区</p>
							</a>
						</div>
						<div class="but-div">
							<a href="item_sale_page.html">
								<i class="but-icon"></i>
								<p>满减专区</p>
							</a>
						</div>
						<div class="but-div">
							<a href="item_sale_page.html">
								<i class="but-icon"></i>
								<p>折扣专区</p>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-2">
			<div class="floor-title">
				<i class="iconfont icon-skirt fz16"></i> 女装
				<div class="case-list fz0 pull-right">
					<a href="item_category.html">高端女装</a>
					<a href="item_category.html">时尚女装</a>
					<a href="item_category.html">上装</a>
					<a href="item_category.html">下装</a>
					<a href="item_category.html">裙装</a>
					<a href="item_category.html">内衣</a>
				</div>
			</div>
			<div class="con-box">
				<a class="left-img hot-img" href="">
					<img src="${pageContext.request.contextPath}/images/floor_2.jpg" alt="" class="cover">
				</a>
				<div class="right-box">
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-001.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-002.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-003.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-004.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-005.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-006.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-007.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-008.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-3">
			<div class="floor-title">
				<i class="iconfont icon-fushi fz16"></i> 男装
				<div class="case-list fz0 pull-right">
					<a href="item_category.html">高端女装</a>
					<a href="item_category.html">时尚女装</a>
					<a href="item_category.html">上装</a>
					<a href="item_category.html">下装</a>
					<a href="item_category.html">裙装</a>
					<a href="item_category.html">内衣</a>
				</div>
			</div>
			<div class="con-box">
				<a class="left-img hot-img" href="">
					<img src="${pageContext.request.contextPath}/images/floor_3.jpg" alt="" class="cover">
				</a>
				<div class="right-box">
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-001.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-002.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-003.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-004.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-005.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-006.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-007.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-008.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-4">
			<div class="floor-title">
				<i class="iconfont icon-kid fz16"></i> 活力童装
				<div class="case-list fz0 pull-right">
					<a href="item_category.html">高端女装</a>
					<a href="item_category.html">时尚女装</a>
					<a href="item_category.html">上装</a>
					<a href="item_category.html">下装</a>
					<a href="item_category.html">裙装</a>
					<a href="item_category.html">内衣</a>
				</div>
			</div>
			<div class="con-box">
				<a class="left-img hot-img" href="">
					<img src="${pageContext.request.contextPath}/images/floor_4.jpg" alt="" class="cover">
				</a>
				<div class="right-box">
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-011.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-012.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-013.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-014.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-015.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-016.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-017.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-018.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-5">
			<div class="floor-title">
				<i class="iconfont icon-bao fz16"></i> 时尚包包
				<div class="case-list fz0 pull-right">
					<a href="item_category.html">高端女装</a>
					<a href="item_category.html">时尚女装</a>
					<a href="item_category.html">上装</a>
					<a href="item_category.html">下装</a>
					<a href="item_category.html">裙装</a>
					<a href="item_category.html">内衣</a>
				</div>
			</div>
			<div class="con-box">
				<a class="left-img hot-img" href="">
					<img src="${pageContext.request.contextPath}/images/floor_5.jpg" alt="" class="cover">
				</a>
				<div class="right-box">
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-011.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-012.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-013.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-014.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-015.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-016.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-017.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-018.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-6">
			<div class="floor-title">
				<i class="iconfont icon-shoes fz16"></i> 鞋靴
				<div class="case-list fz0 pull-right">
					<a href="item_category.html">高端女装</a>
					<a href="item_category.html">时尚女装</a>
					<a href="item_category.html">上装</a>
					<a href="item_category.html">下装</a>
					<a href="item_category.html">裙装</a>
					<a href="item_category.html">内衣</a>
				</div>
			</div>
			<div class="con-box">
				<a class="left-img hot-img" href="">
					<img src="${pageContext.request.contextPath}/images/floor_6.jpg" alt="" class="cover">
				</a>
				<div class="right-box">
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-009.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-009.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-010.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-010.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-019.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-019.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/S-020.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
					<a href="item_show.html" class="floor-item">
						<div class="item-img hot-img">
							<img src="${pageContext.request.contextPath}/images/temp/M-020.jpg" alt="纯色圆领短袖T恤活a动衫弹" class="cover">
						</div>
						<div class="price clearfix">
							<span class="pull-left cr fz16">￥18.0</span>
							<span class="pull-right c6">进货价</span>
						</div>
						<div class="name ep" title="纯色圆领短袖T恤活a动衫弹力柔软">纯色圆领短袖T恤活a动衫弹力柔软</div>
					</a>
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
				<a href="udai_welcome.html" class="r-item-hd">
					<i class="iconfont icon-user"></i>
					<div class="r-tip__box"><span class="r-tip-text">用户中心</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="udai_shopcart.html" class="r-item-hd">
					<i class="iconfont icon-cart" data-badge="10"></i>
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
	</div>
	<!-- 底部信息 -->
	<div class="footer">
		<div class="footer-tags">
			<div class="tags-box inner">
				<div class="tag-div">
					<img src="${pageContext.request.contextPath}/images/icons/footer_1.gif" alt="厂家直供">
				</div>
				<div class="tag-div">
					<img src="${pageContext.request.contextPath}/images/icons/footer_2.gif" alt="一件代发">
				</div>
				<div class="tag-div">
					<img src="${pageContext.request.contextPath}/images/icons/footer_3.gif" alt="美工活动支持">
				</div>
				<div class="tag-div">
					<img src="${pageContext.request.contextPath}/images/icons/footer_4.gif" alt="信誉认证">
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
