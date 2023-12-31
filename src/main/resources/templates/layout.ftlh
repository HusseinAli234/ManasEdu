<#macro layout>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
              name="viewport">
        <meta content="ie=edge" http-equiv="X-UA-Compatible">
        <title>Http server Index page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
              crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
                crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>
        <script src="/static/js/localStorage.js"></script>
        <script src="https://kit.fontawesome.com/bae6f8df00.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <meta name="_csrf_header" content="${_csrf.headerName}"/>
        <meta name="_csrf_token" content="${_csrf.token}"/>
        <link rel="stylesheet" href="/static/css/font-awesome.min.css">
        <link rel="stylesheet" href="/static/style.css">
    </head>
    <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <div class="div-image">
            <a class="navbar-brand" href="/" >Manas Edu</a>
            </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars text-light"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto d-flex flex-row mt-3 mt-lg-0">
                    <li class="nav-item text-center mx-2 mx-lg-1">
                        <a class="nav-link active" aria-current="page" href="/">
                            <div>
                                <i class="fa fa-home fa-lg mb-1"></i>
                            </div>
                            Главная
                        </a>
                    </li>
                    <li class="nav-item text-center mx-2 mx-lg-1">
                        <a class="nav-link" href="#">
                            <div>
                                <i class="fa fa-envelope fa-lg mb-1"></i>
<#--                                <span class="badge rounded-pill badge-notification bg-danger">11</span>-->
                            </div>
                            Сообщения
                        </a>
                    </li>
                    <li class="nav-item dropdown text-center mx-2 mx-lg-1">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            <div>
                                <i class="far fa-envelope fa-lg mb-1"></i>
<#--                                <span class="badge rounded-pill badge-notification bg-primary">11</span>-->
                            </div>
                            Состязания
                        </a>
                        <!-- Dropdown menu -->
                        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/flashcards">Флэшкарты</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="navbar-nav ms-auto d-flex flex-row mt-3 mt-lg-0">
                    <li class="nav-item text-center mx-2 mx-lg-1">
                        <a class="nav-link" href="#!">
                            <div>
                                <i class="fas fa-bell fa-lg mb-1"></i>
<#--                                <span class="badge rounded-pill badge-notification bg-info">11</span>-->
                            </div>
                            Заявки
                        </a>
                    </li>
                    <li class="nav-item text-center mx-2 mx-lg-1">
                        <a class="nav-link" href="#!">
                            <div>
                                <i class="fas fa-globe-americas fa-lg mb-1"></i>
<#--                                <span class="badge rounded-pill badge-notification bg-success">11</span>-->
                            </div>
                            Ранки
                        </a>
                    </li>
                    <li class="nav-item text-center mx-2 mx-lg-1">
                        <a class="nav-link" href="/create_card">
                            <div>
                                <i class="fa-solid fa-pen"></i>
                            </div>
                            Создать комнату
                        </a>
                    </li>
                </ul>

                <form class="d-flex input-group w-auto ms-lg-3 my-3 my-lg-0" style="margin-left: auto">
                    <input type="search" class="form-control" placeholder="Поиск" aria-label="Search" />
                    <button class="btn btn-primary" style="border-radius: 0px 10px 10px 0px;" type="button" data-mdb-ripple-color="dark">
                        Искать
                    </button>
                </form>
            </div>
        </div>
    </nav>
    <div class="container-fluid w-100 main-img h-100 d-flex justify-content-center main-container">
        <#nested>
    </div>
    </body>
    </html>
</#macro>