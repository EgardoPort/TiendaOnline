
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
                                        <li><a href="producto det.jsp">Detalle de productos</a></li> 
                                        <li><a href="cart.jsp">Carrito de compra</a></li> 
                                        <li><a href="Login.jsp">Login</a></li> 
                                    </ul>
                                </li> 
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
                </header>
                <!--/header-->
                <!--category-productsr-->
                </section><!--/slider-->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="left-sidebar">
                        <h2>Tipos de Arreglos</h2>
                        <div class="panel-group category-products" id="accordian">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#tipos">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            Tipos de Flores
                                        </a>
                                    </h4>
                                </div>
                                <div id="tipos" class="panel-collapse collapse">
                                    <div class="panel-body">                           
                                        <ul>
                                            <li><a href="#tipos">Rosas </a></li>
                                            <li><a href="#tipos">Orquideas </a></li>
                                            <li><a href="#tipos">Girasoles </a></li>
                                            <li><a href="#tipos">Gerberas </a></li>                                       
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#Colors">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            Colores
                                        </a>
                                    </h4>
                                </div>
                                <div id="Colors" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="#Colors">Amarillas</a></li>
                                            <li><a href="#Colors">Rojas </a></li>
                                            <li><a href="#Colors">Blaco</a></li>
                                            <li><a href="#Colors">Mixtas</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#occasions">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            Ocasiones
                                        </a>
                                    </h4>
                                </div>
                                <div id="occasions" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="#occasions">Cumpleaños</a></li>
                                            <li><a href="#occasions">Amor</a></li>
                                            <li><a href="#occasions">Nacimientos</a></li>
                                            <li><a href="#occasions">Condolencias</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            </section>
                
                                        <div class="col-sm-9 padding-right">
                                            <div class="product-details"><!--product-details-->
                                                <div class="col-sm-5">
                                                    <div class="view-product">
                                                        <img src="imags/images/producto det/1.jpg" alt=""/>
                                                      
                                                    </div>
                                                    <div id="similar-product" class="carousel slide" data-ride="carousel">
                                                        <!-- Wrapper for slides -->
                                                        <div class="carousel-inner">
                                                            <div class="item active">
                                                                <a href=""><img src="images/product-details/si1.jpg" alt=""></a>
                                                                <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
                                                                <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
                                                            </div>
                                                            <div class="item">
                                                                <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
                                                                <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
                                                                <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
                                                            </div>
                                                            <div class="item">
                                                                <a href=""><img src="images/product-details/similar1.jpg" alt=""></a>
                                                                <a href=""><img src="images/product-details/similar2.jpg" alt=""></a>
                                                                <a href=""><img src="images/product-details/similar3.jpg" alt=""></a>
                                                            </div>

                                                        </div>

                                                        
                                                    </div>

                                                </div>
                                            
                                                 <div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
                                                            <img src="" class="newarrival" alt="" />
                                                    <h3>Arreglo Amarillo</h3>
                                                    <p>ID:1</p>             
                                                    <span>
                                                        <span>US $35</span>
                                                        <label>Cantidad Disponible:</label>
                                                        <input type="text" value="3" />
                                                        <button type="button" class="btn btn-fefault cart">
                                                            <i class="fa fa-shopping-cart"></i>
                                                            Agregar al carrito
                                                        </button>
                                                    </span>
                                                    <p><b>Disponibilidad:</b> En Stock</p>
                                                    <p><b>Tipo:</b> Gerbera</p>
                                                    <p><b>Tipo de Arreglo:</b>Redondo</p>
                                                    <a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                                                </div><!--/product-information-->
                                            </div>
                                        </div><!--/product-details-->
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