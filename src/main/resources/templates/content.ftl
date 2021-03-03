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
            background: #fff;
        }

        .bg-red {
            background: #ff5400;
            color: #fff;
        }
        .title{
            font-size: 0.4rem;
            padding: 0.3rem 0 0 0.3rem;
            color:#333;
        }
        .teacher-name{
            color: #8a8a8a;
            font-size: 0.2rem;
            display: flex;
            margin-left: 0.3rem;
            margin-top: 0.2rem;
        }
        .description{
            font-size: 0.3rem;
            padding: 0 0.3rem;
            margin-top:0.5rem;
            line-height: initial;
        }
        .bottom-btn{
            position: fixed;
            bottom: 0;
            display: flex;
            justify-content: space-between;
            width: 100%;
        }
        .bottom-btn a{
            height:1rem;
            display: block;
            width:50%;
            text-align: center;
            line-height: 1rem;
            color:#fff;
        }
        .bottom-btn a:active{
            opacity: 0.7 !important;
        }
        .comment{
            background: #ff5400;
        }
        .appointment{
            background: #00ad25;
        }
        .comment-content{
            padding: 0.3rem 0 0 0.3rem;
        }



    </style>
</head>

<body class="has-footer" style="padding-top:0.88rem;">
<div class="wrap">
    <!--公共头部-->
    <header class="global-header search-header border-1px-bottom bg-red">
        <div class="center-area">课程详情</div>
    </header>
    <div class="title">
        课程名称课程名称
    </div>
    <div class="teacher-name">
        <span>教师名</span>
        <span style="margin-left:0.2rem;">学历</span>
        <span style="margin-left:0.2rem;">适合一年级</span>
    </div>
    <div class="description">
        简介：<span>简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介</span>
    </div>

    <div class="description">
        费用：<span>70</span>元/小时
    </div>

    <div class="description">
        联系方式：<span>17600552852</span>
    </div>

    <div class="description">
        家庭住址：<span>XXXXXXXXXXXXXXX</span>
    </div>

    <div class="description">
        教学详情：<span>教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情教学详情</span>
    </div>

    <div class="comment-nav">
        <div class="title">留言</div>
        <div class="comment-list">
            <div class="comment-content">
                <span>留言用户</span>:<span>内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容</span>
            </div>
            <div class="comment-content">
                <span>留言用户</span>:<span>内容内容内容内容内容内容内容内容</span>
            </div>
            <div class="comment-content">
                <span>留言用户</span>:<span>内容内容内容内容内容内容内容内容</span>
            </div>
        </div>
    </div>

</div>
<div class="bottom-btn">
    <a class="comment">留言</a>
    <a class="appointment" href="tel:17600449652">电话预约</a>
</div>
<script src="../js/lib/zepto.js"></script>
<script src="../js/lib/jquery-2.1.1.min.js"></script>
<script src="../js/plugins/dialog.js"></script>
<script src="../js/common.js"></script>
<script>
    $(function () {


    })


</script>
</body>

</html>