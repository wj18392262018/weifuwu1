<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>乐优商城--首页</title>
    <link rel="icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/webbase.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/pages-JD-index.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/widget-jquery.autocomplete.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/widget-cartPanelView.css" />

</head>

<body>

<!-- 头部栏位 -->
<div id="nav-bottom">
    <ly-top/>
</div>
<!--页面顶部，由js动态加载-->
<script src="${pageContext.request.contextPath}/js/vue/vue.js"></script>
<script src="${pageContext.request.contextPath}/js/axios.min.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script type="text/javascript">
    var indexVm = new Vue({
        el:"#nav-bottom",
        components:{
            lyTop:() => import('./js/pages/top.js')
    }
    });
</script>


<!--列表-->
<div class="sort">
    <div class="py-container">
        <div class="yui3-g SortList ">
            <div class="yui3-u Left all-sort-list">
                <div class="all-sort-list2">
                    <%--循环--%>
                    <c:forEach items="${clist}" var="c1">
                        <div class="item">
                            <h3><a href="">${c1.name}</a></h3>
                            <div class="item-list clearfix">
                                <div class="subitem">
                                    <c:forEach items="${c1.categorys}" var="c2">
                                        <dl class="fore1">
                                            <dt><a href="">${c2.name}</a></dt>
                                            <dd>
                                                <c:forEach items="${c2.categorys}" var="c3">
                                                     <em><a href="${pageContext.request.contextPath}/category/getById?cid1=${c1.id}&&cid2=${c2.id}&&cid3=${c3.id}&&page=1&&size=10">${c3.name}</a></em>
                                                </c:forEach>
                                            </dd>
                                        </dl>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="yui3-u Center banerArea">
                <!--banner轮播-->
                <div id="myCarousel" data-ride="carousel" data-interval="4000" class="sui-carousel slide">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="active item">
                            <a href="/">
                                <img src="${pageContext.request.contextPath}/img/banner1.jpg"  />
                            </a>
                        </div>
                        <div class="item">
                            <a href="/">
                                <img src="${pageContext.request.contextPath}/img/banner2.jpg"  />
                            </a>
                        </div>
                        <div class="item">
                            <a href="/">
                                <img src="${pageContext.request.contextPath}/img/banner3x.jpg"  />
                            </a>

                        </div>
                    </div><a href="#myCarousel" data-slide="prev" class="carousel-control left">‹</a><a href="#myCarousel" data-slide="next" class="carousel-control right">›</a>
                </div>
            </div>
            <div class="yui3-u Right">
                <div class="news">
                    <h4><em class="fl">乐优快报</em><span class="fr tip">更多 ></span></h4>
                    <div class="clearix"></div>
                    <ul class="news-list unstyled">
                        <li>
                            <span class="bold">[特惠]</span>备战开学季 全民半价购数码
                        </li>
                        <li>
                            <span class="bold">[公告]</span>备战开学季 全民半价购数码
                        </li>
                        <li>
                            <span class="bold">[特惠]</span>备战开学季 全民半价购数码
                        </li>
                        <li>
                            <span class="bold">[公告]</span>备战开学季 全民半价购数码
                        </li>
                        <li>
                            <span class="bold">[特惠]</span>备战开学季 全民半价购数码
                        </li>
                    </ul>
                </div>
                <ul class="yui3-g Lifeservice">
                    <li class="yui3-u-1-4 life-item tab-item">
                        <i class="list-item list-item-1"></i>
                        <span class="service-intro">话费</span>
                    </li>
                    <li class="yui3-u-1-4 life-item tab-item">
                        <i class="list-item list-item-2"></i>
                        <span class="service-intro">机票</span>
                    </li>
                    <li class="yui3-u-1-4 life-item tab-item">
                        <i class="list-item list-item-3"></i>
                        <span class="service-intro">电影票</span>
                    </li>
                    <li class="yui3-u-1-4 life-item tab-item">
                        <i class="list-item list-item-4"></i>
                        <span class="service-intro">游戏</span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-5"></i>
                        <span class="service-intro">彩票</span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-6"></i>
                        <span class="service-intro">加油站</span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-7"></i>
                        <span class="service-intro">酒店</span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-8"></i>
                        <span class="service-intro">火车票</span>
                    </li>
                    <li class="yui3-u-1-4 life-item  notab-item">
                        <i class="list-item list-item-9"></i>
                        <span class="service-intro">众筹</span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-10"></i>
                        <span class="service-intro">理财</span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-11"></i>
                        <span class="service-intro">礼品卡</span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-12"></i>
                        <span class="service-intro">白条</span>
                    </li>
                </ul>
                <div class="life-item-content">
                    <div class="life-detail">
                        <i class="close">关闭</i>
                        <p>话费充值</p>
                        <form action="" class="sui-form form-horizontal">
                            号码：<input type="text" id="inputphoneNumber" placeholder="输入你的号码" />
                        </form>
                        <button class="sui-btn btn-danger">快速充值</button>
                    </div>
                    <div class="life-detail">
                        <i class="close">关闭</i> 机票
                    </div>
                    <div class="life-detail">
                        <i class="close">关闭</i> 电影票
                    </div>
                    <div class="life-detail">
                        <i class="close">关闭</i> 游戏
                    </div>
                </div>
                <div class="ads">
                    <img src="${pageContext.request.contextPath}/img/ad1.png" />
                </div>
            </div>
        </div>
    </div>
