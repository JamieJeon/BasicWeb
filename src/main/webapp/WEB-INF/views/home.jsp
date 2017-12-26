<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<h1>
    Hello world!222222
</h1>

<P>  The time on the server is ${serverTime}. </P>

<c:forEach items="${sample}" var="list">
    <p>ID : ${list.id} / PW : ${list.pw}</p>
</c:forEach>
</body>
</html>
