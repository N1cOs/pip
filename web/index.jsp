<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Input</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
  </script>
  <style type="text/css">
    body {
      margin: 0;
    }

    .header,
    footer {
      background-color: #0a2891;
      color: #fff;
      height: 85px;
      font-family: monospace;
    }

    footer {
      position: absolute;
      bottom: 0;
      width: 100%;
    }

    footer div {
      text-align: center;
      font-size: 14px;
      margin-top: 42px;
    }

    .content {
      margin-top: 40px;
    }

    .content img {
      width: 30%;
      margin-right: 10%;
      float: right;
      border: 5px solid #0a28b4;
      border-radius: 10px;
    }

    .choose {
      min-width: 45%;
      width: 45%;
      padding: 18px 0px 18px 10px;
      margin-left: 10%;
      border-radius: 10px;
      border: 5px solid #0a28b4;
    }

    .choose>p {
      font-size: 1.3em;
      font-weight: bold;
      margin-top: 2%;
      margin-bottom: 2%;

    }

    input[type="text"] {
      border: solid #ed1c24;
      font-size: 0.9em;
    }

    input[type="text"]:focus,
    input[type="button"]:focus {
      outline: none;
    }

    .param_radius>input:first-of-type {
      margin-left: 0;
    }

    input[type="button"] {
      font-size: 0.9em;
      margin-left: 5%;
      border-style: none;
      border-radius: 3px;
      background-color: #ed1c24;
      color: white;
    }


    [type="submit"] {
      font-size: 0.9em;
      width: 18%;
      padding: 5px;
      color: white;
      margin-left: 80%;
      margin-top: 10%;
      border-style: none;
      border-radius: 5px;
      background-color: #ed1c24;
    }


    input[type="button"]:hover,
    [type="submit"]:hover {
      background-color: #bb1c24;
    }

    [type="checkbox"]:not(:checked),
    [type="checkbox"]:checked {
      position: absolute;
      left: -100px;
    }

    [type="checkbox"]:not(:checked)+label,
    [type="checkbox"]:checked+label {
      position: relative;
      padding-left: 25px;
      cursor: pointer;
    }

    [type="checkbox"]:not(:checked)+label::before,
    [type="checkbox"]:checked+label::before {
      content: '';
      position: absolute;
      left: 0;
      width: 15px;
      height: 15px;
      border: 2px solid #ed1c24;
      background: #fff;
      border-radius: 4px;
    }

    [type="checkbox"]:not(:checked)+label::after,
    [type="checkbox"]:checked+label::after {
      content: '✔';
      position: absolute;
      top: 2px;
      left: 2px;
      font-size: 1.2em;
      line-height: 16px;
      color: #ed1c24;
    }

    [type="checkbox"]:not(:checked)+label::after {
      opacity: 0;
    }

    [type="checkbox"]:checked+label::after {
      opacity: 1;
    }

    p[id] {
      margin-top: 0;
      font-size: 28px;
      text-align: center;
    }

    #group {
      font-size: 18px;
      margin-left: 200px;
    }

    #variant {
      position: absolute;
      right: 200px;
      font-size: 18px;
    }
  </style>

  <script type="text/javascript">
      function validCheckboxes() {
          let checkboxes = document.getElementsByName("coord_x");
          let amount = 0;
          for (let i = 0; i < checkboxes.length; i++) {
              if (checkboxes[i].checked) {
                  amount++;
              }
          }
          return amount == 1;
      }

      function setRadius(radiusValue) {
          document.getElementById("radius").value = radiusValue;
      }

      function validY() {
          let textY = document.querySelector('input[type="text"]').value;
          textY = textY.replace(",", ".");
          let afterDot = textY.charAt(textY.indexOf(".") + 1);
          if (textY >= -5 && textY <= 5 && textY != "" && afterDot)
              return true;
          return false;
      }

      function validForm() {
          let valid = true;
          if (!validCheckboxes()) {
              alert("Выберите одно значение по координате X");
              valid = false;
          }
          if (!validY()) {
              alert("Выберите значение от -5 до 5 по координате Y. Внимание, "+
                  " после разделителя между дробной и целой частью должна быть минимум одна цифра");
              valid = false;
          }
          if (document.getElementById("radius").value == -1) {
              alert("Выберите значение радиуса");
              valid = false;
          }
          return valid;
      }
  </script>
</head>

<body>
<div class="header">
  <p id="name">Кармацких Никита Александрович</p>
  <p>
    <span id="group"> Группа Р3201</span>
    <span id="variant">Вариант 18106</span>
  </p>
</div>
<div class="content">
  <img src="area.png" alt="area">
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
    <input type="submit" onclick="return validForm()" name="done" value="Проверить">
  </form>
</div>
<footer>
  <div>Университет ИТМО, 2018</div>
</footer>
<script type="text/javascript">
    $('input[type="text"]').on("keyup change", function() {
        $(this).val($(this).val().replace(/[^0-9-.,]/g, ""));
    });

    var buttons = document.querySelectorAll('.param_radius [type="button"]');
    for (let i = 0; i < buttons.length; i++) {
        buttons[i].onclick = function() {
            setDefault(buttons);
            this.style.backgroundColor = "#bb1c24";
        }
    }

    function setDefault(elements) {
        for (let i = 0; i < elements.length; i++) {
            elements[i].style.backgroundColor = "#ed1c24";
        }
    }
</script>
</body>
</html>
