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

        .bg-red {
            background: #ff5400;
            color: #fff;
        }

        .type-list {
            width: 100%;
            height: 0.7rem;
            background: #ff9b6b;
        }

        .type-list ul {
            height: 0.7rem;
            display: flex;
            justify-content: space-around;
            justify-items: center;
            line-height: 0.7rem;
        }

        .type-list ul li {
            color: #fff;
        }

        .type-list ul li.active {
            color: #ff0000;
        }

        .content-list {

        }

        .content-list .item, .cinema-list-search .item {
            width: 100%;
            background: rgba(255, 255, 255, 1);
            border-radius: 0.12rem;
            padding: 0.3rem 0.2rem;
            box-sizing: border-box;
            margin-top: 0.2rem;
            cursor: pointer;
            position: relative;
        }

        .title-warper {
            display: flex;
            /* justify-content: space-between; */
            font-size: 0.3rem;
            font-weight: bolder;
            padding: 0.1rem 0;
        }

        .title-warper .title-left {
            flex: 1;
        }

        .title-warper .del {
            color: #999;
            font-size: 0.22rem;
            font-weight: 400;
        }

        .title-warper .del span {
            text-decoration: line-through;
        }

        .title-warper .price {
            color: #FD4B57;
            font-size: 0.24rem;
            font-weight: 400;
        }

        .title-warper .price .font {
            font-size: 0.22rem;
        }

        .address {
            display: flex;
            justify-content: space-between;
            font-size: 0.24rem;
            color: rgba(102, 102, 102, 1);
            padding: 0.1rem 0;
        }

        .address .address-left {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            width: 55vw;
        }

        .distance {
            width: 18vw;
            text-align: right;
        }

        .support-tags {
            padding: 0.1rem 0;
        }

        .support-tags span {
            padding: 0 0.05rem;
            font-size: 0.2rem;
        }

        .tag-orange {
            color: #F99402;
            border-radius: 0.03rem;
            border: 0.01rem solid rgba(249, 148, 2, 0.4);
        }

        .tag-gray {
            color: #626262;
            border-radius: 0.03rem;
            border: 0.01rem solid #C8C8C8;
        }

        .cinema-list .item:after, .cinema-list-search .item:after {
            border-bottom: 1px solid #DDE7E9;
            content: '';
            position: absolute;
            width: 95%;
            bottom: 0;
            margin: 0 auto;
            left: 0;
            right: 0;
        }


    </style>
</head>

<body class="has-footer" style="padding-top:0.88rem;">
<div class="wrap">
    <!--公共头部-->
    <header class="global-header search-header border-1px-bottom bg-red">
        <div class="center-area">我的发布</div>
    </header>

    <div class="content-list">
        <div class="item">
            <div class="title-warper">
                <div class="title-left">
                    <span>课程名称</span>
                </div>
                <div class="del">
                    <span>￥35</span>
                </div>
                <div class="price">
                    <span>￥35</span>
                    <span class="font">起</span>
                </div>
            </div>
            <div class="address">
                <div class="address-left">
                    <span>简介简介简介简介简介简介适合小学一年级</span>
                </div>
                <div class="distance">
                    <span>博士</span>
                    <span>学历</span>
                </div>
            </div>
            <div class="support-tags">
                <span class="tag-orange">优质教师</span>
                <span class="tag-gray">耐心</span>
            </div>
        </div>
        <div class="item">
            <div class="title-warper">
                <div class="title-left">
                    <span>课程名称</span>
                </div>
                <div class="del">
                    <span>￥35</span>
                </div>
                <div class="price">
                    <span>￥35</span>
                    <span class="font">起</span>
                </div>
            </div>
            <div class="address">
                <div class="address-left">
                    <span>简介简介简介简介简介简介适合小学一年级</span>
                </div>
                <div class="distance">
                    <span>博士</span>
                    <span>学历</span>
                </div>
            </div>
            <div class="support-tags">
                <span class="tag-orange">优质教师</span>
                <span class="tag-gray">耐心</span>
            </div>
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
        getContent();
    })



    function getContent() {
        $.ajax({
            url: '/content/findListByUserId',
            dataType: 'json',
            success: function (res) {
                if (res.success) {
                    var data = res.data;
                    var html = '';
                    $.each(data, function (i, r) {
                        html += '<div class="item">\n' +
                            '            <div class="title-warper">\n' +
                            '                <div class="title-left">\n' +
                            '                    <span>课程名称</span>\n' +
                            '                </div>\n' +
                            '                <div class="del">\n' +
                            '                    <span>￥35</span>\n' +
                            '                </div>\n' +
                            '                <div class="price">\n' +
                            '                    <span>￥35</span>\n' +
                            '                    <span class="font">起</span>\n' +
                            '                </div>\n' +
                            '            </div>\n' +
                            '            <div class="address">\n' +
                            '                <div class="address-left">\n' +
                            '                    <span>简介简介简介简介简介简介适合小学一年级</span>\n' +
                            '                </div>\n' +
                            '                <div class="distance">\n' +
                            '                    <span>博士</span>\n' +
                            '                    <span>学历</span>\n' +
                            '                </div>\n' +
                            '            </div>\n' +
                            '            <div class="support-tags">\n' +
                            '                <span class="tag-orange">优质教师</span>\n' +
                            '                <span class="tag-gray">耐心</span>\n' +
                            '            </div>\n' +
                            '        </div>';
                    })
                    $('.content-list').html(html);
                } else {
                    alert(res.msg);
                }
            }
        })
    }


</script>
</body>

</html>