</div>
<!--推荐-->
<div class="show">
    <div class="py-container">
        <ul class="yui3-g Recommend">
            <li class="yui3-u-1-6  clock">
                <div class="time">
                    <img src="${pageContext.request.contextPath}/img/clock.png" />
                    <h3>今日推荐</h3>
                </div>
            </li>
            <li class="yui3-u-5-24">
                <a href="list.html" target="_blank"><img src="${pageContext.request.contextPath}/img/today01.png" /></a>
            </li>
            <li class="yui3-u-5-24">
                <img src="${pageContext.request.contextPath}/img/today02.png" />
            </li>
            <li class="yui3-u-5-24">
                <img src="${pageContext.request.contextPath}/img/today03.png" />
            </li>
            <li class="yui3-u-5-24">
                <img src="${pageContext.request.contextPath}/img/today04.png" />
            </li>
        </ul>
    </div>
</div>
<!--喜欢-->
<div class="like">
    <div class="py-container">
        <div class="title">
            <h3 class="fl">猜你喜欢</h3>
            <b class="border"></b>
            <a href="javascript:;" class="fr tip changeBnt" id="xxlChg"><i></i>换一换</a>
        </div>
        <div class="bd">
            <ul class="clearfix yui3-g Favourate picLB" id="picLBxxl">
                <li class="yui3-u-1-6">
                    <dl class="picDl huozhe">
                        <dd>
                            <a href="" class="pic"><img src="${pageContext.request.contextPath}/img/like_02.png" alt="" /></a>
                            <div class="like-text">
                                <p>阳光美包新款单肩包女包时尚子母包四件套女</p>
                                <h3>¥116.00</h3>
                            </div>
                        </dd>
                        <dd>
                            <a href="" class="pic"><img src="${pageContext.request.contextPath}/img/like_01.png" alt="" /></a>
                            <div class="like-text">
                                <p>爱仕达 30CM炒锅不粘锅NWG8330E电磁炉炒</p>
                                <h3>¥116.00</h3>
                            </div>
                        </dd>
                    </dl>
                </li>
                <li class="yui3-u-1-6">
                    <dl class="picDl jilu">
                        <dd>
                            <a href="" class="pic"><img src="${pageContext.request.contextPath}/img/like_03.png" alt="" /></a>
                            <div class="like-text">
                                <p>爱仕达 30CM炒锅不粘锅NWG8330E电磁炉炒</p>
                                <h3>¥116.00</h3>
                            </div>
                        </dd>
                        <dd>
                            <a href="" class="pic"><img src="${pageContext.request.contextPath}/img/like_02.png" alt="" /></a>
                            <div class="like-text">
                                <p>阳光美包新款单肩包女包时尚子母包四件套女</p>
                                <h3>¥116.00</h3>
                            </div>
                        </dd>
                    </dl>
                </li>
                <li class="yui3-u-1-6">
                    <dl class="picDl tuhua">
                        <dd>
                            <a href="" class="pic"><img src="${pageContext.request.contextPath}/img/like_01.png" alt="" /></a>
                            <div class="like-text">
                                <p>捷波朗 </p>
                                <p>（jabra）BOOSI劲步</p>
                                <h3>¥236.00</h3>
                            </div>
                        </dd>
                        <dd>
                            <a href="" class="pic"><img nsrc="${pageContext.request.contextPath}/assets/img/like_02.png" alt="" /></a>
                            <div class="like-text">
                                <p>三星（G5500）</p>
                                <p>移动联通双网通</p>
                                <h3>¥566.00</h3>
                            </div>
                        </dd>
                    </dl>
                </li>
                <li class="yui3-u-1-6">
                    <dl class="picDl huozhe">
                        <dd>
                            <a href="" class="pic"><img src="${pageContext.request.contextPath}/img/like_02.png" alt="" /></a>
                            <div class="like-text">
                                <p>阳光美包新款单肩包女包时尚子母包四件套女</p>
                                <h3>¥116.00</h3>
                            </div>
                        </dd>
                        <dd>
                            <a href="" class="pic"><img src="${pageContext.request.contextPath}/img/like_01.png" alt="" /></a>
                            <div class="like-text">
                                <p>爱仕达 30CM炒锅不粘锅NWG8330E电磁炉炒</p>
                                <h3>¥116.00</h3>
                            </div>
                        </dd>
                    </dl>
                </li>
                <li class="yui3-u-1-6">
                    <dl class="picDl jilu">
                        <dd>
                            <a href="http://sc.chinaz.com/" class="pic"><img src="${pageContext.request.contextPath}/img/like_03.png" alt="" /></a>
                            <div class="like-text">
                                <p>捷波朗 </p>
                                <p>（jabra）BOOSI劲步</p>
                                <h3>¥236.00</h3>
                            </div>
                        </dd>
                        <dd>
                            <a href="http://sc.chinaz.com/" class="pic"><img src="${pageContext.request.contextPath}/img/like_02.png" alt="" /></a>
                            <div class="like-text">
                                <p>欧普</p>
                                <p>JYLZ08面板灯平板灯铝</p>
                                <h3>¥456.00</h3>
                            </div>
                        </dd>
                    </dl>
                </li>
                <li class="yui3-u-1-6">
                    <dl class="picDl tuhua">
                        <dd>
                            <a href="http://sc.chinaz.com/" class="pic"><img src="${pageContext.request.contextPath}/img/like_01.png" alt="" /></a>
                            <div class="like-text">
                                <p>三星（G5500）</p>
                                <p>移动联通双网通</p>
                                <h3>¥566.00</h3>
                            </div>
                        </dd>
                        <dd>
                            <a href="http://sc.chinaz.com/" class="pic"><img nsrc="${pageContext.request.contextPath}/assets/img/like_02.png" alt="" /></a>
                            <div class="like-text">
                                <p>韩国所望紧致湿润精华露400ml</p>
                                <h3>¥896.00</h3>
                            </div>
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
</div>
<!--有趣-->
<div class="fun">
    <div class="py-container">
        <div class="title">
            <h3 class="fl">传智播客.有趣区</h3>
        </div>
        <div class="clearfix yui3-g Interest">
            <span class="x-line"></span>
            <div class="yui3-u row-405 Interest-conver">
                <img src="${pageContext.request.contextPath}/img/interest01.png" />
            </div>
            <div class="yui3-u row-225 Interest-conver-split">
                <h5>好东西</h5>
                <img src="${pageContext.request.contextPath}/img/interest02.png" />
                <img src="${pageContext.request.contextPath}/img/interest03.png" />
            </div>
            <div class="yui3-u row-405 Interest-conver-split blockgary">
                <h5>品牌街</h5>
                <div class="split-bt">
                    <img src="${pageContext.request.contextPath}/img/interest04.png" />
                </div>
                <div class="x-img fl">
                    <img src="${pageContext.request.contextPath}/img/interest05.png" />
                </div>
                <div class="x-img fr">
                    <img src="${pageContext.request.contextPath}/img/interest06.png" />
                </div>
            </div>
            <div class="yui3-u row-165 brandArea">
                <span class="brand-yline"></span>
                <ul class="yui3-g brand-list">
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand01.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand02.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand03.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand04.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand05.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand06.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand07.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand08.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand09.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand10.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand11.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand12.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand13.png" /></li>
                    <li class="yui3-u-1-2 brand-pit"><img src="${pageContext.request.contextPath}/img/brand03.png" /></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--楼层-->
