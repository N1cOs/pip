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
        <form id="test" class="choose" action="controllerServlet" method="post">
            <p>Выберите координату по X:</p>
            <input id="hiddenX" type="hidden" name="valueOfX" value="-1">
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
            <input type="submit" name="submitForm" value="Проверить">
        </form>
    </div>
    <footer>
        <div>Университет ИТМО, 2018</div>
    </footer>
    <script type="text/javascript" src="static/js/validationForm.js"></script>
    <script type="text/javascript" src="static/js/sendData.js"></script>
    <script type="text/javascript" src="static/js/animatingButtons.js"></script>
</body>
</html>
