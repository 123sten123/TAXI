<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>--%>
<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
    <title>Taxi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



    <style>
        html,
        body {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
        }

        #prompt-form {
            display: inline-block;
            padding: 5px 5px 5px 70px;
            width: 200px;
            border: 1px solid black;
            background: white url(https://js.cx/clipart/prompt.png) no-repeat left 5px;
            vertical-align: middle;
        }

        #prompt-form-container {
            position: fixed;
            top: 0;
            left: 0;
            z-index: 9999;
            display: none;
            width: 100%;
            height: 100%;
            text-align: center;
        }

        #prompt-form-container:before {
            display: inline-block;
            height: 100%;
            content: '';
            vertical-align: middle;
        }

        #cover-div {
            position: fixed;
            top: 0;
            left: 0;
            z-index: 9000;
            width: 100%;
            height: 100%;
            background-color: gray;
            opacity: 0.3;
        }

        #prompt-form input[name="text"] {
            display: block;
            margin: 5px;
            width: 180px;
        }
    </style>


</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#about">ABOUT</a></li>
                <li><a href="#contact">CONTACT</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="jumbotron text-center">
    <h1>Taxi</h1>
    <p>Диспетчер</p>
</div>

<div class="container">
    <div class="row">

        <div class="col-sm-4 bg-dark text-white pt-3">
            <h2>Боковая колонка</h2>
            <ul class="list-unstyled">
                <li><a href="#">Элемент меню</a></li>
                <li><a href="#">Элемент меню</a></li>
                <li><a href="#">Элемент меню</a></li>
                <li><a href="#">Элемент меню</a></li>
            </ul>
        </div><!-- /.col-sm-4 -->

        <div class="col-sm-8 pt-3">

            <input type="button" value="Нажмите для показа формы ввода" id="show-button">

            <%--<spring:form method="post" modelAttribute="taxiClient2" action="add">--%>

                <%--&lt;%&ndash;Name: <spring:input path="fio"/>   <br/>&ndash;%&gt;--%>
                <%--&lt;%&ndash;phone: <spring:input path="phone"/> </br>&ndash;%&gt;--%>
                <%--&lt;%&ndash;xz: <spring:input path="disabled"/></br>&ndash;%&gt;--%>
                <%--<spring:button>Next Page</spring:button>--%>

            <%--</spring:form>--%>

            <div class="modal fade">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body&hellip;</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                        <form:form modelAttribute="taxiClient2" action="add" method="post">
                            Name: <form:input path="fio"/>   <br/>
                            Password: <spring:input path="phone"/> </br>
                            Password: <spring:input path="disabled"/></br>
                            <spring:button>Next Page</spring:button>
                        </form:form>
                    </div><!-- /.модальное окно-Содержание -->
                </div><!-- /.модальное окно-диалог -->
            </div><!-- /.модальное окно -->


            <form:form modelAttribute="taxiClient2" action="add" method="post">
                Name: <form:input path="fio"/>   <br/>
                Password: <spring:input path="phone"/> </br>
                Password: <spring:input path="disabled"/></br>
                <spring:button>Next Page</spring:button>
            </form:form>





            <table class="table table-striped">
                <thead>
                <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                    <th>delete</th>
                </tr>
                </thead>
                <tbody>

                    <c:forEach items="${xzсhtoeto}" var="xzсhtoeto">
                        <tr>
                            <th scope="row">${xzсhtoeto.id}</th>
                            <td>${xzсhtoeto.fio}</td>
                            <td>${xzсhtoeto.phone}</td>
                            <td>${xzсhtoeto.disabled}</td>
                            <td><a href="delete/${xzсhtoeto.id}">Удалить</a></td>

                        </tr>
                    </c:forEach>
                    <%--<tr>--%>
                   <%----%>
                    <%--<td>Mark</td>--%>
                    <%--<td>Otto</td>--%>
                    <%--<td>@mdo</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<th scope="row">2</th>--%>
                    <%--<td>Jacob</td>--%>
                    <%--<td>Thornton</td>--%>
                    <%--<td>@fat</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<th scope="row">3</th>--%>
                    <%--<td>Larry</td>--%>
                    <%--<td>the Bird</td>--%>
                    <%--<td>@twitter</td>--%>
                <%--</tr>--%>
                </tbody>
            </table>





            <div id="prompt-form-container">
                <form id="prompt-form">
                    <div id="prompt-message"></div>
                    <input name="text" type="text">
                    <input type="submit" value="Ок">
                    <input type="button" name="cancel" value="Отмена">
                </form>
            </div>

            <script>
                // Показать полупрозрачный DIV, затеняющий всю страницу
                // (а форма будет не в нем, а рядом с ним, чтобы не полупрозрачная)
                function showCover() {
                    var coverDiv = document.createElement('div');
                    coverDiv.id = 'cover-div';
                    document.body.appendChild(coverDiv);
                }

                function hideCover() {
                    document.body.removeChild(document.getElementById('cover-div'));
                }

                function showPrompt(text, callback) {
                    showCover();
                    var form = document.getElementById('prompt-form');
                    var container = document.getElementById('prompt-form-container');
                    document.getElementById('prompt-message').innerHTML = text;
                    form.elements.text.value = '';

                    function complete(value) {
                        hideCover();
                        container.style.display = 'none';
                        document.onkeydown = null;
                        callback(value);
                    }

                    form.onsubmit = function() {
                        var value = form.elements.text.value;
                        if (value == '') return false; // игнорировать пустой submit

                        complete(value);
                        return false;
                    };

                    form.elements.cancel.onclick = function() {
                        complete(null);
                    };

                    document.onkeydown = function(e) {
                        if (e.keyCode == 27) { // escape
                            complete(null);
                        }
                    };

                    var lastElem = form.elements[form.elements.length - 1];
                    var firstElem = form.elements[0];

                    lastElem.onkeydown = function(e) {
                        if (e.keyCode == 9 && !e.shiftKey) {
                            firstElem.focus();
                            return false;
                        }
                    };

                    firstElem.onkeydown = function(e) {
                        if (e.keyCode == 9 && e.shiftKey) {
                            lastElem.focus();
                            return false;
                        }
                    };


                    container.style.display = 'block';
                    form.elements.text.focus();
                }

                document.getElementById('show-button').onclick = function() {
                    showPrompt("Введите что-нибудь<br>...умное :)", function(value) {
                        alert("Вы ввели: " + value);
                    });
                };
            </script>







        </div>
    </div>
</div>


</body>
</html>