<div id="floor-1" class="floor">
    <div class="py-container">
        <div class="title floors">
            <h3 class="fl">家用电器</h3>
            <div class="fr">
                <ul class="sui-nav nav-tabs">
                    <li class="active">
                        <a href="#tab1" data-toggle="tab">热门</a>
                    </li>
                    <li>
                        <a href="#tab2" data-toggle="tab">大家电</a>
                    </li>
                    <li>
                        <a href="#tab3" data-toggle="tab">生活电器</a>
                    </li>
                    <li>
                        <a href="#tab4" data-toggle="tab">厨房电器</a>
                    </li>
                    <li>
                        <a href="#tab5" data-toggle="tab">应季电器</a>
                    </li>
                    <li>
                        <a href="#tab6" data-toggle="tab">空气/净水</a>
                    </li>
                    <li>
                        <a href="#tab7" data-toggle="tab">高端电器</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="clearfix  tab-content floor-content">
            <div id="tab1" class="tab-pane active">
                <div class="yui3-g Floor-1">
                    <div class="yui3-u Left blockgary">
                        <ul class="jd-list">
                            <li>节能补贴</li>
                            <li>4K电视</li>
                            <li>空气净化器</li>
                            <li>IH电饭煲</li>
                            <li>滚筒洗衣机</li>
                            <li>电热水器</li>
                        </ul>
                        <img src="${pageContext.request.contextPath}/img/floor-1-1.png" />
                    </div>
                    <div class="yui3-u row-330 floorBanner">
                        <div id="floorCarousel" data-ride="carousel" data-interval="4000" class="sui-carousel slide">
                            <ol class="carousel-indicators">
                                <li data-target="#floorCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#floorCarousel" data-slide-to="1"></li>
                                <li data-target="#floorCarousel" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="active item">
                                    <img src="${pageContext.request.contextPath}/img/floor-1-b01.png">
                                </div>
                                <div class="item">
                                    <img src="${pageContext.request.contextPath}/img/floor-1-b02.png">
                                </div>
                                <div class="item">
                                    <img src="${pageContext.request.contextPath}/img/floor-1-b03.png">
                                </div>
                            </div>
                            <a href="#floorCarousel" data-slide="prev" class="carousel-control left">‹</a>
                            <a href="#floorCarousel" data-slide="next" class="carousel-control right">›</a>
                        </div>
                    </div>
                    <div class="yui3-u row-220 split">
                        <span class="floor-x-line"></span>
                        <div class="floor-conver-pit">
                            <img src="${pageContext.request.contextPath}/img/floor-1-2.png" />
                        </div>
                        <div class="floor-conver-pit">
                            <img src="${pageContext.request.contextPath}/img/floor-1-3.png" />
                        </div>
                    </div>
                    <div class="yui3-u row-218 split">
                        <img src="${pageContext.request.contextPath}/img/floor-1-4.png" />
                    </div>
                    <div class="yui3-u row-220 split">
                        <span class="floor-x-line"></span>
                        <div class="floor-conver-pit">
                            <img src="${pageContext.request.contextPath}/img/floor-1-5.png" />
                        </div>
                        <div class="floor-conver-pit">
                            <img src="${pageContext.request.contextPath}/img/floor-1-6.png" />
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab2" class="tab-pane">
                <p>第二个</p>
            </div>
            <div id="tab3" class="tab-pane">
                <p>第三个</p>
            </div>
            <div id="tab4" class="tab-pane">
                <p>第4个</p>
            </div>
            <div id="tab5" class="tab-pane">
                <p>第5个</p>
            </div>
            <div id="tab6" class="tab-pane">
                <p>第6个</p>
            </div>
            <div id="tab7" class="tab-pane">
                <p>第7个</p>
            </div>
        </div>
    </div>
