<%--
  Created by IntelliJ IDEA.
  User: matt
  Date: 15.05.2019
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">

    function onSuccess(Value) {
        document.getElementById("output").innerHTML = toHTMLTable(Value);

    }
    function onSuccess2(Value) {
        document.body.innerHTML = document.body.innerHTML.replace(/<td>Принято/g, '<td class="Принято">Принято');
        document.body.innerHTML = document.body.innerHTML.replace(/<td>В работе/g, '<td class="Вработе">В работе');
        document.body.innerHTML = document.body.innerHTML.replace(/<td>НПО/g, '<td class="НПО">НПО');
        document.body.innerHTML = document.body.innerHTML.replace(/<td>Завершено/g, '<td class="Завершено">Завершено');
        document.body.innerHTML = document.body.innerHTML.replace(/<td>Отказано/g, '<td class="Отказано">Отказано');

// document.getElementById("output2").innerHTML = toHTMLTable(Value);
    }

    function toHTMLTable(a) {
        var content = a.map(function(row, i) {
            var rowHTML = row.map(function (col) {
                return "<td>" + col + "</td>";
            }).join("");
            return "<tr>" + rowHTML + "</tr>";
        }).join("");
        return "<table>" + content + "</table>";
    }

    google.script.run.withSuccessHandler(onSuccess).returnCellValue('C4:F20');
    google.script.run.withSuccessHandler(onSuccess2).returnCellValue2('A2:B5');


    jQuery(function () {
        var body = $("body");
        var text = body.html().replace("<td>task", "<td id=\"task\">task");
        body.html(text);
    });


    $(document).ready(function(){
        $("td:contains('task')").css("background-color", "green");
        $("td:contains('123')").css("background-color", "red");
    });

</script>

<!--==========================================================================================================================================================

document.getElementById("output2").innerHTML = toHTMLTable(Value);

==========================================================================================================================================================-->

<head>
    <title>TroubleShooting</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>

<body>

<div class="header" >
    <ul>
        <li>
            <p> [ОСК] Диагностика нетиповых сбоев  </p>
        </li>
        <li>
            <p> <a href="https://docs.google.com/spreadsheets/d/e/2PACX-1vSFjJjOsBpJ_ZfnghCebThYFIK5eWa9kETYt3BZPXWJ9EdY-HglHfbGxZmhhuHyI8hHak0cNdWZlb9t/pubhtml?gid=1375381323&single=true">  База знаний  </a></p>
        </li>
    </ul>
</div>

<div id="top">

    <form  method="get" action="https://script.google.com/macros/s/AKfycbzl1nEfqH0YdMFbx-IhcDK43vbj4ujIfBjp4xzplxUVaGbz2ng/exec" target = "hidden_iframe">
        <hr>
        <textarea placeholder="Введите описание ошибки или неисправности
