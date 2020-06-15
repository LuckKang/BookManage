<%--
  Created by IntelliJ IDEA.
  User: cfk
  Date: 2020/6/11
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="/static/jquery-1.8.3.min.js"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 cdn-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<script>
    $(function () {
        $('#default_sel').val(10)

        // 找到所在标签元素
        var $b_Name = $('[name=b_name]')
        var $b_Author=$('[name=b_author]')
        var $b_Time=$('[name=b_time]')
        var $b_Type=$('[name=b_type]')

        // 如果失去焦点，则进行检查判断是否合法
        $b_Name.blur(function () {
            // 封装函数 调用函数
            fnCheckBName()
        })
        function fnCheckBName() {
            var vals = $b_Name.val()

            if (vals == '') {
                $b_Name.next().show().html('图书名称不能为空')
                return
            }
            if (vals != null) {
                // 合法 -- 隐藏报错信息
                $b_Name.next().hide()
            } else {
                // 不合法 -- 报错 -- 下面的span标签显示
                $b_Name.next().show().html('请输入图书名称')
            }
        }

        $b_Author.blur(function(){
            // 封装函数，调用函数
            fnCheckBAuthor()
        })
        function fnCheckBAuthor(){
            var vals=$b_Author.val()
            if (vals==''){
                $b_Author.next().show().html('作者姓名不能为空')
                return
            }
            if(vals != '') {
                $b_Author.next().hide()
            } else {
                $b_Author.next().show().html('请输入作者姓名')
            }
        }

        $b_Time.blur(function(){
            // 封装函数，调用函数
            fnCheckBTime()
        })
        function fnCheckBTime(){
            var vals=$b_Time.val()
            var res = /^(\d{4})(-)(\d{1,2})\2(\d{1,2})$/i

            if (vals==''){
                $b_Time.next().show().html('购买日期不能为空')
                return
            }
            if(res.test(vals)) {
                $b_Time.next().hide()
            } else {
                $b_Time.next().show().html('你输入的日期格式不正确')
            }
        }
        $("#default_sel").change(function(){
            if ($("#default_sel").val() != 10){
                $b_Type.next().hide()
            }else{
                $b_Type.next().show().html("请选择图书类型")
            }

        });

    })

</script>
<html>
<head>
    <title>Title</title>
    <script src="/static/jquery-1.8.3.min.js" type="text/javascript"></script>

    <link type="text/css" rel="stylesheet" href="/static/style.css">
</head>
<body>
<h2 align="center">新增图书信息</h2>
<div class="container clearfix">
    <form action="/books/addBook" method="post">
        <ul class="list-unstyled">
            <li>
                <label>图书名称：</label>
                <input type="text" class="form-control" name="b_name">
                <span class="text-danger strong"></span><br>
            </li>
            <li>
                <label>图书作者：</label>
                <input type="text" class="form-control" name="b_author">
                <span class="text-danger strong"></span><br>
            </li>
            <li>
                <label>购买日期：</label>
                <input type="text" class="form-control" name="b_time">yyyy-MM-dd格式
                <span class="text-danger strong"></span><br>
            </li>
            <li>
                <label>图书类别：</label>
                <select name="b_type" class="form-control" id="default_sel">
                    <option value="10">--请选择--</option>
                    <option value="0" selected>计算机/软件</option>
                    <option value="1" selected>小说/文摘</option>
                    <option value="2" selected>杂项</option>
                </select>
                <span class="text-danger strong"></span><br><br>
            </li>
            <li>
                <button type="submit" class="btn btn-primary">增加图书</button>
            </li>
        </ul>
    </form>
</div>
</body>
</html>
