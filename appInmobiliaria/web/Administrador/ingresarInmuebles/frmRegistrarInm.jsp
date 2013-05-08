<%-- 
    Document   : frmRegistrarInm
    Created on : 8/05/2013, 01:42:36 AM
    Author     : usuario
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Home Inmobiliaria</title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" media="screen" href="../../sitio/css/reset.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../sitio/css/style.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../sitio/css/grid_12.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../sitio/css/slider-2.css">
        <link rel="stylesheet" type="text/css" media="screen" href="../../sitio/css/jqtransform.css">
        <script src="../../sitio/js/jquery-1.7.min.js"></script>
        <script src="../../sitio/js/jquery.easing.1.3.js"></script>
        <script src="../../sitio/js/cufon-yui.js"></script>
        <script src="../../sitio/js/vegur_400.font.js"></script>
        <script src="../../sitio/js/Vegur_bold_700.font.js"></script>
        <script src="../../sitio/js/cufon-replace.js"></script>
        <script src="../../sitio/js/tms-0.4.x.js"></script>
        <script src="../../sitio/js/jquery.jqtransform.js"></script>
        <script src="../../sitio/js/FF-cash.js"></script>
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
        <script type="text/javascript">
                function submit()
        </script>

    </head>
    <body>
        <div class="main">
            <!--==============================header=================================-->
            <header>
                <div>
                    <h1><a href="../../home.jsp"><img src="../../sitio/images/logo.jpg" alt=""></a></h1>
                    <div class="social-icons">
                        <span style="color: black;">Siguenos en:</span>
                        <a href="#" class="icon-3"></a>
                        <a href="#" class="icon-2"></a>
                        <a href="#" class="icon-1"></a>
                    </div>
                    <div id="slide">		
                        <div class="slider">
                            <ul class="items">
                                <li><img src="../../sitio/images/slider-1.jpg" alt="" /></li>
                                <li><img src="../../sitio/images/slider-2.jpg" alt="" /></li>
                                <li><img src="../../sitio/images/slider-3.jpg" alt="" /></li>
                            </ul>
                        </div>	
                        <a href="#" class="prev"></a><a href="#" class="next"></a>
                    </div>
                    <nav>
                        <ul class="menu">
                            <li><a href="../ArrendamientosVentas/frmArrendamientosVentas.jsp">Financiera</a></li>
                            <li><a href="../GestionarPrioridadInmueble/grdSeries.jsp" >Prioridad</a></li>
                            <li><a href="frmRegistrarInmueble.jsp" >Inmuebles</a></li>
                            <li><a class="current" href="../IngresarClientes/frmRegistrarCliente.jsp" >Clientes</a></li> 
                            <li><a href="../Administrador.jsp">Archivos</a></li>

                        </ul>
                    </nav>
                </div>
            </header>   
            <!--==============================content================================-->
            <section id="content"><div class="ic"></div>
                <div class="container_12">	
                    <div class="grid_8">
                        <div class="grid_4">
                            <div class="left-1">
                                <h2 class="top-1 p3">Ingresar Inmueble</h2>
                                <form name="form1" id="form-1"  class="form-1 bot-1" action="frmRegistrarInmueble.jsp">
                                    <div>
                                        <label>Precio</label>
                                        <input required id="nombre"  type="date" placeholder="Valor del inmueble"/>
                                    </div>
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
                                    <div>
                                        <label>
                                            Foto
                                        </label>
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
                                        </br></br>
                                    </div> 
                                    <div>

                                        <input  type="submit" name="enviar" value="Enviar" />
                                    </div>
                                    <div class="clear"></div>
                                </form>


                            </div>
                        </div>

                    </div>
                    <div class="clear"></div>
                </div>  
            </section> 
        </div>    
        <!--==============================footer=================================-->
        <footer>
            <img src="../../sitio/images/LogoQS.JPG" width="120" height="90">
            <p>© 2013 Quality Solutions</p>
        </footer>	    
        <script>
            Cufon.now();
        </script>
    </body>
</html>