</div>
<div id="floor-2" class="floor">
    <div class="py-container">
        <div class="title floors">
            <h3 class="fl">手机通讯</h3>
            <div class="fr">
                <ul class="sui-nav nav-tabs">
                    <li class="active">
                        <a href="#tab8" data-toggle="tab">热门</a>
                    </li>
                    <li>
                        <a href="#tab9" data-toggle="tab">品质优选</a>
                    </li>
                    <li>
                        <a href="#tab10" data-toggle="tab">新机尝鲜</a>
                    </li>
                    <li>
                        <a href="#tab11" data-toggle="tab">高性价比</a>
                    </li>
                    <li>
                        <a href="#tab12" data-toggle="tab">合约机</a>
                    </li>
                    <li>
                        <a href="#tab13" data-toggle="tab">手机卡</a>
                    </li>
                    <li>
                        <a href="#tab14" data-toggle="tab">手机配件</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="clearfix  tab-content floor-content">
            <div id="tab8" class="tab-pane active">
                <div class="yui3-g Floor-1">
                    <div class="yui3-u Left blockgary">
                        <ul class="jd-list">
                            <li>节能补贴</li>
                            <li>4K电视</li>
                            <li>空气净化器</li>
                            <li>IH电饭煲</li>
                            <li>滚筒洗衣机</li>
                            <li>电热水器</li>
                        </ul>
                        <img src="img/floor-1-1.png" />
                    </div>
                    <div class="yui3-u row-330 floorBanner">
                        <div id="floorCarousell" data-ride="carousel" data-interval="4000" class="sui-carousel slide">
                            <ol class="carousel-indicators">
                                <li data-target="#floorCarousell" data-slide-to="0" class="active"></li>
                                <li data-target="#floorCarousell" data-slide-to="1"></li>
                                <li data-target="#floorCarousell" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="active item">
                                    <img src="${pageContext.request.contextPath}/img/floor-1-b01.png">
                                </div>
                                <div class="item">
                                    <img src="${pageContext.request.contextPath}/img/floor-1-b02.png">
                                </div>
                                <div class="item">
                                    <img src="${pageContext.request.contextPath}/img/floor-1-b03.png">
                                </div>
                            </div>
                            <a href="#floorCarousell" data-slide="prev" class="carousel-control left">‹</a>
                            <a href="#floorCarousell" data-slide="next" class="carousel-control right">›</a>
                        </div>
                    </div>
                    <div class="yui3-u row-220 split">
                        <span class="floor-x-line"></span>
                        <div class="floor-conver-pit">
                            <img src="${pageContext.request.contextPath}/img/floor-1-2.png" />
                        </div>
                        <div class="floor-conver-pit">
                            <img src="${pageContext.request.contextPath}/img/floor-1-3.png" />
                        </div>
                    </div>
                    <div class="yui3-u row-218 split">
                        <img src="${pageContext.request.contextPath}/img/floor-1-4.png" />
                    </div>
                    <div class="yui3-u row-220 split">
                        <span class="floor-x-line"></span>
                        <div class="floor-conver-pit">
                            <img src="${pageContext.request.contextPath}/img/floor-1-5.png" />
                        </div>
                        <div class="floor-conver-pit">
                            <img src="${pageContext.request.contextPath}/img/floor-1-6.png" />
                        </div>
                    </div>
                </div>
            </div>
            <div id="tab2" class="tab-pane">
                <p>第二个</p>
            </div>
            <div id="tab9" class="tab-pane">
                <p>第三个</p>
            </div>
            <div id="tab10" class="tab-pane">
                <p>第4个</p>
            </div>
            <div id="tab11" class="tab-pane">
                <p>第5个</p>
            </div>
            <div id="tab12" class="tab-pane">
                <p>第6个</p>
            </div>
            <div id="tab13" class="tab-pane">
                <p>第7个</p>
            </div>
            <div id="tab14" class="tab-pane">
                <p>第8个</p>
            </div>
        </div>
    </div>
