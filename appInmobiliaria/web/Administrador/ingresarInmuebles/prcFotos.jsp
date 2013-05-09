<%-- 
    Document   : prcFotos
    Created on : 9/05/2013, 02:46:35 AM
    Author     : usuario
--%>

<%@page import="java.util.LinkedList"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<html>
    <head><script>
        function redireccionar() {
            window.location.href = "frmSeleccionInmueble.jsp";
        }

        </script>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <style type="text/css">
            body,td,th {
                color: #000;
            }
            body {
                background-color: #666;
            }
        </style>
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

        <style type="text/css">
            #apDiv1 {
                position:absolute;
                left:191px;
                top:476px;
                width:802px;
                height:677px;
                z-index:1;

            }
            #apDiv2 {
                position:absolute;
                left:362px;
                top:493px;
                width:721px;
                height:535px;
                z-index:1;
                font: 20px Arial,Helvetica,sans-serif; color:rgb(83,83,83)
            }
        </style>
    </head>
    <body style="background-color: white; color: black;"><header>
            <div>
                <h1><a href="../../index.jsp"><img src="../../sitio/images/logo.jpg" alt=""></a></h1>
                <div class="social-icons">
                    <span>Encuentranos en</span>
                    <a href="#" class="icon-3"></a>
                    <a href="#" class="icon-2"></a>
                    <a href="#" class="icon-1"></a>
                </div>
                <div id="slide">		
                    <div class="slider">
                        <ul class="items">
                            <li><img src="../../sitio/images/slider-1-small.jpg" alt="" /></li>
                            <li>k</li>
                            <li><img src="../../sitio/images/slider-3-small.jpg" alt="" /></li>
                        </ul>
                        <p>&nbsp;</p>
                    </div>	
                    <a href="#" class="prev"></a><a href="#" class="next"></a>
                </div>
                <nav>
                    <ul class="menu">
                        <li><a href="../ArrendamientosVentas/frmArrendamientosVentas.jsp">Financiera</a></li>
                        <li><a href="#" target="frdirect">Prioridad</a></li>
                        <li><a href="#" target="frdirect">Inmuebles</a></li>
                        <li><a class="current" href="../IngresarClientes/frmRegistrarCliente.jsp" >Clientes</a></li> 
                        <li><a href="../Administrador.jsp">Archivos</a></li>

                    </ul>
                </nav>
            </div>
        </header>
        <%
            /*FileItemFactory es una interfaz para crear FileItem*/
            FileItemFactory file_factory = new DiskFileItemFactory();
            /*ServletFileUpload esta clase convierte los input file a FileItem*/
            ServletFileUpload servlet_up = new ServletFileUpload(file_factory);
            /*sacando los FileItem del ServletFileUpload en una lista */
            List items = servlet_up.parseRequest(request);
            LinkedList<String> fotos = new LinkedList();
            String value = "";
            controladores.ctrlIngresarFoto ctrlFoto = new controladores.ctrlIngresarFoto();
            for (int i = 0; i < items.size(); i++) {
                /*FileItem representa un archivo en memoria que puede ser pasado al disco duro*/
                FileItem item = (FileItem) items.get(i);
                /*item.isFormField() false=input file; true=text field*/
                if (!item.isFormField()) {
                    /*cual sera la ruta al archivo en el servidor*/
                    File archivo_server = new File("C:/Users/Usuario/Documents/NetBeansProjects/Subversion/appInmobiliaria/web/fotos/" + item.getName());
                    /*y lo escribimos en el servido*/
                    fotos.add("fotos/" + archivo_server.getName());
                    item.write(archivo_server);

                } else {
                    if (item.getFieldName().equals("idinm")) {
                        value = item.getString();
                    }
                }
            }
            if (!value.equals("")) {
                for (int j = 0; j < fotos.size(); j++) {
                    ctrlFoto.ingresarFotoenTabla(fotos.get(j), value);
                }
        %>
        <script>
            window.location.href = "frmSeleccionInmueble.jsp";
        </script>
        <% }
        %>
    </body>
</html>