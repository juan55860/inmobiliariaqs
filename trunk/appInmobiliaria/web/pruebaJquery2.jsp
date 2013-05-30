
<%@page import="controladores.ctrlIngresarInmueble"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="modelo.clsConexionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : pruebaJquery2
    Created on : 08-may-2013, 20:57:56
    Author     : liliana  ESTE ES EL MALO
--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Home Inmobiliaria</title>
        <meta charset="utf-8">

        <link rel="stylesheet" type="text/css" media="screen" href="sitio/css/reset.css">
        <link rel="stylesheet" type="text/css" media="screen" href="sitio/css/style.css">
        <link rel="stylesheet" type="text/css" media="screen" href="sitio/css/grid_12.css">
        <link rel="stylesheet" type="text/css" media="screen" href="sitio/css/slider-2.css">
        <link rel="stylesheet" type="text/css" media="screen" href="sitio/css/jqtransform.css">
        <script src="sitio/js/jquery-1.7.min.js"></script>
        <script src="sitio/js/jquery.easing.1.3.js"></script>
        <script src="sitio/js/cufon-yui.js"></script>
        <script src="sitio/js/vegur_400.font.js"></script>
        <script src="sitio/js/Vegur_bold_700.font.js"></script>
        <script src="sitio/js/cufon-replace.js"></script>
        <script src="sitio/js/tms-0.4.x.js"></script>
        <script src="sitio/js/jquery.jqtransform.js"></script>
        <script src="sitio/js/FF-cash.js"></script>


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
                    <h1><a href="home.jsp"><img src="sitio/images/logo.jpg" alt=""></a></h1>
                    <div class="social-icons">
                        <span style="color: black;">Siguenos en:</span>
                        <a href="#" class="icon-3"></a>
                        <a href="#" class="icon-2"></a>
                        <a href="#" class="icon-1"></a>
                    </div>
                    <div id="slide">		
                        <div class="slider">
                            <ul class="items">
                                <li><img src="sitio/images/slider-1.jpg" alt="" /></li>
                                <li><img src="sitio/images/slider-2.jpg" alt="" /></li>
                                <li><img src="sitio/images/slider-3.jpg" alt="" /></li>
                            </ul>
                        </div>	
                        <a href="#" class="prev"></a><a href="#" class="next"></a>
                    </div>
                    <nav>
                        <ul class="menu">
                            <li class="current"><a href="home.jsp">Inicio</a></li>
                            <li><a href="#">Vender</a></li>
                            <li><a href="#">Comprar</a></li>
                            <li><a href="#">Alquiler</a></li>
                            <li><a href="#">Iniciar Sesion</a></li>
                        </ul>
                    </nav>
                </div>
            </header>   
            <!--==============================content===============================corte desde aca=-->

            <section id="content">
                <div class="ic">

                </div>
                <div class="container_12">
                    </br></br>
                    <h2>Maravillosa Oferta!</h2> 
                    <%
                        clsConexionBD con = new clsConexionBD();
                        String source = request.getParameter("source");
                        ResultSet rs = con.consultar("select * from fotos where cod_inmueble = all(select  cod_inmueble from fotos where archivo='" + source + "')");
                        out.print("<center><img height='400' width='415'; src='" + source + "' /></center><br/><center>");
                        while (rs.next()) {

                            out.print("<a><img  width='120' height='80' src='" + rs.getString("archivo") + "'/</a>");
                        }
                        out.print("</center>");
                        // }//select * from fotos where cod_inmueble = all(select  cod_inmueble from fotos where archivo='fotos/c1.jpg');
                    %>            
                </div>


                <div class="container_12">	
                    <div class="grid_8">
                        <div class="grid_4">
                            <div class="left-1">

                                <% ctrlIngresarInmueble inmueble = new ctrlIngresarInmueble();%>
                                <h2 class="top-1 p3">Solicitud</h2>
                                <form name="form1" id="form-1"  class="form-1 bot-1"  action ="prcIngresarSolicitud.jsp" >
                                    <input type="hidden" id="codinmueble" name="codinmueble" value=<%=inmueble.buscarCodInmueblePorFotos(source)%> />                                    
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

                                        <input  type="submit" name="enviar" value="Enviar" />
                                    </div>
                                    <div class="clear"></div>
                                </form>


                            </div>
                        </div>

                    </div>
                    <div class="clear"></div>
                </div>


                <div class="clear"></div>
            </section> 
        </div>
        <!--==============================footer </div>=================================-->
        <footer>
            <img src="sitio/images/LogoQS.JPG" width="120" height="90">
            <p>© 2013 Quality Solutions</p>
        </footer>	    
        <script>
            Cufon.now();
        </script>
    </body>
</html>