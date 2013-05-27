<%-- 
    Document   : frmRegistrarInm
    Created on : 8/05/2013, 01:42:36 AM
    Author     : usuario
--%>
<%@page import="controladores.ctrlIngresarInmueble"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Cuenta de Usuario</title>
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
                            <li><a href="../../home.jsp">Inicio</a></li>
                                <% if (session.getAttribute("theName") != null) {
                                %>
                            <li><a href="../../Login/Logout.jsp" >Cerrar Sesion</a></li>

                            <%}
                            %>
                        </ul>
                    </nav>
                </div>
            </header>   
            <!--==============================content================================-->
            <section id="content"><div class="ic"></div>
                <div class="container_12">	
                    <div class="grid_8">
                        <div class="grid_4">
                            <iframe height="60" width="100%" name="des" frameborder="0"> </iframe>
                            <div class="left-1">


                                <% if (session.getAttribute("theName") != null) {
                                %>


                                <h2 class="top-1 p3">Cuenta de: <%=session.getAttribute("theName")%></h2>
                                <form name="form1" id="form-1"  class="form-1 bot-1" action="BeanUpdate.jsp" target="des">
                                    <input type="hidden" name="nombre" id="nombre" value=<%=session.getAttribute("theName")%> />
                                    <div>
                                        <label>Dirección</label>
                                        <input type="text"  required name="direccion" id="direccion"/>
                                    </div>
                                    <div>
                                        <label>Teléfono</label>
                                        <input type="text"  required name="telefono" id="telefono"/>
                                    </div>
                                    <div>
                                        <label>Correo</label>
                                        <input type="email" id="correo" name="correo" placeholder="ejemplo@hotmail.com" required />
                                    </div>
                                    <div>
                                        <label>Contraseña</label>
                                        <input type="text" required id="contrasena" name="contrasena" />
                                    </div>

                                    <div>
                                        <input type="submit" name="enviar" id="enviar" value="Modificar datos"/>
                                    </div>
                                    <div class="clear"></div>
                                </form>

                                <h3>Si quiere modificar otros datos comuniquese con el administrador gracias.</h3>

                                <%} else {%>
                                <h1>
                                    <font color="red"> Usted no tiene los derechos para estar en esta area o no se ha logueado.</font>

                                </h1>
                                <%}

                                %>

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