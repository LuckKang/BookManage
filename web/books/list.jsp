<%--
  Created by IntelliJ IDEA.
  User: cfk
  Date: 2020/6/11
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(function() {
            $("tr").each(function(i){
                if (i == 0){
                    this.style.backgroundColor = '#86DA96';
                }else{
                    this.style.backgroundColor = ['#DBEED2','#fff'][i % 2];
                }
            })
            $("td,th").addClass("text-center");
        });
    </script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>
<h2 align="center">图书信息</h2>
<div class="container">
    <table width="1000" border="1">
        <thead>
            <tr>
                <th>图书名称</th>
                <th>图书作者</th>
                <th>购买时间</th>
                <th>图书分类</th>
                <th>操作</th>
            </tr>
        </thead>
        <c:forEach items="${list}" var="book">
            <tbody>
                <tr>
                    <td>${book.b_name}</td>
                    <td>${book.b_author}</td>
                    <td>${book.b_time}</td>
                    <td>${book.b_type==0?"计算机/软件":book.b_type==1?"小说/文摘":"杂项"}</td>
                    <td><a class="btn btn-link" href="/books/del/${book.b_id}">删除</a></td>
                </tr>
            </tbody>

        </c:forEach>
    </table><br>
    <a class='btn btn-primary btn-lg' href="/books/toAddBook">新增图书信息</a>
</div>


</body>
</html>