</div>
<!--商标-->
<div class="brand">
    <div class="py-container">
        <ul class="Brand-list blockgary">
            <li class="Brand-item">
                <img src="${pageContext.request.contextPath}/img/brand_21.png" />
            </li>
            <li class="Brand-item"><img src="${pageContext.request.contextPath}/img/brand_03.png" /></li>
            <li class="Brand-item"><img src="${pageContext.request.contextPath}/img/brand_05.png" /></li>
            <li class="Brand-item"><img src="${pageContext.request.contextPath}/img/brand_07.png" /></li>
            <li class="Brand-item"><img src="${pageContext.request.contextPath}/img/brand_09.png" /></li>
            <li class="Brand-item"><img src="${pageContext.request.contextPath}/img/brand_11.png" /></li>
            <li class="Brand-item"><img src="${pageContext.request.contextPath}/img/brand_13.png" /></li>
            <li class="Brand-item"><img src="${pageContext.request.contextPath}/img/brand_15.png" /></li>
            <li class="Brand-item"><img src="${pageContext.request.contextPath}/img/brand_17.png" /></li>
            <li class="Brand-item"><img src="${pageContext.request.contextPath}/img/brand_19.png" /></li>
        </ul>
    </div>
</div>

<!-- 底部栏位 -->
<!--页面底部，由js动态加载-->
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>
<div class="clearfix footer"></div>
<script type="text/javascript">$(".footer").load("foot.html");</script>
<!--页面底部END-->

