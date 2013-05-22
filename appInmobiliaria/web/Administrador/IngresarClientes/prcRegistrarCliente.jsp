<%-- 
    Document   : prcRegistrarInmueble
    Created on : 22/04/2013, 10:33:20 PM
    Author     : Camilo
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="controladores.ctrlIngresarPersona"%>
<%@page import="modelo.Persona"%>
<%@page import="modelo.Inmueble"%>
<%@page import="controladores.ctrlIngresarInmueble"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head><script>
        function redireccionar() {
            window.location.href = "frmRegistrarCliente.jsp";
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
    <body><header>
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
            ctrlIngresarPersona ctrlPersona = new ctrlIngresarPersona();
            Calendar fecha = new GregorianCalendar();
            if (ctrlPersona.esNumero(request.getParameter("ide")) == false || ctrlPersona.esNumero(request.getParameter("telefono")) == false) {%>
        <script>
            alert("El id y el telefono deben ser campos numericos");
            redireccionar();
        </script> 
        <% } else {
            int id = Integer.parseInt(request.getParameter("ide"));
            String tipoId = request.getParameter("tipoId");
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String direccion = request.getParameter("direccion");
            String telefono = request.getParameter("telefono");
            String email = request.getParameter("email");
            String contrasena = request.getParameter("contrasena");
            String rol = request.getParameter("rol");

            ctrlPersona.setIdentificacion(id);
            ctrlPersona.setTipoIdentificacion(tipoId);
            ctrlPersona.setNombre(nombre);
            ctrlPersona.setApellido(apellido);
            ctrlPersona.setDireccion(direccion);
            ctrlPersona.setTelefono(telefono);
            ctrlPersona.setCorreo(email);
            ctrlPersona.setContrasena(contrasena);
            ctrlPersona.setRol(rol);
            ctrlPersona.setFechaDeRegistro(fecha.getTime());

            String res = ctrlPersona.insertar(id);
                if (res.equals("")) {%>
        <script> alert('Se registro el cliente');
            redireccionar();
        </script>
        <% } else {%>
        <script> alert('Problemas para registrar');
            redireccionar();
        </script> <%}
                }%>
    </body>
</html>