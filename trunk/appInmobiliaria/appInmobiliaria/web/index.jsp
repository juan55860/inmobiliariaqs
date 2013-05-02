<%-- 
    Document   : index
    Created on : 7/04/2013, 05:02:28 PM
    Author     : Camilo
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Main</title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" media="screen" href="sitio/css/reset.css">
        <link rel="stylesheet" type="text/css" media="screen" href="sitio/css/style.css">
        <link rel="stylesheet" type="text/css" media="screen" href="sitio/css/grid_12.css">
        <link rel="stylesheet" type="text/css" media="screen" href="sitio/css/slider.css">
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


        <!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
        <!--[if lt IE 9]>
                    <script type="text/javascript" src="js/html5.js"></script>
            <link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
            <![endif]-->

        <style type="text/css">
            #apDiv1 {
                position:absolute;
                left:962px;
                top:752px;
                width:342px;
                height:1211px;
                z-index:1;
            }
            #apDiv2 {
                position:absolute;
                left:521px;
                top:1953px;
                width:342px;
                height:332px;
                z-index:1;
                font: 16px Arial,Helvetica,sans-serif; 
                color:rgb(83,83,83)
            }
        </style>
    </head>
    <body>
        <div class="main">
            <!--==============================header=================================-->
            <header>
                <div>
                    <h1><a href="index.jsp"><img src="sitio/images/logo.jpg" alt=""></a></h1>
                    <div class="social-icons">
                        <span>Encuentranos en:</span>
                        <a href="#" class="icon-3"></a>
                        <a href="#" class="icon-2"></a>
                        <a href="#" class="icon-1"></a>
                    </div>
                    <div id="slide">		
                        <div class="slider">
                            <ul class="items">
                                <li> <img src="sitio/images/slider-1.jpg" /></li>
                                <li><img src="sitio/images/slider-2.jpg"  /></li>
                                <li><img src="sitio/images/slider-3.jpg"  /></li>
                            </ul>
                        </div>	
                        <a href="#" class="prev"></a><a href="#" class="next"></a>
                    </div>
                    <nav>
                        <ul class="menu">
                            <li class="current"><a href="index.jsp">Inicio</a></li>
                            <li><a href="#">Alquiler</a></li>
                            <li><a href="#">Ventas</a></li>
                            <li><a href="#">Compras</a></li>
                            <li><a href="#">Contacto</a></li>

                        </ul>
                    </nav>
                </div>
            </header>   
            <!--==============================content================================-->
            <section id="content"><div class="ic"></div>
                <div class="container_12"></div>  
            </section>

        </div>
        <div id="apDiv1">
            <div id="sidebar"><center><h1>OFERTAS</h1></center>
                <ul class="spy">
                    <li>
                        <a href="#" title="View round"><img width="70" height="70" src="Noticias/images/1.png" title="" /></a>
                        <h5><a href="#" title="View round">round</a></h5>
                        <p class="info">Nov 29th 2008 by <a href="#" title="Visit neue's userpage.">neue</a></p>
                        <p class='rating none'>Not Rated</p>

                        <p class="tags"></p>
                    </li>

                    <li>

                        <a href="#" title="View reflet"><img width="70" height="70" src="Noticias/images/2.png" title="" /></a>
                        <h5><a href="#" title="View reflet">reflet</a></h5>
                        <p class="info">Nov 29th 2008 by <a href="#" title="Visit neue's userpage.">neue</a></p>

                        <p class='rating none'>Not Rated</p>
                        <p class="tags"><a href="#" title='Find more images tagged Tactile'>Tactile</a></p>
                    </li>

                    <li>

                        <a href="#" title="View Kate Moross Little Big Planet"><img width="70" height="70" src="Noticias/images/3.png" title="" /></a>
                        <h5><a href="#" title="View Kate Moross Little Big Planet">Kate Moross Little Big Planet</a></h5>

                        <p class="info">Nov 29th 2008 by <a href="#" title="Visit neue's userpage.">neue</a></p>
                        <p class='rating four'>Four Stars</p>
                        <p class="tags"><a href="#" title='Find more images tagged Kate Moross'>Kate Moross</a></p>
                    </li>

                    <li>

                        <a href="#" title="View Untitled"><img width="70" height="70" src="Noticias/images/4.png" title="" /></a>

                        <h5><a href="#" title="View Untitled">Untitled</a></h5>
                        <p class="info">Nov 29th 2008 by <a href="#"  title="Visit mike1052's userpage.">mike1052</a></p>
                        <p class='rating none'>Not Rated</p>
                        <p class="tags"></p>
                    </li>

                    <li>

                        <a href="#" title="View My Tutorial's Library"><img width="70" height="70" src="Noticias/images/5.png" title="" /></a>
                        <h5><a href="#" title="View My Tutorial's Library">My Tutorial's Library</a></h5>
                        <p class="info">Nov 29th 2008 by <a href="#" title="Visit FrancescoOnAir's userpage.">FrancescoOnAir</a></p>
                        <p class='rating five'>Five Stars</p>
                        <p class="tags"></p>
                    </li>

                    <li>

                        <a href="#" title="View Sandy &mdash; your free personal email assistant - Log in"><img width="70" height="70" src="Noticias/images/6.png" title="" /></a>
                        <h5><a href="#" title="View Sandy &mdash; your free personal email assistant - Log in">Sandy &mdash; your free</a></h5>
                        <p class="info">Nov 29th 2008 by <a href="#" title="Visit John Doe's userpage.">John Doe</a></p>
                        <p class='rating none'>Not Rated</p>

                        <p class="tags"><a href="#" title='Find more images tagged Blue'>Blue</a> <a href="#" title='Find more images tagged I Want Sandy'>I Want Sandy</a></p>

                    </li>

                    <li>
                        <a href="#" title="View Sandy &mdash; your free personal email assistant - Log in"><img width="70" height="70" src="Noticias/images/7.png" title="" /></a>
                        <h5><a href="#" title="View Sandy &mdash; your free personal email assistant - Log in">Sandy &mdash; your free</a></h5>

                        <p class="info">Nov 29th 2008 by <a href="#" title="Visit John Doe's userpage.">John Doe</a></p>
                        <p class='rating none'>Not Rated</p>
                        <p class="tags"><a href="#" title='Find more images tagged Blue'>Blue</a> <a href="#" title='Find more images tagged I Want Sandy'>I Want Sandy</a></p>

                    </li>

                    <li>

                        <a href="#" title="View Sandy &mdash; your free personal email assistant"><img width="70" height="70" src="Noticias/images/8.png" title="" /></a>
                        <h5><a href="#" title="View Sandy &mdash; your free personal email assistant">Sandy &mdash; your free</a></h5>
                        <p class="info">Nov 29th 2008 by <a href="#" title="Visit John Doe's userpage.">John Doe</a></p>
                        <p class='rating none'>Not Rated</p>
                        <p class="tags"><a href="#" title='Find more images tagged Blue'>Blue</a> <a href="#" title='Find more images tagged Homepage'>Homepage</a></p>

                    </li>

                    <li>
                        <a href="#" title="View Values of n Blog"><img width="70" height="70" src="Noticias/images/9.png" title="" /></a>
                        <h5><a href="#" title="View Values of n Blog">Values of n Blog</a></h5>
                        <p class="info">Nov 29th 2008 by <a href="#" title="Visit John Doe's userpage.">John Doe</a></p>
                        <p class='rating none'>Not Rated</p>

                        <p class="tags"><a href="#" title='Find more images tagged Brown'>Brown</a> <a href="#" title='Find more images tagged Blogs'>Blogs</a></p>

                    </li>

                    <li>
                        <a href="#" title="View why values of n"><img width="70" height="70" src="Noticias/images/10.png" title="" /></a>
                        <h5><a href="#" title="View why values of n">why values of n</a></h5>
                        <p class="info">Nov 29th 2008 by <a href="#" title="Visit John Doe's userpage.">John Doe</a></p>

                        <p class='rating none'>Not Rated</p>
                        <p class="tags"><a href="#" title='Find more images tagged Brown'>Brown</a> <a href="#" title='Find more images tagged Values of N'>Values of N</a></p>

                    </li>

                    <li>
                        <a href="#" title="View values of n"><img width="70" height="70" src="Noticias/images/11.png" title="" /></a>
                        <h5><a href="#" title="View values of n">values of n</a></h5>

                        <p class="info">Nov 29th 2008 by <a href="#" title="Visit John Doe's userpage.">John Doe</a></p>
                        <p class='rating none'>Not Rated</p>
                        <p class="tags"><a href="#" title='Find more images tagged Brown'>Brown</a> <a href="#" title='Find more images tagged Homepage'>Homepage</a></p>

                    </li>

                    <li>

                        <a href="#" title="View stikkit privacy policy"><img width="70" height="70" src="images/12.png" title="" /></a>
                        <h5><a href="#" title="View stikkit privacy policy">stikkit privacy policy</a></h5>
                        <p class="info">Nov 29th 2008 by <a href="#" title="Visit John Doe's userpage.">John Doe</a></p>
                        <p class='rating none'>Not Rated</p>
                        <p class="tags"><a href="#" title='Find more images tagged Yellow'>Yellow</a> <a href="#" title='Find more images tagged Blue'>Blue</a></p>

                    </li>

                    <li>
                        <a href="#" title="View stikkit: the stikkit api"><img width="70" height="70" src="images/13.png" title="" /></a>
                        <h5><a href="#" title="View stikkit: the stikkit api">stikkit: the stikkit api</a></h5>
                        <p class="info">Nov 29th 2008 by <a href="#" title="Visit John Doe's userpage.">John Doe</a></p>
                        <p class='rating none'>Not Rated</p>

                        <p class="tags"><a href="#" title='Find more images tagged Yellow'>Yellow</a> <a href="#" title='Find more images tagged Blue'>Blue</a></p>

                    </li>
                </ul>
            </div>    
        </div>
        <script>
            Cufon.now();
        </script>

    </body>
</html>