<!-- 楼层位置 -->
<div id="floor-index" class="floor-index">
    <ul>
        <li>
            <a class="num" href="javascript:;" style="display: none;">1F</a>
            <a class="word" href="javascript;;" style="display: block;">家用电器</a>
        </li>
        <li>
            <a class="num" href="javascript:;" style="display: none;">2F</a>
            <a class="word" href="javascript;;" style="display: block;">手机通讯</a>
        </li>
        <li>
            <a class="num" href="javascript:;" style="display: none;">3F</a>
            <a class="word" href="javascript;;" style="display: block;">电脑办公</a>
        </li>
        <li>
            <a class="num" href="javascript:;" style="display: none;">4F</a>
            <a class="word" href="javascript;;" style="display: block;">家居家具</a>
        </li>
        <li>
            <a class="num" href="javascript:;" style="display: none;">5F</a>
            <a class="word" href="javascript;;" style="display: block;">运动户外</a>
        </li>
    </ul>
</div>

<!--侧栏面板开始,由js动态加载-->
<div class="J-global-toolbar"></div>
<script type="text/javascript">$(".J-global-toolbar").load("side.html");</script>

<!--购物车单元格 模板-->
<script type="text/template" id="tbar-cart-item-template">
    <div class="tbar-cart-item" >
        <div class="jtc-item-promo">
            <em class="promo-tag promo-mz">满赠<i class="arrow"></i></em>
            <div class="promo-text">已购满600元，您可领赠品</div>
        </div>
        <div class="jtc-item-goods">
            <span class="p-img"><a href="#" target="_blank"><img src="{2}" alt="{1}" height="50" width="50" /></a></span>
            <div class="p-name">
                <a href="#">{1}</a>
            </div>
            <div class="p-price"><strong>¥{3}</strong>×{4} </div>
            <a href="#none" class="p-del J-del">删除</a>
        </div>
    </div>
</script>
<!--侧栏面板结束-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript">
    $(function(){
        $("#service").hover(function(){
            $(".service").show();
        },function(){
            $(".service").hide();
        });
        $("#shopcar").hover(function(){
            $("#shopcarlist").show();
        },function(){
            $("#shopcarlist").hide();
        });

    })
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/model/cartModel.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/czFunction.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery.easing/jquery.easing.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/sui/sui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/pages/index.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/widget/cartPanelView.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/widget/jquery.autocomplete.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/widget/nav.js"></script>
</body>


</html>