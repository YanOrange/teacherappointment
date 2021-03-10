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
    <script type="text/javascript" src="/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/xadmin.js"></script>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="/js/html5.min.js"></script>
    <script src="/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form">
            <div class="layui-form-item">
                <label for="account" class="layui-form-label">
                    <span class="x-red">*</span>用户名
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="account" name="account" required="" lay-verify="required"
                           autocomplete="off" class="layui-input" value="">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="passWord" class="layui-form-label">
                    <span class="x-red">*</span>密码
                </label>
                <div class="layui-input-inline">
                    <input type="password" id="passWord" name="passWord" required="" lay-verify="required"
                           autocomplete="off" class="layui-input" value="">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_email" class="layui-form-label">
                    <span class="x-red">*</span>联系方式
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="phone" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input" value="">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_email" class="layui-form-label">
                    <span class="x-red">*</span>邮箱
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="email" required="" lay-verify="required"
                           autocomplete="off" class="layui-input" value="">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_email" class="layui-form-label">
                    <span class="x-red">*</span>联系地址
                </label>
                <div class="layui-input-inline">
                    <input type="text" name="address" required="" lay-verify="required"
                           autocomplete="off" class="layui-input" value="">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_repass" class="layui-form-label">
                </label>
                <button class="layui-btn" lay-filter="edit" lay-submit="">
                    确认新增
                </button>
            </div>
        </form>
    </div>
</div>
<script>
    layui.use(['form', 'layer'],
            function () {

        $(function(){
            findAllDept();
        })

                // $ = layui.jquery;
                var form = layui.form,
                        layer = layui.layer;

                //自定义验证规则
                form.verify({});

                //监听提交
                form.on('submit(edit)',
                        function (data) {
                            console.log(data);
                            //发异步，把数据提交给后端
                            data.field.status = ${status};
                            var s = JSON.stringify(data.field);
                            console.log(s)
                            $.ajax({
                                url: '/user/add',
                                data: s,
                                success: function (res) {
                                    if (res.success) {
                                        layer.alert('新增成功', {
                                                    icon: 6
                                                },
                                                function () {
                                                    try { //关闭当前frame
                                                        xadmin.close();

                                                        // 可以对父窗口进行刷新
                                                        xadmin.father_reload();
                                                    } catch (e) {
                                                        location.href='/page/login'
                                                    }
                                                });
                                    } else {
                                        layer.msg(res.msg, {icon: 2});
                                    }


                                }
                            })

                            return false;
                        });


            });</script>
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
</body>

</html>
