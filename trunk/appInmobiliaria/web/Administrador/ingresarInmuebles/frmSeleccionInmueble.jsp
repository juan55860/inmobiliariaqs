<%-- 
    Document   : frmSeleccionInmueble
    Created on : 8/05/2013, 09:26:31 AM
    Author     : usuario
--%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Seleccion Inmueble</title>
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
                        <h2 class="top-1 p3">Ayuda</h2>
                        <strong>Comercial</strong></br>
                        En esta opción se puede ingresar información de los siguientes
                        bienes inmuebles : Locales, Oficinas, Comsultorios, Bodegas y Parqueaderos.
                        </br></br>

                        <strong>Residencial</strong></br>
                        En esta opción se puede ingresar información de los siguientes
                        bienes inmuebles : Casas, Apartamentos y ApartaEstudios.
                        
                        </br></br>
                        <strong>Edificios</strong></br>
                        En esta opción solo se ingresan los datos de un edificio.
                        
                         </br></br>
                        <strong>Rural</strong></br>
                        En esta opción solo se ingresa información del sector rural
                        como lo son: Fincas, Casas Campestres y Cabañas.
                            </br></br>
                        <strong>Lotes</strong></br>
                        En esta opción solo se ingresa información básica del lote.



                    </div>
                    <div class="grid_4">
                        <div class="left-1">
                            <h2 class="top-1 p3">Categorias</h2>
                            <form id="form-1" class="form-1 bot-1"action="frmRegistrarInmueble.jsp">
                                <div class="select-1">
                                    <label>Seleccione una Opcion</label>
                                    <select name="categoria" >
                                        <option value="COMERCIAL">COMERCIAL</option>
                                        <option value="RESIDENCIAL">RESIDENCIAL</option>
                                        <option value="EDIFICIO">EDIFICIOS</option>
                                        <option value="RURAL">RURAL</option>
                                        <option value="LOTE">LOTES</option>
                                    </select>   
                                </div>
                                <a onClick="document.getElementById('form-1').submit()" class="button">Ingresar</a>
                                <div class="clear"></div>
                            </form>


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
