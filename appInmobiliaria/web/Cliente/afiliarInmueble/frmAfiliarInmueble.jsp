<%-- 
    Document   : frmRegistrarInm
    Created on : 8/05/2013, 01:42:36 AM
    Author     : usuario
--%>
<%@page import="modelo.Comercial"%>
<%@page import="controladores.ctrlIngresarComercial"%>
<%@page import="controladores.ctrlIngresarInmueble"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Afiliar Inmueble 2</title>
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
                            <nav>
                                <ul class="menu">
                                    <li class="current"><a href="../../home.jsp">Inicio</a></li>
                                    <li><a href="../../Informacion/servicios.jsp">Servicios</a></li>
                                    <li><a href="../../Informacion/contacto.jsp">Contacto</a></li>
                                    <li><a href="../../Cliente/afiliarInmueble/frmSeleccionInmueble.jsp">Afiliar inmueble</a></li>
                                    <li><a href="../../Login/login.jsp">Iniciar Sesion</a></li>
                                </ul>
                            </nav>
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

                                <%!ctrlIngresarInmueble inmueble = new ctrlIngresarInmueble();%>

                                <%String jsp = inmueble.direccionarJsp(request.getParameter("categoria"));%>

                                <h2 class="top-1 p3">AFILIAR <%= request.getParameter("categoria")%> </h2>
                                <form name="form1" id="form-1"  class="form-1 bot-1"  action = <%=jsp%>>
                                    <input type="hidden" id="cat" name="cat" value=<%= request.getParameter("categoria")%>>
                                    <input type="hidden" id="tabla" name="tabla" value = <%= inmueble.getTabla()%>>
                                    <div>
                                        <label>Nombre del solicitante</label>
                                        <input required id="nombreSol"  name="nombreSol" type="text" />
                                    </div>
                                    <div>
                                        <label>Apellido del solicitante</label>
                                        <input required id="apellido"  name="apellido" type="text" />
                                    </div>
                                    <div>
                                        <label>Telefono del solicitante</label>
                                        <input required id="telefono"  name="telefono" type="number" />
                                    </div>
                                    <div>
                                        <label>Email del solicitante</label>
                                        <input required id="email"  name="email" type="email" />
                                    </div>
                                    <div>
                                        <label>Identificación propietario</label>
                                        <input required id="ide"  name="ide" type="number" />
                                    </div>
                                    <div>
                                        <label>Estrato</label>
                                        <input required id="estrato" name="estrato" type="number" />
                                    </div>
                                    <div>
                                        <label>Precio</label>
                                        <input required id="precio" name="precio" type="number" />
                                    </div>
                                    <div>
                                        <label>Dirección</label>
                                        <input required id="direccion" name="direccion" type="text"/>
                                    </div>
                                    <div class="select-1">


                                        <%ctrlIngresarInmueble tipo = new ctrlIngresarInmueble();%>

                                        <%=tipo.cargarComboCategoria(request.getParameter("categoria"))%>
                                    </div>


                                    <div>
                                        <label>Extensión</label>
                                        <input required name="area" id="area" type="text"/>
                                    </div>
                                    <div class="select-1">
                                        <label>Estado</label>
                                        <select name="estado" id="estado">
                                            <option value="ARRENDAMIENTO">ARRENDAMIENTO</option>
                                            <option value="VENTA">VENTA</option>

                                        </select>   
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
                        Cufon.now()
                ;
        </script>

    </body>
</html>