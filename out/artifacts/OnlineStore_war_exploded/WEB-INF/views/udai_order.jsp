<%@page contentType="text/html; utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<%@include file="_head.jsp"%>
<body>
	<!-- 顶部tab -->
	<div class="tab-header">
		<div class="inner">
			<div class="pull-left">
				<div class="pull-left">嗨，欢迎来到<span class="cr">U袋网</span></div>
				<a href="agent_level">网店代销</a>
				<a href="temp_article/article4">帮助中心</a>
			</div>
			<div class="pull-right">
				<c:if test="${sessionScope.user != null}">
					<a href="${path}/logout"><span class="cr">退出登录</span></a>
				</c:if>
				<c:if test="${sessionScope.user == null}">
					<a href="${path}/login"><span class="cr">登录</span></a>
					<a href="${path}/register">注册</a>
				</c:if>
				<a href="welcome">我的U袋</a>
				<a href="order">我的订单</a>
				<a href="integral">积分平台</a>
			</div>
		</div>
	</div>
	<!-- 顶部标题 -->
	<div class="bgf5 clearfix">
		<div class="top-user">
			<div class="inner">
				<a class="logo" href="index"><img src="${path}/static/images/icons/logo.jpg" alt="U袋网" class="cover"></a>
				<div class="title">个人中心</div>
			</div>
		</div>
	</div>
	<div class="content clearfix bgf5">
		<section class="user-center inner clearfix">
			<div class="pull-left bgf">
				<a href="welcome" class="title">U袋欢迎页</a>
				<dl class="user-center__nav">
					<dt>帐户信息</dt>
					<a href="setting"><dd>个人资料</dd></a>
					<a href="treasurer"><dd>资金管理</dd></a>
					<a href="integral"><dd>积分平台</dd></a>
					<a href="address"><dd>收货地址</dd></a>
					<a href="coupon"><dd>我的优惠券</dd></a>
					<a href="paypwd_modify"><dd>修改支付密码</dd></a>
					<a href="pwd_modify"><dd>修改登录密码</dd></a>
				</dl>
				<dl class="user-center__nav">
					<dt>订单中心</dt>
					<a href="order"><dd class="active">我的订单</dd></a>
					<a href="collection"><dd>我的收藏</dd></a>
					<a href="refund"><dd>退款/退货</dd></a>
				</dl>
				<dl class="user-center__nav">
					<dt>服务中心</dt>
					<a href="mail_query"><dd>物流查询</dd></a>
					<a href=""><dd>数据自助下载</dd></a>
					<a href="temp_article/article1"><dd>售后服务</dd></a>
					<a href="temp_article/article2"><dd>配送服务</dd></a>
					<a href="temp_article/article3"><dd>用户协议</dd></a>
					<a href="temp_article/article4"><dd>常见问题</dd></a>
				</dl>
				<dl class="user-center__nav">
					<dt>新手上路</dt>
					<a href="temp_article/article5"><dd>如何成为代理商</dd></a>
					<a href="temp_article/article6"><dd>代销商上架教程</dd></a>
					<a href="temp_article/article7"><dd>分销商常见问题</dd></a>
					<a href="temp_article/article8"><dd>付款账户</dd></a>
				</dl>
				<dl class="user-center__nav">
					<dt>U袋网</dt>
					<a href="temp_article/article10"><dd>企业简介</dd></a>
					<a href="temp_article/article11"><dd>加入U袋</dd></a>
					<a href="temp_article/article12"><dd>隐私说明</dd></a>
				</dl>
			</div>
			<div class="pull-right">
				<div class="user-content__box clearfix bgf">
					<div class="title">订单中心-我的订单</div>
					<div class="order-list__box bgf">
						<div class="order-panel">
							<ul class="nav user-nav__title" role="tablist">
								<li role="presentation" class="nav-item active"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">所有订单</a></li>
								<li role="presentation" class="nav-item "><a href="#pay" aria-controls="pay" role="tab" data-toggle="tab">待付款 <span class="cr">0</span></a></li>
								<li role="presentation" class="nav-item "><a href="#emit" aria-controls="emit" role="tab" data-toggle="tab">待发货 <span class="cr">0</span></a></li>
								<li role="presentation" class="nav-item "><a href="#take" aria-controls="take" role="tab" data-toggle="tab">待收货 <span class="cr">0</span></a></li>
								<li role="presentation" class="nav-item "><a href="#eval" aria-controls="eval" role="tab" data-toggle="tab">待评价 <span class="cr">0</span></a></li>
							</ul>

							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="all">
									<table class="table text-center">
										<tr>
											<th width="380">订单信息</th>
											<th width="85">收获地址</th>
											<th width="85">数量</th>
											<th width="120">实付款</th>
											<th width="120">交易状态</th>
											<th width="120">交易操作</th>
										</tr>
										<c:forEach items="${requestScope.orders}" var="order">
											<tr class="order-item">
												<td>
													<label>
														<a href="${path}/order_detail?orderId=${order.ORDERS_ID}" class="num">
															下单时间：${order.TIME_CREATE}<br>
															订单号: ${order.ORDERS_ID}
														</a>
														<div class="card">
