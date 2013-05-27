<%-- 
    Document   : pruebaJquery2
    Created on : 08-may-2013, 20:57:56
    Author     : liliana
--%>


<%-- 
    Document   : home
    Created on : 7/05/2013, 11:54:21 PM
    Author     : usuario
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

            <section id="content"><div class="ic"></div>
                <div class="container_12">
                    </br></br>
                    <h2>Maravillosa Oferta!</h2>
                    <%
            String source = request.getParameter("source");
            if(source.equals("Noticias/images/c1.png")){                
                out.print("<br><img height='400' width='300' align='center'; src='Noticias/images/c1.jpg' /><br>");
            }
            else{
            out.print("<br><img height='400' width='415'; src='" + source + "' /><br>");
            out.print("<br><img height='100' width='100' align='center'; src='Noticias/images/c1.1.jpg' />"+" "+"<img height='100' width='100' align='center'; src='Noticias/images/c1.2.jpg' />"+" "+"<img height='100' width='100' align='center'; src='Noticias/images/c1.3.jpg' />"+" "+"<img height='100' width='100' align='center'; src='Noticias/images/c1.4.jpg' /></br>");
            out.print("Aire acondicionado en 2 habitaciones, ventiladores en sala, comedor y habitaciones, dos parqueaderos");
            }
            if(source.equals("Noticias/images/c2.png")){
                out.print("<br><img height='400' width='415'; src='" + source + "' /><br>");
            out.print("<br><img height='100' width='100' align='center'; src='Noticias/images/c21.jpg' />"+" "+"<img height='100' width='100' align='center'; src='Noticias/images/c22.jpg' />"+" "+"<img height='100' width='100' align='center'; src='Noticias/images/c23.jpg' />");
            out.print("casa nueva");        
                            }
            
            
            
             

            
                    %>
                    
                      
                </div>
                <div class="clear"></div>
        </div>  
    </section> 
</div>    
<!--==============================footer=================================-->
<footer>
    <img src="sitio/images/LogoQS.JPG" width="120" height="90">
    <p>© 2013 Quality Solutions</p>
</footer>	    
<script>
    Cufon.now();
</script>
</body>
</html>
