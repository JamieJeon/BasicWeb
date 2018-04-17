<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>
    Hello world!333333
</h1>

<P>  The time on the server is ${serverTime}!!!</P>

<h2>jstl 이용</h2>
<c:forEach items="${sample}" var="list">
    <p>ID : ${list.ID} / PW : ${list.PW}</p>
</c:forEach>

<h2>Vue 이용</h2>
<div id="app" v-cloak>
    <p v-for="user in users">ID : {{user.ID}} / PW : {{user.PW}}</p>
</div>

<script src="https://unpkg.com/vue/dist/vue.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.1.0.min.js"></script>
<script>
    var test;
    $.ajax({
        type: "GET",
        url: "../REST/REST_8995",
        data: {
        },
        dataType: "json",
        success: function (data) {
            var app = new Vue({
                el: '#app',
                data: {
                    users: data.BODY
                }
            });
        },
        error: function (xhr, status, error) {
            console.log(xhr + " " + status + " " + error);
        }
    });
</script>
</body>
</html>
