<%@page pageEncoding="UTF-8" contentType="text/html; UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<%@include file="_head.jsp"%>
<body>
	<%@include file="_nav.jsp"%>
	<div class="content inner">
		<section class="filter-section clearfix">
			<ol class="breadcrumb">
				<li><a href="index.jsp">首页</a></li>
				<li class="active">满减专区</li>
			</ol>
			<div class="filter-box">
				<div class="all-filter">
					<div class="filter-value">
						<a href="" class="sale-title">满减专区</a>
						<a href="" class="sale-title active">热卖专区</a>
						<a href="" class="sale-title">折扣专区</a>
					</div>
				</div>
			</div>
			<div class="sort-box bgf5">
				<div class="sort-text">排序：</div>
				<a href=""><div class="sort-text">销量 <i class="iconfont icon-sortDown"></i></div></a>
				<a href=""><div class="sort-text">评价 <i class="iconfont icon-sortUp"></i></div></a>
				<a href=""><div class="sort-text">价格 <i class="iconfont"></i></div></a>
				<div class="sort-total pull-right">共1688个商品</div>
			</div>
		</section>
		<section class="item-show__div clearfix">
			<div class="pull-left">
				<div class="item-list__area clearfix">
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-001.jpg" alt="锦瑟 原创传统日常汉服男绣花交领衣裳cp情侣装春夏款" class="cover">
							<div class="name">锦瑟 原创传统日常汉服男绣花交领衣裳cp情侣装春夏款</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale no-hide"><a href="">满100减20</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-002.jpg" alt="霜天月明 原创日常汉服男云纹绣花单大氅传统礼服外套" class="cover">
							<div class="name">霜天月明 原创日常汉服男云纹绣花单大氅传统礼服外套</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<!-- 优惠和满减常态显示不隐藏加上 no-hide 类 -->
							<!-- <div class="sale"><a href="">加入购物车</a></div>
							<div class="sale no-hide"><a href="">8折优惠</a></div> -->
							<div class="sale no-hide"><a href="">8折优惠</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-003.jpg" alt="陇上乐原创传统日常汉服男绣花交领cp情侣非古装春秋" class="cover">
							<div class="name">陇上乐原创传统日常汉服男绣花交领cp情侣非古装春秋</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-004.jpg" alt="霜天月明 原创传统日常汉服男绣花交领衣裳cp春装单品" class="cover">
							<div class="name">霜天月明 原创传统日常汉服男绣花交领衣裳cp春装单品</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-005.jpg" alt="琅轩日常汉服男龙纹绣花短褙子气质传统外套春秋非古装" class="cover">
							<div class="name">琅轩日常汉服男龙纹绣花短褙子气质传统外套春秋非古装</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-006.jpg" alt="峥嵘 原创设计传统日常汉服男绣花唐制圆领袍春秋非古装" class="cover">
							<div class="name">峥嵘 原创设计传统日常汉服男绣花唐制圆领袍春秋非古装</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-007.jpg" alt="陇上乐原创传统日常汉服男绣花单大氅大袖衫cp情侣春秋" class="cover">
							<div class="name">陇上乐原创传统日常汉服男绣花单大氅大袖衫cp情侣春秋</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-008.jpg" alt="擎苍原创传统绣花交领衣裳春装单品日常汉服男非 古装" class="cover">
							<div class="name">擎苍原创传统绣花交领衣裳春装单品日常汉服男非 古装</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-009.jpg" alt="英华原创品牌日常汉服弓道服绣花情侣cp装男款交领衣裳" class="cover">
							<div class="name">英华原创品牌日常汉服弓道服绣花情侣cp装男款交领衣裳</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-010.jpg" alt="怀楚原创品牌汉服男绣花日常长中长半臂短打裋褐上衣春夏" class="cover">
							<div class="name">怀楚原创品牌汉服男绣花日常长中长半臂短打裋褐上衣春夏</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-011.jpg" alt="舍竹改良汉服日常汉元素中国民族风男款绣花交领上衣春秋" class="cover">
							<div class="name">舍竹改良汉服日常汉元素中国民族风男款绣花交领上衣春秋</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-012.jpg" alt="乌鹭原创设计日常汉服情侣cp装男款绣花半臂交领春秋" class="cover">
							<div class="name">乌鹭原创设计日常汉服情侣cp装男款绣花半臂交领春秋</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-013.jpg" alt="锦瑟 原创日常汉服男装传统cp情侣装绣花对襟半臂夏款" class="cover">
							<div class="name">锦瑟 原创日常汉服男装传统cp情侣装绣花对襟半臂夏款</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-014.jpg" alt="霜天月明新款传统日常汉服男绣花半臂单上衣cp情侣夏装" class="cover">
							<div class="name">霜天月明新款传统日常汉服男绣花半臂单上衣cp情侣夏装</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-015.jpg" alt="琅轩 原创品牌日常汉服男棉麻纯色交领上衣春夏装单品" class="cover">
							<div class="name">琅轩 原创品牌日常汉服男棉麻纯色交领上衣春夏装单品</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-016.jpg" alt="青鸾原创传统日常汉服男装绣花上衣下裳大氅单品非" class="cover">
							<div class="name">青鸾原创传统日常汉服男装绣花上衣下裳大氅单品非</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-017.jpg" alt="墨染 原创设计改良汉服男竹节棉日常松紧抽绳单裤子百搭" class="cover">
							<div class="name">墨染 原创设计改良汉服男竹节棉日常松紧抽绳单裤子百搭</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-018.jpg" alt="飞廉原创品牌传统日常绣花汉服情侣cp装男款交领衣裳" class="cover">
							<div class="name">飞廉原创品牌传统日常绣花汉服情侣cp装男款交领衣裳</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-019.jpg" alt="和如原创设计汉服男女cp情侣装绣花交领襦裙披风大氅" class="cover">
							<div class="name">和如原创设计汉服男女cp情侣装绣花交领襦裙披风大氅</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.jsp" class="photo">
							<img src="images/temp/M-020.jpg" alt="白鹭行原创传统日常汉服男装绣花短褙子百搭外套单品春夏" class="cover">
							<div class="name">白鹭行原创传统日常汉服男装绣花短褙子百搭外套单品春夏</div></a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
				</div>
				<!-- 分页 -->
				<div class="page text-right clearfix">
					<a class="disabled">上一页</a>
					<a class="select">1</a>
					<a href="">2</a>
					<a href="">3</a>
					<a href="">4</a>
					<a href="">5</a>
					<a class="" href="">下一页</a>
					<a class="disabled">1/5页</a>
					<form action="" class="page-order">
						到第
						<input type="text" name="page">
						页
						<input class="sub" type="submit" value="确定">
					</form>
				</div>
			</div>
			<div class="pull-right">
				
				<div class="desc-segments__content">
					<div class="lace-title">
						<span class="c6">爆款推荐</span>
					</div>
					<div class="picked-box">
						<a href="" class="picked-item"><img src="images/temp/S-001.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-002.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-003.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-004.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-005.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-006.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-007.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-008.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-009.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-010.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- 右侧菜单 -->
	<div class="right-nav">
		<ul class="r-with-gotop">
			<li class="r-toolbar-item">
				<a href="udai_welcome.jsp" class="r-item-hd">
					<i class="iconfont icon-user" data-badge="0"></i>
					<div class="r-tip__box"><span class="r-tip-text">用户中心</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="udai_shopcart.jsp" class="r-item-hd">
					<i class="iconfont icon-cart"></i>
					<div class="r-tip__box"><span class="r-tip-text">购物车</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="../../udai_collection.jsp" class="r-item-hd">
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
				<a href="../../issues.jsp" class="r-item-hd">
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
	<%@include file="_foot.jsp"%>
</body>
</html>