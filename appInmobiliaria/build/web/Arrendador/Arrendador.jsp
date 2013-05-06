<%-- 
    Document   : Arrendador
    Created on : 22/04/2013, 11:40:44 PM
    Author     : Camilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Arrendador Home</title>
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
		$(document).ready(function(){
			$('.form-1').jqTransform();					   	
			$('.slider')._TMS({
				show:0,
				pauseOnHover:true,
				prevBu:'.prev',
				nextBu:'.next',
				playBu:false,
				duration:1000,
				preset:'fade',
				pagination:true,
				pagNums:false,
				slideshow:7000,
				numStatus:false,
				banners:false,
				waitBannerAnimation:false,
				progressBar:false
			})		
		});
	</script>
	
<style type="text/css">
#apDiv1 {
	position:absolute;
	left:191px;
	top:476px;
	width:802px;
	height:677px;
	z-index:1;
}
</style>
</head>
<body>
    <div id="apDiv1"><iframe name="frame1" frameborder="0"  height="600" width="1100"></iframe></div>
<div class="main">
<!--==============================header=================================-->
<header>
    <div>
        <h1><a href="../index.jsp"><img src="../sitio/images/logo.jpg" alt=""></a></h1>
        <div class="social-icons">
        	<span>Encuentranos en</span>
            <a href="#" class="icon-3"></a>
            <a href="#" class="icon-2"></a>
            <a href="#" class="icon-1"></a>
      </div>
        <div id="slide">		
            <div class="slider">
                <ul class="items">
                    <li><img src="../sitio/images/slider-1-small.jpg" alt="" /></li>
                    <li><img src="../sitio/images/slider-2-small.jpg" alt="" /></li>
                    <li><img src="../sitio/images/slider-3-small.jpg" alt="" /></li>
                </ul>
            </div>	
            <a href="#" class="prev"></a><a href="#" class="next"></a>
        </div>
        <nav>
            <ul class="menu">
                <center> <li><a href="#" target="frame1">Afiliar Inmueble</a></li> </center>

            </ul>
        </nav>
    </div>
</header>   

</div>  
<script>
            Cufon.now();
        </script>    

</body>
</html>

