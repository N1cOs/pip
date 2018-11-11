<%@ page import="domain.Result" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Input</title>
    <link rel="stylesheet" href="static/css/home.css">
</head>

<body>
    <div class="header">
        <div class="name">
            <span class="nick">Кармацких Никита Александрович</span>
            <span class="dimon">Чистоходов Дмитрий Андреевич</span>
        </div>
        <div class="meta_info">
            <span id="group">Группа Р3201</span>
            <span id="variant">Вариант № 18127</span>
        </div>
    </div>
    <div class="content">
        <form id="area_form" class="choose" action="controllerServlet" method="get">
            <p>Выберите координату по X:</p>
            <input id="hiddenX" type="hidden" name="valueOfX" value="-10">
            <div class="coord_x">
                <input type="button" value="-2">
                <input type="button" value="-1.5">
                <input type="button" value="-1">
                <input type="button" value="-0.5">
                <input type="button" value="0">
                <input type="button" value="0.5">
                <input type="button" value="1">
                <input type="button" value="1.5">
                <input type="button" value="2">
            </div>
            <p>Выберите координату по Y:</p>
            <input type="text" maxlength="15" name="valueOfY" placeholder="Введите число от -5 до 3">
            <p>Выберите значение радиуса R:</p>
            <input type="text" maxlength="15" name="valueOfR" placeholder="Введите число от 1 до 4">
            <p>Можете выбрать точку на области:</p>
            <canvas id="myCanvas" width="400" height="400"></canvas>
            <input type="submit" name="submitForm" value="Проверить">
        </form>
        <div class="previous_checks">
            <div class="title">
                Результаты прошлых проверок
            </div>
            <table id="history_table">
                <tr>
                    <th>Дата и время проверки</th>
                    <th>Координата X</th>
                    <th>Координата Y</th>
                    <th>Радиус</th>
                    <th>Результат</th>
                </tr>
                <%
                    ArrayList<Result> previousResults = (ArrayList<Result>) session.getAttribute("previousResults");
                    if(previousResults == null){
                        previousResults = new ArrayList<Result>();
                        session.setAttribute("previousResults", previousResults);
                    }
//                    Logger logger = Logger.getLogger(getClass().getName());
                    for(Result result : previousResults){
                        out.println("<tr>");
                        String[] fields = result.getAllValues().split(",");
                        for(int i = 0; i < fields.length; i++){
                            out.print("<td");
                            if(i == 1){
                                out.println(" class = \"x_coord\">");
                            }
                            else if(i == 2){
                                out.println(" class = \"y_coord\">");
                            }
                            else{
                                out.println(">");
                            }
                            out.println(fields[i]);
                            out.println("</td>");
                        }
                        out.println("</tr>");
                    }
                %>
            </table>
        </div>
    </div>
    <%--<footer>--%>
        <%--<div>Университет ИТМО, 2018</div>--%>
    <%--</footer>--%>
    <script type="text/javascript" src="static/js/areaCanvas.js"></script>
    <script type="text/javascript" src="static/js/validationForm.js"></script>
    <script type="text/javascript" src="static/js/sendData.js"></script>
    <script type="text/javascript" src="static/js/animatingButtons.js"></script>
    <script type="text/javascript" src="static/js/prettyOutput.js"></script>
</body>
</html>
