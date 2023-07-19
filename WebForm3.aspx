<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="PruebaTI.WebForm3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>LABORATORIOS-EPCC</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
  <style>
    nav,
    .offcanvas {
      background-color: #1e293b;
    }
    .navbar-toggler {
      border: none;
    }
    .navbar-toggler:focus {
      outline: none;
      box-shadow: none;
    }
    @media (max-width: 768px) {
      .navbar-nav > li:hover {
        background-color: #0dcaf0;
      }
    }
  </style>
</head>
<body>
  <!-- MENU START  -->
  <nav class="navbar navbar-expand-lg navbar-dark">
    <!-- NAV CONTAINER START -->
    <div class="container-fluid">
      <a href="https://localhost:44362/Laboratorio.aspx" class="navbar-brand text-info fw-semibold fs-4">LABORATORIOS</a>
      <!-- NAV BUTTON  -->
      <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#menuLateral">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- OFFCANVAS MAIN CONTAINER START -->
      <section class="offcanvas offcanvas-end" id="menuLateral" tabindex="-1">
        <div class="offcanvas-header" data-bs-theme="dark">
          <h5 href="https://localhost:44362/WebForm1.aspx" class="offcanvas-title text-info">LABORATORIOS</h5>
          <button class="btn-close" type="button" aria-label="Close" data-bs-dismiss="offcanvas"></button>
        </div>
        <!-- OFF CANVAS MENU LINKS  START-->
        <div class="offcanvas-body d-flex flex-column justify-content-between px-0">
          <ul class="navbar-nav fs-5 justify-content-evenly">
            <li class="nav-item p-3 py-md-1">
              <a href="#" class="nav-link">PERFIL</a>
            </li>
            <li class="nav-item p-3 py-md-1">
              <a href="https://localhost:44362/Horarios.aspx" class="nav-link">HORARIOS</a>
            </li>
            <li class="nav-item p-3 py-md-1">
              <a href="#" class="nav-link">MATRICULA</a>
            </li>
            <li class="nav-item p-3 py-md-1">
              <a href="#" class="nav-link">CONTACTO</a>
            </li>
          </ul>
          <!-- enlaces redes sociales -->
          <div class="d-lg-none align-self-center py-3">
            <a href="#" target="_blank"><i class="bi bi-twitter px-2 text-info fs-2"></i></a>
            <a href="#" target="_blank"><i class="bi bi-facebook px-2 text-info fs-2"></i></a>
            <a href="#" target="_blank"><i class="bi bi-github px-2 text-info fs-2"></i></a>
            <a href="#" target="_blank"><i class="bi bi-whatsapp px-2 text-info fs-2"></i></a>
          </div>
        </div>
      </section>
      <!-- OFFCANVAS MAIN CONTAINER END  -->
    </div>
  </nav>

  <div class="container">
    <h1>Horario</h1>
    <table class="table">
      <thead>
        <tr>
          <th>Hora</th>
          <th>Lunes</th>
          <th>Martes</th>
          <th>Miércoles</th>
          <th>Jueves</th>
          <th>Viernes</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>8:00 AM</td>
          <td>Clase 1</td>
          <td>Clase 2</td>
          <td>Clase 3</td>
          <td>Clase 4</td>
          <td>Clase 5</td>
        </tr>
        <tr>
          <td>9:00 AM</td>
          <td>Clase 6</td>
          <td>Clase 7</td>
          <td>Clase 8</td>
          <td>Clase 9</td>
          <td>Clase 10</td>
        </tr>
        <!-- Agrega más filas según sea necesario -->
      </tbody>
    </table>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>