Возможно ваш вопрос уже есть в 'Базе знаний'" cols="45" rows="7" name="p1" type="text" ></textarea>
        <textarea placeholder="Предложите решение (необязательно)" cols="45" rows="7" name="p2" type="text" ></textarea>
        <!--           <textarea placeholder="Представтесь" cols="40" rows="3" name="p3" type="text" ></textarea> -->
        <p>

            <select name="p3" type="text">
                <option value="" hidden disabled selected>Выберите себя из списка сотрудников</option>
                <option>Александров Александр </option>
                <option>Анпилогов Максим </option>
                <option>Арефьев Сергей </option>
                <option>Артемьев Дмитрий </option>
                <option>Бабиков Антон </option>
                <option>Бабкин Роман </option>
                <option>Беляев Николай </option>
                <option>Ботоногов Павел </option>
                <option>Бочин Алексей </option>
                <option>Герасимов Валерий </option>
                <option>Гусева Ирина </option>
                <option>Давиденко Сергей </option>
                <option>Демин Андрей </option>
                <option>Дулебов Александр </option>
                <option>Ермаков Павел </option>
                <option>Ерошин Сергей </option>
                <option>Ерченко Андрей </option>
                <option>Ефимов Борис </option>
                <option>Завьялов Алексей </option>
                <option>Кайдашов Сергей </option>
                <option>Карант Светлана </option>
                <option>Клестов Ярослав </option>
                <option>Кротов Олег </option>
                <option>Кудрявцев Станислав </option>
                <option>Кузнецов Константин </option>
                <option>Куланчаков Дамир </option>
                <option>Кулик Людмила </option>
                <option>Литвинов Сергей </option>
                <option>Ляшенко Алексей </option>
                <option>Маньков Игорь </option>
                <option>Матвеев Павел </option>
                <option>Миглан Владислав </option>
                <option>Момчилов Владислав </option>
                <option>Мурашков Константин </option>
                <option>Назаров Валерий </option>
                <option>Образцов Вячеслав </option>
                <option>Пожиленков Сергей </option>
                <option>Покровский Александр </option>
                <option>Поляков Юрий </option>
                <option>Ржанов Виктор </option>
                <option>Романов Павел </option>
                <option>Сайдак Алексей </option>
                <option>Санджаев Дорджи </option>
                <option>Седюк Максим </option>
                <option>Семеняк Александр </option>
                <option>Семыкин Сергей </option>
                <option>Сиверина Татьяна </option>
                <option>Суркова Елена </option>
                <option>Тельнов Кирилл </option>
                <option>Фокин Евгений </option>
                <option>Хамрудинов Азамат </option>
                <option>Цыпляева Оксана </option>
                <option>Шавырин Артем </option>
                <option>Шаматрина Евгения </option>
                <option>Шейнин Михаил </option>
                <option>Шунин Эдуард </option>
                <option>Щедрин Сергей </option>
                <option>Щельцын Виктор </option>

            </select>

        </p>




        <hr>
        <button type="submit" class="btn btn-primary" >Отправить для разбора</button>
    </form>


    <div id="mainTable">
        <table>
            <tr>
                <td id="New"> <Strong>Принято</Strong> </td>
                <td id="Acc"> <Strong>В работе</Strong> </td>
                <td id="Pro"> <Strong>Завершено</Strong> </td>
                <td id="Sol"> <Strong>Отказано</Strong> </td>
            </tr>
        </table>

        <div id="output"></div>
    </div>


</div>
<!--
<div id="secondTable">

  <table>
     <tr>
       <td id="Sit"> <Strong></Strong></td>
       <td id="Rep"> <Strong></Strong></td>
     </tr>
  </table>

  <div id="output2"> </div>

</div>

-->

</body>

<!--=========================================================================================================================================-->


<style>




    body {
        background-color: #ededed;
    }



    table {
        width: 100%;
        empty-cells: hide;
        border: 2px ;
        height: 50px;
    }


    td {
        background-color : white;
        width : 25%;
        height : 50px;
        text-align : center;
        border: 2px outset grey;
    }

    td#New {
        background-color : moccasin;
    }

    td#Acc {
        background-color : moccasin;
    }

    td#Pro {
        background-color : moccasin;
    }

    td#Sol{
        background-color : moccasin;
    }

    div#mainTable{
        min-width: 639;
        margin-left: 60px;
        width: 65%;
        float: left;
    }

    div#secondTable{
        width: 30%;
        margin: auto;
    }

    form {
        width: 25%;
        float: left;
        margin-right: 30px;
    }

    select{
        background: transparent;
        width: 300px;
    }

    div#top{
        padding: 20px;
        margin-top:20px;
    }

    div#top:after{
        content: "";
        display: table;
        clear: both;
    }

    <fieldset>{
         width: 200px;
     }

    .header {
        background-color: black;
        width: 100%;
        padding: 0 20px;
        margin: 0 auto;
        position: fixed;
        top:0;
        z-index: 100;
        overflow: hidden;
        color: white;
        text-decoration: none;
        font-size: 80%;
    }

    ul{
        overflow: hidden;
        position: relative;
        top: 0px;
        margin: 0px;
        padding: 0px;
        left: 0px;
        width: 2786px;
    }

    li{
        float: left;
        list-style: none;
        width:250px;
        font-weight:bold;
    }

    a{
        text-decoration: none;
        color: white;
    }

    .Принято {
        background-color: white;
    }
    .Вработе {
        background-color: #F0E68C;
    }
    .НПО {
        background-color: #AFEEEE;
    }
    .Завершено {
        background-color: #90EE90;
    }
    .Отказано {
        background-color: #FFA07A;
    }

</style>