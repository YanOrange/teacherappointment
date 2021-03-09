<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.2</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="/css/font.css">
    <link rel="stylesheet" href="/css/xadmin.css">
    <script src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <!--[if lt IE 9]>
    <script src="/js/html5.min.js"></script>
    <script src="/js/respond.min.js"></script>
    <![endif]-->
    <style>
        .iconfont {
            font-family: "iconfont" !important;
            font-size: 16px;
            font-style: normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }
    </style>
</head>

<body>
<div class="x-nav">
            <span class="layui-breadcrumb">
                <a href="">首页</a>
                <a href="">演示</a>
                <a><cite>导航元素</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
    </a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">

                    <form class="layui-form layui-col-space5">
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" autocomplete="off" placeholder="开始日" name="start" id="start">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <input class="layui-input" autocomplete="off" placeholder="截止日" name="end" id="end"></div>
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="username" placeholder="请输入用户名" autocomplete="off"
                                   class="layui-input"></div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn" lay-submit="" lay-filter="sreach">
                                <i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>
                <div class="layui-card-header">

                </div>
                <div class="layui-card-body ">
                    <table id="LAY_table_user" class="layui-table">

                    </table>
                </div>

            </div>
        </div>
    </div>
</div>
</body>

<script>
    layui.use('laydate',
            function () {
                var laydate = layui.laydate;

                //执行一个laydate实例
                laydate.render({
                    elem: '#start' //指定元素
                });

                //执行一个laydate实例
                laydate.render({
                    elem: '#end' //指定元素
                });

            });
</script>
<script>
    layui.use('table', function () {
        var table = layui.table;

    });
</script>
<script>
    /*操作数据*/

    /*用户-删除*/
    function member_del(obj, id) {
        var arr = [];
        arr.push(id);
        layer.confirm('确认要永久删除吗？', function (index) {
            //发异步删除数据
            $.ajax({
                url: '/user/delete',
                data: JSON.stringify(arr),
                type: 'post',
                dataType: 'json',
                contentType: "application/json",
                success: function (res) {
                    if (res.success) {
                        $(obj).parents("tr").remove();
                        layer.msg('已删除!', {icon: 1, time: 1000});
                    } else {
                        layer.msg(res.msg, {icon: 2, time: 1000});
                    }
                }
            })
        });
    }

</script>
<script th:inline="none">
    /*数据查询*/

    $(function () {
        getAllEssay();
    })

    /*获取全部文章*/
    function getAllEssay() {
        layui.use('table',
                function () {
                    var table = layui.table;
                    table.render({
                        id: "checkboxTable",
                        url: '/user/findAll',
                        elem: '#LAY_table_user',
                        page: true,
                        cols: [[
                            {checkbox: true},
                            {field: 'id', title: 'ID', width: 80},
                            {field: 'name', title: '姓名', sort: true, width: 120},
                            {field: 'age', width: 80, title: '年龄', sort: true},
                            {field: 'phone', title: '联系方式', sort: true, width: 150},
                            {field: 'idCard', title: '身份证', sort: true, width: 150},
                            {field: 'address', title: '地址', sort: true, width: 150},
                            {field: 'email', title: '电子邮箱', sort: true, width: 120},
                            {field: 'school', title: '毕业院校', sort: true, width: 120},
                            {field: 'education', title: '学历', sort: true, width: 120},
                            {field: 'eduNo', title: '学位证编号', sort: true, width: 120},
                            {field: 'createTime', title: '创建日期', sort: true, width: 120},
                            {field: 'status', title: '认证状态', sort: true, width: 120,templet:'<div>{{d.status==0?"未认证":(d.status==1?"认证中":"已认证")}}</div>'},
                            {toolbar: '#barTeacher', title: '操作', width: 120}

                        ]]
                    })

                });
    }


    /**
     * 判断字段是否为空
     * @param o
     * @returns {*}
     */
    function isNullFormat(o) {
        if (o) {
            return o;
        } else {
            return '暂无';
        }
    }

</script>
<script type="text/html" id="barTeacher">
    <a title="移除" onclick="member_del(this,{{d.id}})" href="javascript:;">
        <i class="layui-icon">&#xe640;</i>
    </a>
</script>

</html>