<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- 登录 注册 购物车... -->
<div class="container-fluid">
    <div class="col-md-4">
        <img src="img/logo3.png"/>
    </div>
    <div class="col-md-5">
        <img src="img/header.png"/>
    </div>
    <div class="col-md-3" style="padding-top:20px">
        <ol class="list-inline">
            <c:if test="${empty user }">
                <li><a href="login">登录</a></li>
                <li><a href="register">注册</a></li>
            </c:if>
            <c:if test="${!empty user }">
                <li style="color:red">欢迎您，${user.nickname }</li>
            </c:if>
            <li><a href="cart.jsp">购物车</a></li>
            <li><a href="order_list.jsp">我的订单</a></li>
            <li><a href="${pageContext.request.contextPath}/product_list?sid=456">我的店铺</a></li>
        </ol>
    </div>
</div>

&nbsp;

<!-- 导航条 -->
<div class="container-fluid">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">首页</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav" id="categoryUL">

                    <%--<c:forEach items="${categoryList}" var="category">--%>
                    <%--<li><a href="#">${category.cname}</a></li>--%>
                    <%--</c:forEach>--%>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
            </div>
        </div>

        <script type="text/javascript">
            // hearder.jsp加载完成后，去服务器端获得所有的category数据
            $(function () {
                var content = "";
                $.post(
                    "${pageContext.request.contextPath}/categoryList",
                    function (data) {
                        //    [{"cid":"xxx","cname":"xxx"},{},{}]
                        //    动态的创建li
                        for (var i = 0; i < data.length; i++) {
                            content += "<li><a href='${pageContext.request.contextPath}/product?method=productList&cid="+data[i].cid+"'>" + data[i].cname + "</a></li>";
                        }
                    //    将拼接好的li放置到ul中
                        $("#categoryUL").html(content);
                    },
                    "json"
                );
            });

        </script>


    </nav>
</div>