<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Result</title>
</head>
<body>
<h2 style="text-align: center"> Результаты проверки</h2>
<p><%
    if ((Boolean) request.getAttribute("result")) {
        out.println("Точка в находится в области");
    }
    else{
        out.println("Точка в находится вне области");
    }
%></p>
</body>
</html>
