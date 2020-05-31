
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Login </title>
        
    </head>

    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login </title>
    
</head><!--/head-->

<body>
    <header id="header"><!--header-->
        <div class="header_top"><!--header_top-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="contactinfo">
                            <ul class="nav nav-pills">
                                <li><a href="#"><i class="fa fa-phone"></i> +(503) 7140-2841</a></li>
                                <li><a href="#"><i class="fa fa-envelope"></i> tiendaorakle@gmail.com</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="social-icons pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header_top-->
       
        <div class="header-middle"><!--header-middle-->
            <div class="container">
                <div class="row">
                    <div class="col-md-4 clearfix">
                        <div class="logo pull-left">
                            <img src="imags/imags/foto1.png" alt=""/></a>
                        </div>
                        <div class="btn-group pull-right clearfix">
                        </div>
                    </div>
                    <div class="col-md-8 clearfix">
                        <div class="shop-menu clearfix pull-right">
                            <ul class="nav navbar-nav">
                                <li><a href=""><i class="fa fa-user"></i> Cuenta</a></li>

                                <li><a href=""><i class="fa fa-crosshairs"></i> Caja</a></li>
                                <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Carro de compra</a></li>
                                <li><a href="Login.jsp"><i class="fa fa-lock"></i> login</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header-middle-->

        <div class="header-bottom"><!--header-bottom-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="mainmenu pull-left">
                            <ul class="nav navbar-nav collapse navbar-collapse">
                                <li><a href="Menu.jsp" class="active">Menu</a></li>
                                <li class="dropdown"><a href="#">COMPRA<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.html">Productos</a></li>
                                        <li><a href="product-details.html">Detalle de productos</a></li> 
                                        <li><a href="cart.jsp">Carrito de compra</a></li> 

                                    </ul>
                                </li> 

                                <li><a href="contact-us.html">Contacto</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="search_box pull-right">
                            <input type="text" placeholder="Search"/>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header-bottom-->
    </header><!--/header-->

    <section id="form"><!--form-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-1">
                    <div class="login-form"><!--login form-->
                        <h2>Ingresa a tu cuenta</h2>
                        <form action="#">
                            
                            <input type="email" placeholder="Email Address" />
                            <input type="password" placeholder="Contraseña" />
                            <span>
                                <input type="checkbox" class="checkbox"> 
                                Mantenerse conectado
                            </span>
                            <button type="submit" class="btn btn-default">Login</button>
                        </form>
                    </div><!--/login form-->
                </div>
                <div class="col-sm-1">
                    <h2 class="or">O crea  tu cuenta</h2>
                </div>
                <div class="col-sm-4">
                    <div class="signup-form"><!--sign up form-->
                        <h2>Nuevo Registro</h2>
                        
                            <form action="" method="POST">
                            <input type="text" placeholder="Nombre"/>
                            <input type="text" placeholder="Apellidos"/>
                            <input type="email" placeholder="Email Address"/>
                            <input type="text" placeholder="telefono"/>
                             <input type="password" placeholder="Contraseña" />
                            <button type="submit" class="btn btn-default">Registrarse</button>
                        </form>
                    </div><!--/sign up form-->
                </div>
            </div>
        </div>
    </section><!--/form-->


    <footer id="footer"><!--Footer-->
        <h2>UNIVERSIDAD FRANCISCO GAVIDIA</h2>
    </footer>

</body>
</html>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
<link href="imags/css/main.css" rel="stylesheet" type="text/css"/>
<link href="imags/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="imags/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="imags/css/animate.css" rel="stylesheet" type="text/css"/>
<link href="imags/css/price-range.css" rel="stylesheet" type="text/css"/>
<link href="imags/css/responsive.css" rel="stylesheet" type="text/css"/>
<a href="imags/fonts/FontAwesome.otf"></a>
<a href="imags/fonts/fontawesome-webfont.svg"></a>
<a href="imags/fonts/glyphicons-halflings-regular.svg"></a>
<a href="imags/fonts/glyphicons-halflings-regular.woff"></a>
<link href="imags/css/._documenter_style.css" rel="stylesheet" type="text/css"/>