<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="static/icon/favicon.ico">

  <title>Попугай</title>

  <!-- Bootstrap core CSS -->
  <link href="static/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="static/css/jumbotron.css" rel="stylesheet">
</head>

<body>

  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="#">Навигация</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault"
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="index.jsp">Домашняя страница
            <span class="sr-only">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://github.com/oleggalimov/springmvcexample">Репозиторий проекта</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Сервисы</a>
          <div class="dropdown-menu" aria-labelledby="dropdown01">
            <a class="dropdown-item" href="http://www.google.com">Google</a>
            <a class="dropdown-item" href="getdate">Текущее время</a>
            <a class="dropdown-item" href="parrot">Хеш строки</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about">О проекте</a>
        </li>
      </ul>

    </div>
  </nav>

  <main role="main">
    <br/>
    <div id="main" class="container-fluid">
      <p>
        Сервис предназначен для проверки работы post-запросов. В форме ниже введите любой текст и нажмите "Отправить", в ответ вам
        придет MD5-хеш, сгенерированный сервером.
      </p>

      <input id="reqString" class="form-control mr-sm-2" type="text" placeholder="Введите строку" aria-label="Search">
      <br/>
      <button class="btn btn-outline-success my-2 my-sm-0" onclick=getMD5()>Отправить</button>

      <br/>
    </div>

  </main>

  <footer class="container">
    <p>&copy; Олег Галимов, 2018
      <br/>o.d.galimov@yandex.ru</p>
  </footer>

  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="static/js/jquery-3.3.1.min.js"></script>
  <script src="static/js/popper.min.js"></script>
  <script src="static/js/bootstrap.min.js"></script>
  <script>
    function getMD5() {
      var reqText = $("#reqString").val();
      if (reqText.length == 0) {
        alert("Вы ввели пустую строку!");
      } else {
        var req = new XMLHttpRequest();
        req.open('POST', 'parrot', false);
        req.send(reqText);
        if (req.status == 200)
          $("#main").append("<br/> <p> Ваш запрос: '" + reqText + "', результат: " + req.responseText + " </p>");
      }

    }
  </script>
</body>

</html>