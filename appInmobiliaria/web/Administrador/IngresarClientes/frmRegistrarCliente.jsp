<%-- 
    Document   : frmRegistrarInm
    Created on : 8/05/2013, 01:42:36 AM
    Author     : usuario
--%>
<%@page import="controladores.ctrlIngresarInmueble"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Registrar Cliente</title>
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
                            <li><a href="../GestionarPrioridadInmueble/GestionarPrioridad.jsp" >Prioridad</a></li>
                            <li><a href="../ingresarInmuebles/frmSeleccionInmueble.jsp" >Inmuebles</a></li>
                            <li><a class="current" href="../IngresarClientes/frmRegistrarCliente.jsp" >Clientes</a></li> 
                            <li><a href="../SubirArchivos/cargarArchivo.jsp">Archivos</a></li>
                            <li><a href="#">Reportes</a></li>

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

                                <h2 class="top-1 p3">Registrar Usuarios</h2>
                                <form name="form1" id="form-1"  class="form-1 bot-1" action="prcRegistrarCliente.jsp">
                                    <div class="select-1">
                                        <label>Tipo Identificación</label>
                                        <select name="tipoId" id="tipoId">
                                            <option value = "cedula">Cedula</option>
                                            <option value = "nit">NIT</option>
                                        </select>
                                    </div>
                                    <div>
                                        <label>Identificación</label>
                                        <input type="number" id="ide" name="ide" required />
                                    </div>
                                    <div>
                                        <label>Nombre</label>
                                        <input type="text" id="nombre" name="nombre" required />
                                    </div>
                                    <div>
                                        <label>Apellido</label>
                                        <input type="text" id="apellido" name="apellido"  required/>
                                    </div>
                                    <div>
                                        <label>Dirección</label>
                                        <input type="text" value="" required name="direccion" id="direccion"/>
                                    </div>
                                    <div>
                                        <label>Teléfono</label>
                                        <input type="text" value="" required name="telefono" id="telefono"/>
                                    </div>
                                    <div>
                                        <label>Correo</label>
                                        <input type="email" id="email" name="email" placeholder="quienfue@hotmail.com" required />
                                    </div>
                                    <div>
                                        <label>Contraseña</label>
                                        <input type="text" required id="contrasena" name="contrasena" />
                                    </div>
                                    <div class="select-1">
                                        <label>Rol</label>
                                        <select name="rol" id="rol">
                                            <option value="administrador">Administrador</option>
                                            <option value="arrendador">Arrendador</option>
                                            <option value="arrendatario">Arrendatario</option>
                                        </select>   
                                    </div>


                                    <div>

                                        <input type="submit" name="enviar" id="enviar" value="Enviar"/>
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