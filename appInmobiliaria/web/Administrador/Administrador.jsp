<%-- 
    Document   : Administrador2
    Created on : 22/04/2013, 10:56:42 PM
    Author     : Camilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Administrador Home</title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" media="screen" href="../sitio/css/reset.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../sitio/css/style.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../sitio/css/grid_12.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../sitio/css/slider-2.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../sitio/css/jqtransform.css">
        <script src="../sitio/js/jquery-1.7.min.js"></script>
        <script src="../sitio/js/jquery.easing.1.3.js"></script>
        <script src="../sitio/js/cufon-yui.js"></script>
        <script src="../sitio/js/vegur_400.font.js"></script>
        <script src="../sitio/js/Vegur_bold_700.font.js"></script>
        <script src="../sitio/js/cufon-replace.js"></script>
        <script src="../sitio/js/tms-0.4.x.js"></script>
        <script src="../sitio/js/jquery.jqtransform.js"></script>
        <script src="../sitio/js/FF-cash.js"></script>
        <script>
            $(document).ready(function() {
                $('.form-1').jqTransform();
                $('.slider')._TMS({
                    show: 0,
                    pauseOnHover: true,
                    prevBu: '.prev',
                    nextBu: '.next',
                    playBu: false,
                    duration: 1000,
                    preset: 'fade',
                    pagination: true,
                    pagNums: false,
                    slideshow: 7000,
                    numStatus: false,
                    banners: false,
                    waitBannerAnimation: false,
                    progressBar: false
                })
            });
        </script>


    </head>
    <body style="background-color: white;">

        <div class="main">
            <!--==============================header=================================-->
            <header>
                <div>
                    <h1><a href="../home.jsp"><img src="../sitio/images/logo.jpg" alt=""></a></h1>
                    <div class="social-icons">
                        <span style="color: black;">Siguenos en</span>
                        <a href="#" class="icon-3"></a>
                        <a href="#" class="icon-2"></a>
                        <a href="#" class="icon-1"></a>
                    </div>
                    <div id="slide">		
                        <div class="slider">
                            <ul class="items">
                                <li><img src="../sitio/images/slider-1-small.jpg" alt="" /></li>
                                <li><img src="../sitio/images/slider-2-small.jpg" alt="" /></li>
                                <li><img src="../sitio/images/slider-3-small.jpg" alt="" /></li>
                            </ul>
                        </div>	
                        <a href="#" class="prev"></a><a href="#" class="next"></a>
                    </div>
                    <nav>
                        <ul class="menu">
                            
                            <li><a href="ArrendamientosVentas/frmArrendamientosVentas.jsp">Financiera</a></li>
                            <li><a href="GestionarPrioridadInmueble/GestionarPrioridad.jsp">Prioridad</a></li>
                            <li><a href="ingresarInmuebles/frmSeleccionInmueble.jsp">Inmuebles</a></li>
                            <li><a href="IngresarClientes/frmRegistrarCliente.jsp">Clientes</a></li> 
                            <li><a href="SubirArchivos/cargarArchivo.jsp">Archivos</a></li>
                            <li><a href="Reportes/frmReportes.jsp">Reportes</a></li>
                        </ul>
                    </nav>
                </div>
            </header>   
        </div>  
    </body>
</html>