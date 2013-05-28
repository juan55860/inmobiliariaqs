<%-- 
    Document   : home
    Created on : 7/05/2013, 11:54:21 PM
    Author     : usuario
--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Servicios</title>
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
    <body>
        <div class="main">
            <!--==============================header=================================-->
            <header>
                <div>
                    <h1><a href="../home.jsp"><img src="../sitio/images/logo.jpg" alt=""></a></h1>
                    <div class="social-icons">
                        <span style="color: black;">Siguenos en:</span>
                        <a href="#" class="icon-3"></a>
                        <a href="#" class="icon-2"></a>
                        <a href="#" class="icon-1"></a>
                    </div>
                    <div id="slide">		
                        <div class="slider">
                            <ul class="items">
                                <li><img src="../sitio/images/slider-1.jpg" alt="" /></li>
                                <li><img src="../sitio/images/slider-2.jpg" alt="" /></li>
                                <li><img src="../sitio/images/slider-3.jpg" alt="" /></li>
                            </ul>
                        </div>	
                        <a href="#" class="prev"></a><a href="#" class="next"></a>
                    </div>
                    <nav>
                        <ul class="menu">
                            <li class="current"><a href="../home.jsp">Inicio</a></li>
                            <li><a href="servicios.jsp">Servicios</a></li>
                            <li><a href="contacto.jsp">Contacto</a></li>
                            <!--<li><a href="#">Alquiler</a></li>-->
                            <li><a href="../Cliente/afiliarInmueble/frmSeleccionInmueble.jsp">Afiliar inmueble</a></li>
                            <li><a href="../Login/login.jsp">Iniciar Sesion</a></li>
                        </ul>
                    </nav>
                </div>
            </header>   
            <!--==============================content================================-->
            <section id="content"><div class="ic"></div>
                <div class="container_12">
                    <iframe id="googleMap" frameborder="0" src="mapa.jsp" name="googleMap" width="550" height="400"/>
            
                    <div class="grid_8">
                        <h2 class="top-1 p3">Bienvenido a Nuestro Sitio</h2>
                        <p class="p2">
                            <strong>Inmobiliaria QS</strong></br></br>
                            <strong>
                                PORTAFOLIO DE SERVICIOS
                            </strong></br></br>
                            Arrrendamiento </br>
                            Compra y venta de inmuebles
                            </br></br>
                            <strong>
                               Ventajas que tiene con nosotros
                            </strong></br></br>
                            Confianza, Seguridad, Respaldo.

                            Nuestro departamento de ventas posee el conocimiento necesario del mercado comercial y financiero, para la prestación de un servicio integral y personalizado, soportado en una base de datos que le permite ingresar a mercados potenciales con mayor facilidad y efectividad en la gestión inmobiliaria.

                            Promocionamos su(s) inmueble(s) con asesoría personalizada llegando así a un mayor número de clientes potenciales. Administramos sus propiedades con altos índices de rendimiento.

                            

                            Día a día trabajamos para cumplir nuestro objetivo, ayudarle a encontrar una solución en Finca Raíz, para vivir mejor y aumentar su calidad de vida.

                    </div>
                    <div class="grid_4">
                        <div class="left-1">
                            <h2 class="top-1 p3">Busqueda</h2>
                            <form id="form-1" class="form-1 bot-1">
                                <div class="select-1">
                                    <label>Tipo de Inmueble</label>
                                    <select name="select" >
                                        <option>APARTAMENTO</option>
                                        <option>CASA</option>
                                        <option>EDIFICIO</option>
                                        <option>APARTAESTUDIO</option>
                                    </select>   
                                </div>
                                <div>
                                    <label>Barrio</label>
                                    <input type="text" value="Barrio" onBlur="if (this.value == '')
                    this.value = 'Address, City, Zip'" onFocus="if (this.value == 'Barrio')
                    this.value = ''"  />
                                </div>
                                <div class="select-2">
                                    <label>Habitaciones</label>
                                    <select name="select" >
                                        <option>&nbsp;</option>
                                    </select>   
                                </div>
                                <div class="select-2 last">
                                    <label>Baños</label>
                                    <select name="select" >
                                        <option>&nbsp;</option>
                                    </select>   
                                </div> 
                                <a onClick="document.getElementById('form-1').submit()" class="button">Buscar</a>
                                <div class="clear"></div>
                            </form>

                            <iframe width="400" height="500" name="des1" id="des1" src="../noticias.jsp"> </iframe>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>  
            </section> 
        </div> 
        
        <!--==============================footer=================================-->
        <footer>
            
            <img src="../sitio/images/LogoQS.JPG" width="120" height="90">
            <p>© 2013 Quality Solutions</p>
        </footer>	    
        <script>
            Cufon.now();
        </script>
    </body>
</html>