<%--															<div class="img"><img src="${path}/static/images/temp/item-img_1.jpg" alt="" class="cover"></div>--%>
<%--															<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>--%>
<%--															<div class="format">颜色分类：深棕色  尺码：均码</div>--%>
<%--															<div class="favour">使用优惠券：优惠¥2.00</div>--%>
														</div>
													</label>
												</td>
												<td>${order.address.ADDRESS_DETAIL}</td>
												<td>${order.products.size()}</td>
												<td>${order.totalPrice}<br><span class="fz12 c6 text-nowrap"><%--(含运费: ¥0.00)--%></span></td>
												<c:if test="${order.ORDER_STATUS == 0}">
													<td class="state">
														<a class="but c6">等待付款</a>
														<a href="${path}/order_detail?orderId=${order.ORDERS_ID}" class="but c9">订单详情</a>
													</td>
													<td class="order">
														<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
														<a href="shopcart_pay" class="but but-primary">立即付款</a>
														<!-- <a href="" class="but but-link">评价</a> -->
														<a href="" class="but c3">取消订单</a>
													</td>
												</c:if>
												<c:if test="${order.ORDER_STATUS == 1}">
													<td class="state">
														<a class="but c6">等待收货</a>
														<a href="udai_mail_query.html" class="but cr">查看物流</a>
														<a href="udai_order_detail.html" class="but c9">订单详情</a>
													</td>
													<td class="order">
														<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
														<a href="udai_order_receipted.html" class="but but-primary">确认收货</a>
														<!-- <a href="" class="but but-link">评价</a> -->
														<a href="udai_apply_return.html" class="but c3">退款/退货</a>
													</td>
												</c:if>
												<c:if test="${order.ORDER_STATUS == 2}">
													<td class="state">
														<a class="but c6">交易成功</a>
														<a href="udai_mail_query.html" class="but cr">查看物流</a>
														<a href="udai_order_detail.html" class="but c9">订单详情</a>
													</td>
													<td class="order">
														<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
														<a href="" class="but but-link">评价</a>
														<a href="" class="but c3">取消订单</a>
													</td>
												</c:if>
											</tr>
										</c:forEach>

									</table>
									<div class="page text-right clearfix" style="margin-top: 40px">
										<a class="disabled">上一页</a>
										<a class="select">1</a>
										<a href="">2</a>
										<a href="">3</a>
										<a class="" href="">下一页</a>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="pay">
									<table class="table text-center">
										<tr>
											<th width="380">商品信息</th>
											<th width="85">单价</th>
											<th width="85">数量</th>
											<th width="120">实付款</th>
											<th width="120">交易状态</th>
											<th width="120">交易操作</th>
										</tr>
										<tr class="order-empty"><td colspan='6'>
											<div class="empty-msg">最近没有任何订单，家里好像缺了点什么！<br><a href="item_category">要不瞧瞧去？</a></div>
										</td></tr>
									</table>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="emit">
									<table class="table text-center">
										<tr>
											<th width="380">商品信息</th>
											<th width="85">单价</th>
											<th width="85">数量</th>
											<th width="120">实付款</th>
											<th width="120">交易状态</th>
											<th width="120">交易操作</th>
										</tr>
										<tr class="order-item">
											<td>
												<label>
													<a href="order_detail" class="num">
														2017-03-30 订单号: 2669901385864042
													</a>
													<div class="card">
														<div class="img"><img src="${path}/static/images/temp/item-img_1.jpg" alt="" class="cover"></div>
														<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
														<div class="format">颜色分类：深棕色  尺码：均码</div>
														<div class="favour">使用优惠券：优惠¥2.00</div>
													</div>
												</label>
											</td>
											<td>￥100</td>
											<td>1</td>
											<td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
											<td class="state">
												<a class="but c6">等待发货</a>
												<a href="order_detail" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="order_receipted" class="but but-primary">确认收货</a>
												<a href="apply_return" class="but c3">退款/退货</a>
											</td>
										</tr>
										<tr class="order-item">
											<td>
												<label>
													<a href="order_detail" class="num">
														2017-03-30 订单号: 2669901385864042
													</a>
													<div class="card">
														<div class="img"><img src="${path}/static/images/temp/item-img_1.jpg" alt="" class="cover"></div>
														<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
														<div class="format">颜色分类：深棕色  尺码：均码</div>
														<div class="favour">使用优惠券：优惠¥2.00</div>
													</div>
												</label>
											</td>
											<td>￥100</td>
											<td>1</td>
											<td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
											<td class="state">
												<a class="but c6">等待发货</a>
												<a href="order_detail" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="order_receipted" class="but but-primary">确认收货</a>
												<a href="apply_return" class="but c3">退款/退货</a>
											</td>
										</tr>
										<tr class="order-item">
											<td>
												<label>
													<a href="order_detail" class="num">
														2017-03-30 订单号: 2669901385864042
													</a>
													<div class="card">
														<div class="img"><img src="${path}/static/images/temp/item-img_1.jpg" alt="" class="cover"></div>
														<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
														<div class="format">颜色分类：深棕色  尺码：均码</div>
														<div class="favour">使用优惠券：优惠¥2.00</div>
													</div>
												</label>
											</td>
											<td>￥100</td>
											<td>1</td>
											<td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
											<td class="state">
												<a class="but c6">等待发货</a>
												<a href="order_detail" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="order_receipted" class="but but-primary">确认收货</a>
												<a href="apply_return" class="but c3">退款/退货</a>
											</td>
										</tr>
									</table>
									<div class="page text-right clearfix" style="margin-top: 40px">
										<a class="disabled">上一页</a>
										<a class="select">1</a>
										<a class="disabled">下一页</a>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="take">
									<table class="table text-center">
										<tr>
											<th width="380">商品信息</th>
											<th width="85">单价</th>
											<th width="85">数量</th>
											<th width="120">实付款</th>
											<th width="120">交易状态</th>
											<th width="120">交易操作</th>
										</tr>
										<tr class="order-empty"><td colspan='6'>
											<div class="empty-msg">最近没有任何订单，家里好像缺了点什么！<br><a href="item_category">要不瞧瞧去？</a></div>
										</td></tr>
									</table>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="eval">
									<table class="table text-center">
										<tr>
											<th width="380">商品信息</th>
											<th width="85">单价</th>
											<th width="85">数量</th>
											<th width="120">实付款</th>
											<th width="120">交易状态</th>
											<th width="120">交易操作</th>
										</tr>
										<tr class="order-item">
											<td>
												<label>
													<a href="order_detail" class="num">
														2017-03-30 订单号: 2669901385864042
													</a>
													<div class="card">
														<div class="img"><img src="${path}/static/images/temp/item-img_1.jpg" alt="" class="cover"></div>
														<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
														<div class="format">颜色分类：深棕色  尺码：均码</div>
														<div class="favour">使用优惠券：优惠¥2.00</div>
													</div>
												</label>
											</td>
											<td>￥100</td>
											<td>1</td>
											<td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
											<td class="state">
												<a class="but c6">交易成功</a>
												<a href="mail_query" class="but cr">查看物流</a>
												<a href="order_detail" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="" class="but but-link">评价</a>
												<a href="" class="but c3">取消订单</a>
											</td>
										</tr>
										<tr class="order-item">
											<td>
												<label>
													<a href="order_detail" class="num">
														2017-03-30 订单号: 2669901385864042
													</a>
													<div class="card">
														<div class="img"><img src="${path}/static/images/temp/item-img_1.jpg" alt="" class="cover"></div>
														<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
														<div class="format">颜色分类：深棕色  尺码：均码</div>
														<div class="favour">使用优惠券：优惠¥2.00</div>
													</div>
												</label>
											</td>
											<td>￥100</td>
											<td>1</td>
											<td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
											<td class="state">
												<a class="but c6">交易成功</a>
												<a href="mail_query" class="but cr">查看物流</a>
												<a href="order_detail" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="" class="but but-link">评价</a>
												<a href="" class="but c3">取消订单</a>
											</td>
										</tr>
										<tr class="order-item">
											<td>
												<label>
													<a href="order_detail" class="num">
														2017-03-30 订单号: 2669901385864042
													</a>
													<div class="card">
														<div class="img"><img src="${path}/static/images/temp/item-img_1.jpg" alt="" class="cover"></div>
														<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
														<div class="format">颜色分类：深棕色  尺码：均码</div>
														<div class="favour">使用优惠券：优惠¥2.00</div>
													</div>
												</label>
											</td>
											<td>￥100</td>
											<td>1</td>
											<td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
											<td class="state">
												<a class="but c6">交易成功</a>
												<a href="mail_query" class="but cr">查看物流</a>
												<a href="order_detail" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="" class="but but-link">评价</a>
												<a href="" class="but c3">取消订单</a>
											</td>
										</tr>
									</table>
									<div class="page text-right clearfix" style="margin-top: 40px">
										<a class="disabled">上一页</a>
										<a class="select">1</a>
										<a class="disabled">下一页</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				
				</div>
			</div>
		</section>
	</div>
	<!-- 右侧菜单 -->
	<div class="right-nav">
		<ul class="r-with-gotop">
			<li class="r-toolbar-item">
				<a href="welcome" class="r-item-hd">
					<i class="iconfont icon-user" data-badge="0"></i>
					<div class="r-tip__box"><span class="r-tip-text">用户中心</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="shopcart" class="r-item-hd">
					<i class="iconfont icon-cart"></i>
					<div class="r-tip__box"><span class="r-tip-text">购物车</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="collection" class="r-item-hd">
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
				<a href="issues" class="r-item-hd">
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