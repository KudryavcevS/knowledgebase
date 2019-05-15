<%--
  Created by IntelliJ IDEA.
  User: matt
  Date: 15.05.2019
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">

    function onSuccess2(Value) {
        document.getElementById("output2").innerHTML = toHTMLTable(Value);
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

    google.script.run.withSuccessHandler(onSuccess2).returnCellValue2('A1:D20');

</script>

<head>
</head>

<body>

<div class="header" >
    <ul>
        <li>
            <p><a href=""> [ОСК] Диагностика нетиповых сбоев </a></p>
        </li>
    </ul>
</div>

<div id="top">

    <div id="mainTable">
        <table>
            <tr>
                <td id="New"> <Strong>Описание ошибки</Strong> </td>
                <td id="Acc"> <Strong>Решение</Strong> </td>
                <td id="Pro"> <Strong>Дата добавления</Strong> </td>
                <td id="Sol"> <Strong>Автор</Strong> </td>
            </tr>
        </table>

        <div id="output2"></div>
    </div>
</div>

</body>

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

    div#top{
        padding: 20px;
        margin-top:20px;
    }

    div#top:after{
        content: "";
        display: table;
        clear: both;
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

    li{
        display : inline;
    }

    a{
        text-decoration: none;
        color: white;
    }
</style>