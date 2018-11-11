<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Результат</title>
    <link rel="stylesheet" href="static/css/result.css">
</head>
<body>
    <div class="header">
        Результаты
    </div>
    <div class="content">
        <table>
            <tr>
                <th>Координата X</th>
                <th>Координата Y</th>
                <th>Радиус</th>
                <th>Результат</th>
            </tr>
            <tr>
                <td><%= request.getParameter("valueOfX")%></td>
                <td><%= request.getParameter("valueOfY")%></td>
                <td><%= request.getParameter("valueOfR")%></td>
                <td>
                    <%
                        if (request.getAttribute("correct") == null) {
                            if ((Boolean) request.getAttribute("result")) {
                                out.println("Точка находится в области");
                            } else {
                                out.println("Точка находится вне области");
                            }
                        }
                        else{
                            out.println("Введены некорректные данные");
                        }
                    %>
                </td>
            </tr>
        </table>
    </div>
    <footer>
        <a href="index.jsp">Вернуться на главную страницу</a>
        <div>Университет ИТМО, 2018</div>
    </footer>
</body>
</html>
