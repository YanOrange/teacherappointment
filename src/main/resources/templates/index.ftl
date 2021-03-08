<!DOCTYPE HTML>
<html lang="zh-CN">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta id="viewport" name="viewport"
          content="width=device-width,height=device-height,initial-scale=1,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="grey"/>
    <meta name="format-detection" content="telephone=no,address=no,email=no"/>
    <title>家教预约平台</title>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/swiper.min.css">
    <script>
        var deviceWidth = document.documentElement.clientWidth;
        if (deviceWidth > 640) deviceWidth = 640;
        document.documentElement.style.fontSize = deviceWidth / 7.5 + 'px';
    </script>
    <style>
        body {
            -webkit-overflow-scrolling: touch;
        }
        html {
            background: #F2F2F2;
        }

        .waterfall-list {
            column-count: 2;
            column-gap: .1rem;
        }

        .waterfall-list .item {
            box-sizing: border-box;
            break-inside: avoid;
            padding-bottom: .16rem;
        }

        .waterfall-list .item a {
            display: block;
            background-color: #fff;
            border-radius: .16rem;
            overflow: hidden;
        }

        .waterfall-list .item .img-container {
            padding: .04rem;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
            box-shadow: 0px 1px 4px 0px rgba(214, 218, 230, 0.5);
        }

        .waterfall-list .item .info {
            width: 3rem;
            margin: 0 auto;
            padding: .2rem 0;
        }

        .waterfall-list .item .info .title {
            font-size: .26rem;
            color: #333;
            line-height: 1.3;
            word-break: break-all;
        }

        .waterfall-list .item .info .price {
            margin-top: .2rem;
            font-size: .3rem;
            color: #ff5400;
        }

        .waterfall-list .item .info .price em {
            font-size: .3rem;
            font-weight: bold;
            margin-left: -2px;
        }

        .waterfall-list .item .info .price span {
            font-size: .2rem;
        }

        .bg-red {
            background: #ff5400;
            color: #fff;
        }

        .top-box {
            padding: 0rem 0.24rem 1.6rem 0.24rem;
        }

        .wine-img {

        }

        .class-box {
            border-radius: 0.3rem;
            background: #fff;
            padding: 0.2rem 0.3rem;
            margin-top: 0.2rem;
            height: 1.76rem;
            box-sizing: border-box;
            display: flex;
            justify-content: space-between;
        }

        .border-1px-bottom:after {
            position: absolute;
            display: block;
            width: 100%;
            left: 0;
            content: '';
            border-top: none;
        }

        .class-item img {
            width: 0.86rem;
            margin: 0 auto;
        }

        .class-name {
            color: #74777A;
            display: block;
            text-align: center;
            font-size: 0.26rem;
            margin-top: 0.1rem;
        }

        .item-box {
            padding: 0 0.24rem;
        }

        .margin-top {
            margin-top: -1.6rem;
        }

        .item-box2 {
            padding: 0.1rem 0.58rem;
        }

        .class-box2 {
            border-radius: 0.3rem;
            background: #fff;
            margin-top: 0.2rem;
            height: 2.4rem;
            box-sizing: border-box;
            display: flex;
            flex-flow: column nowrap;
        }

        .parent {
            display: flex;
            flex-flow: row nowrap;
            flex: 1 1 0; /*元素弹性*/
            /*text-align: center;*/
        }

        .class-item2 {
            width: 49%;
            height: 1.2rem;
            /*display: inline-block;*/
            flex: 1 1 0; /*元素弹性*/
            display: flex;
            padding: 0 0.3rem;
            box-sizing: border-box;
        }

        .class-item3 {
            width: 49%;
            height: 1.2rem;
            /*display: inline-block;*/
            flex: 1 1 0; /*元素弹性*/
            display: flex;
            padding: 0 0.3rem;
            box-sizing: border-box;
        }

        .parent .class-item2:nth-child(1) {
            border-radius: 0.3rem 0 0 0;
        }

        .parent .class-item2:nth-child(2) {
            border-radius: 0 0.3rem 0 0;
            /*border-bottom: 1px solid #EBEBEB;*/
            border-left: 1px solid #EBEBEB;
        }

        .parent .class-item3:nth-child(1) {
            border-radius: 0 0 0 0.3rem;
            border-top: 1px solid #EBEBEB;
            /*border-right: 1px solid #EBEBEB;*/
        }

        .parent .class-item3:nth-child(2) {
            border-radius: 0 0 0.3rem 0;
            border-top: 1px solid #EBEBEB;
            border-left: 1px solid #EBEBEB;
        }

        .pic-name {
            width: 4rem;
            padding: 0.3rem 0;
        }

        .pic-name .title {
            font-size: 0.32rem;
            font-weight: bolder;
        }

        .pic-name .desc {
            font-size: 0.22rem;
            margin-top: 0.1rem;
        }

        .recommend {
            color: #ff5400;
            font-size: 0.4rem;
            font-weight: bolder;
            position: relative;
            display: block;
        }

        .recommend:after {
            content: '';
            position: absolute;
            width: 0.9rem;
            height: 0.08rem;
            background: rgba(249, 48, 53, 0.24);
            border-radius: 0.06rem;
            left: -0.04rem;
            display: inline-block;
            bottom: 0rem;
        }

        .tag-box {
            display: flex;
            margin-top: 0.08rem;
        }

        .tag-box .tag {
            width: 0.84rem;
            height: 0.32rem;
            font-size: 0.2rem;
            text-align: center;
            font-weight: bolder;
            border-radius: 0.06rem;
            line-height: 0.32rem;
        }

        .tag-box .tag:nth-child(1) {
            background: rgba(255, 0, 0, 0.1);
            color: #ff5400;
        }

        .tag-box .tag:nth-child(2) {
            background: rgba(255, 179, 0, 0.1);
            color: #FFAA3F;
            margin-left: 0.08rem;
        }

        .addCart {
            /*display: inline-block;*/
            border-radius: 50px;
            background: linear-gradient(90deg, rgba(249, 134, 48, 1) 0%, rgba(255, 71, 63, 1) 100%);
            height: 0.4rem;
            width: 0.4rem;
            position: relative;
            margin-top: 0.14rem;
            box-shadow: 0 2px 9px rgba(225, 18, 9, 0.25);
        }

        .addCart .heng {
            border-radius: 0.02rem;
            width: 0.24rem;
            height: 0.02rem;
            position: absolute;
            background: #fff;
            margin: auto;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .addCart .shu {
            border-radius: 0.02rem;
            width: 0.02rem;
            height: 0.24rem;
            position: absolute;
            background: #fff;
            margin: auto;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .bottom-price {
            position: relative;
            display: flex;
            justify-content: space-between;
        }
        .slide-img{
            border-radius: 0.3rem;
        }
    </style>
</head>

<body class="has-footer" style="padding-top:0.88rem;">
<div class="wrap">
    <!--公共头部-->
    <header class="global-header search-header border-1px-bottom bg-red">
        <div class="center-area">家教预约平台</div>
    </header>
    <div class="bg-red top-box">

        <!--轮播-->
        <div id="banner" class="banner-swiper swiper-container">
            <ul class="swiper-wrapper">
                <li class="swiper-slide">
                    <a href="javascript:;">
                        <div class="wine-img">
                            <img class="slide-img" src="http://www.cisau.com.cn/images/zhuye/2018-8-31c.jpg">
                        </div>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="javascript:;">
                        <div class="wine-img">
                            <img class="slide-img" src="http://www.cisau.com.cn/images/zhuye/2018-9-3.jpg">
                        </div>
                    </a>
                </li>
                <li class="swiper-slide">
                    <a href="javascript:;">
                        <div class="wine-img">
                            <img class="slide-img" src="http://www.cisau.com.cn/images/zhuye/2019-5-30.jpg">
                        </div>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="item-box margin-top">
        <div class="class-box">
            <a href="/page/appointment">
                <div class="class-item">
                    <img src="/img/enter.png">
                    <span class="class-name">预约家教入口</span>
                </div>
            </a>
            <a href="/page/myOrder">
                <div class="class-item">
                    <img src="/img/show.png">
                    <span class="class-name">查看预约结果入口</span>
                </div>
            </a>
            <a href="/page/classRoomList">
                <div class="class-item">
                    <img src="/img/search.png">
                    <span class="class-name">教室空余查询</span>
                </div>
            </a>
        </div>
    </div>

    <div class="item-box" style="margin-top:0.3rem;">
        <span class="recommend">推荐</span>
    </div>
    <div class="item-box" style="margin-top:0.3rem;">
        <div class="part waterfall-list">
            <#if list??>
                <#list list as room>
                <div class="item">
                    <a href="">
                        <div class="content">
                            <div class="img-container">
                                <div class="img">
                                    <img class="p-img" src="${room.imgUrl}">
                                </div>
                            </div>
                            <div class="info">
                                <div class="title">${room.name}</div>
                                <div class="tag-box">
                                    <div class="tag">空闲</div>
                                    <div class="tag">精选</div>
                                </div>
                                <div class="bottom-price">
                                    <div class="price">
                                        可预约
                                    </div>
                                    <#--<div class="addCart">-->
                                        <#--<div class="heng"></div>-->
                                        <#--<div class="shu"></div>-->
                                    <#--</div>-->
                                </div>

                            </div>
                        </div>
                    </a>
                </div>
                </#list>
            </#if>
        </div>
    </div>
</div>
<!--底部工具栏-->
<div class="global-footer">
    <a href="/page/index" class="home active">
        <div class="img"><img src="../img/icons/home-active.png"></div>
        <div class="text">首页</div>
    </a>
    <a href="/page/type" class="home">
        <div class="img"><img src="../img/icons/home-active.png"></div>
        <div class="text">分类</div>
    </a>
    <a href="/page/person" class="home">
        <div class="img"><img src="../img/icons/my.png"></div>
        <div class="text">个人中心</div>
    </a>
</div>
<script src="../js/lib/zepto.js"></script>
<script src="../js/lib/jquery-2.1.1.min.js"></script>
<script src="../js/lib/fastclick.js"></script>
<script src="../js/plugins/lazyload.js"></script>
<script src="../js/plugins/swiper.min.js"></script>
<script src="../js/plugins/dialog.js"></script>
<script src="../js/common.js"></script>
<script src="../js/lib/jquery.fly.min.js"></script>
<script>
    $(function () {
        banner_init();
    })

    // banner图初始化
    function banner_init() {
        var slide_len = $('.swiper-wrapper .swiper-slide').length;
        return new Swiper('.swiper-container', {
            pagination: '.swiper-pagination',
            loop: true,
            autoplay: 3000,
            autoplayDisableOnInteraction: false, // 滑动后继续轮播
            paginationBulletRender: function (swiper, index, className) {
                return '<span class="' + className + '">' + (index + 1) + '/' + slide_len + '</span>';
            }
        })
    }
</script>
</body>

</html>