<%-- 
    Document   : home
    Created on : 7/05/2013, 11:54:21 PM
    Author     : Carla  Zuluaga
--%>
<%@page import="controladores.clsDAOInmueble"%>
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
             <style type="text/css" media="screen">
            <!--

            /* Style and images take for example purposes only from http://www.quicksnapper.com */

            body { font: 1em "Lucida Grande",Lucida,Verdana,sans-serif; font-size: 62.5%; line-height: 1;}
            input, textarea { font-family: Arial; font-size: 125%; padding: 7px; }
            label { display: block; } 
            p { margin: 0; margin-bottom: 4px;}
            h5 { margin: 0; font-weight: normal; }
            a:link,
            a:hover,
            a:visited {
                color: #FFCC00;
            }
            #sidebar {
                color: #AFB0B1;
                background: #0D171A;
                float:left;
                margin:0 0 24px;
                padding:15px 10px 10px;
                width:300px;
            }

            #sidebar ul {
                font-size:1.2em;
                list-style-type:none;
                margin:0;
                padding:0;
                position:relative;
            }

            .rating {
                background-image:url(Noticias/images/info_bar_stars.png);
                background-repeat:no-repeat;
                height:12px;
                text-indent:-900em;
                font-size:1em;
                margin:0 0 9px;
            }

            .none {
                background-position: 82px 0px;
            }

            .four {
                background-position: 82px -48px;
            }

            .five {
                background-position: 82px -60px;
            }

            .tags {
                color: #fff;
                margin: 0.5em;
            }

            .tags a,
            .tags span {
                background-color: #333839;
                font-size: 0.8em;
                padding: 0.1em 0.8em 0.2em;
            }

            .tags a:link,
            .tags a:visited {
                color: #fff;
                text-decoration: none;  
            }

            .tags a:hover,
            .tags a:active {
                background-color: #3e4448;
                color: #fff;
                text-decoration: none;  
            }

            #sidebar li {
                height: 90px;
                overflow: hidden;
            }

            #sidebar li h5 {
                color:#A5A9AB;
                font-size:1em;
                margin-bottom:0.5em;
            }

            #sidebar li h5 a {
                color:#A5A9AB;
                text-decoration:none;
            }

            #sidebar li img {
                float:left;
                margin-right:8px;
            }

            #sidebar li .info {
                color:#3E4548;
                font-size:1em;
            }

            #sidebar .info a,
            #sidebar .info a:visited {
                color:#3E4548;
                text-decoration: none;
            }

            #sidebar .spyWrapper {
                height: 100%;
                overflow: hidden;
                position: relative;    
            }

            #sidebar {
                -webkit-border-radius: 5px;
                -moz-border-radius: 5px;
            }

            .tags span,
            .tags a {
                -webkit-border-radius: 8px;
                -moz-border-radius: 8px;
            }

            a img {
                border: 0;
            }

            -->
        </style>
        <script src="Noticias/jquery-1.2.6.js" type="text/javascript"></script>
        <script type="text/javascript" charset="utf-8">
            $(function() {
                $('ul.spy').simpleSpy();
            });

            (function($) {

                $.fn.simpleSpy = function(limit, interval) {
                    limit = limit || 4;
                    interval = interval || 4000;

                    return this.each(function() {
                        // 1. setup
                        // capture a cache of all the list items
                        // chomp the list down to limit li elements
                        var $list = $(this),
                                items = [], // uninitialised
                                currentItem = limit,
                                total = 0, // initialise later on
                                height = $list.find('> li:first').height();

                        // capture the cache
                        $list.find('> li').each(function() {
                            items.push('<li>' + $(this).html() + '</li>');
                        });

                        total = items.length;

                        $list.wrap('<div class="spyWrapper" />').parent().css({height: height * limit});

                        $list.find('> li').filter(':gt(' + (limit - 1) + ')').remove();

                        // 2. effect        
                        function spy() {
                            // insert a new item with opacity and height of zero
                            var $insert = $(items[currentItem]).css({
                                height: 0,
                                opacity: 0,
                                display: 'none'
                            }).prependTo($list);

                            // fade the LAST item out
                            $list.find('> li:last').animate({opacity: 0}, 1000, function() {
                                // increase the height of the NEW first item
                                $insert.animate({height: height}, 1000).animate({opacity: 1}, 1000);

                                // AND at the same time - decrease the height of the LAST item
                                // $(this).animate({ height : 0 }, 1000, function () {
                                // finally fade the first item in (and we can remove the last)
                                $(this).remove();
                                // });
                            });

                            currentItem++;
                            if (currentItem >= total) {
                                currentItem = 0;
                            }

                            setTimeout(spy, interval)
                        }

                        spy();
                    });
                };

            })(jQuery);



        </script>
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
                        <ul class="menu">
                            <li class="current"><a href="home.jsp">Inicio</a></li>
                            <li><a href="Informacion/servicios.jsp">Servicios</a></li>
                            <li><a href="Informacion/contacto.jsp">Contacto</a></li>
                            <li><a href="Cliente/afiliarInmueble/frmSeleccionInmueble.jsp">Afiliar inmueble</a></li>
                            <li><a href="Login/login.jsp">Iniciar Sesion</a></li>
                        </ul>
                    </nav>  
                    <nav>
                        <ul class="menu">
                            <li class="current"><a href="home.jsp">Inicio</a></li>
                            <li><a href="Informacion/servicios.jsp">Servicios</a></li>
                            <li><a href="Informacion/contacto.jsp">Contacto</a></li>
                            <li><a href="Cliente/afiliarInmueble/frmSeleccionInmueble.jsp">Afiliar inmueble</a></li>
                            <li><a href="Login/login.jsp">Iniciar Sesion</a></li>
                        </ul>
                    </nav>
                </div>
            </header>   
            <!--==============================content================================-->
            <section id="content"><div class="ic"></div>
                <div class="container_12">	
                    <div class="grid_8">
                        <h2 class="top-1 p3"></h2>
                         <div id="apDiv1">
            <div id="sidebar"><center><h1></h1></center>
                <ul class="spy">
                    

                    <%
                    
                     String  numero=request.getParameter("select");
                     if(numero!=""){
    clsDAOInmueble d = new clsDAOInmueble();
   out.print(d.obtenerDatos(numero));
     }
                                         else{
                          clsDAOInmueble d = new clsDAOInmueble();
   out.print(d.obtenerDatos("v_comerciales_par"));
                         
                                         }
   
    %>


                  
                </ul>
            </div>    
        </div>

                    </div>
                    <div class="grid_4">
                        <div class="left-1">
                            <h2 class="top-1 p3">Busqueda</h2>
                            <form  method="GET"id="form-1" class="form-1 bot-1" action=inmuebles.jsp>
                                <div class="select-1">
                                    <label>Tipo de Inmueble</label>
                                    <select name="select" >
                                        <option value="v_comerciales_loc">Locales</option>
                                        <option value="v_comerciales_con">Consultorios</option>
                                        <option value="v_comerciales_ofi">Oficinas</option>
                                        <option value="v_comerciales_bod">Bodegas</option>
                                        <option value="v_comerciales_par">Parqueadero</option>
                                        <option value="v_edificios_edi">Edificios</option>
                                        <option value="v_residenciales_cas">Casas</option>
                                        <option value="v_residenciales_apa">Apartamentos</option>
                                        <option value="v_residenciales_ape">Apartastudios</option>
                                        <option value="v_rurales_fin">Fincas</option>
                                        <option value="v_rurales_cas">Casas campestres</option>
                                        <option value="v_rurales_cab">Cabannas</option>
                                        <option value="v_rango_inm1">Entre 100000 & 1000000</option>
                                        <option value="v_rango_inm2">Entre 1000000 & 10000000</option>
                                    </select>   
                                </div>
                              <a onClick="document.getElementById('form-1').submit()" class="button">Buscar</a>
                                <div class="clear"></div><div class="clear"></div>
                            </form>



                        </div>
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