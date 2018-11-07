<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Input</title>
  <link rel="stylesheet" href="static/css/home.css">
  <script type="text/javascript"></script>
  <script type="text/javascript" src="static/js/validationForm.js"></script>
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
    <input id="chb_1" type="checkbox" name="coord_x" value="-4">
    <label for="chb_1">-4</label>
    <input id="chb_2" type="checkbox" name="coord_x" value="-3">
    <label for="chb_2">-3</label>
    <input id="chb_3" type="checkbox" name="coord_x" value="-2">
    <label for="chb_3">-2</label>
    <input id="chb_4" type="checkbox" name="coord_x" value="-1">
    <label for="chb_4">-1</label>
    <input id="chb_5" type="checkbox" name="coord_x" value="0">
    <label for="chb_5">0</label>
    <input id="chb_6" type="checkbox" name="coord_x" value="1">
    <label for="chb_6">1</label>
    <input id="chb_7" type="checkbox" name="coord_x" value="2">
    <label for="chb_7">2</label>
    <input id="chb_8" type="checkbox" name="coord_x" value="3">
    <label for="chb_8">3</label>
    <input id="chb_9" type="checkbox" name="coord_x" value="4">
    <label for="chb_9">4</label>
    <p>Выберите координату по Y:</p>
    <input type="text" maxlength="15" name="coord_y" placeholder="Введите число от -5 до 5">
    <p>Выберите значение радиуса R:</p>
    <input id="radius" type="hidden" name="radius" value="-1">
    <div class="param_radius" onclick="setRadius(event.target.value)">
      <input type="button" value="1">
      <input type="button" value="1.5">
      <input type="button" value="2">
      <input type="button" value="2.5">
      <input type="button" value="3">
    </div>
    <input type="submit" name="done" value="Проверить">
  </form>
</div>
<footer>
  <div>Университет ИТМО, 2018</div>
</footer>
<script type="text/javascript" src="static/js/sendData.js"></script>
</body>
</html>
