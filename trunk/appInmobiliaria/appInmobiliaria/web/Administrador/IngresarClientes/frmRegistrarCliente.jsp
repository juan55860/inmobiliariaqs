<%-- 
    Document   : addInmueble
    Created on : 24/04/2013, 02:47:50 PM
    Author     : usuario
--%>

<!DOCTYPE html>
<html lang="en">
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

        <!--
             prueba  
        -->

        <script type="text/javascript" src="../../recursos/jvalidate/js/jquery_1.4.js"></script>
        <script type="text/javascript" src="../../recursos/jvalidate/js/jquery_validate.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#form').validate({
                    rules: {
                        'nombre': 'required',
                        'apellido': 'required',
                        'numero_identidad': {required: true, number: true},
                        'email': {required: true, email: true},
                        'tipo_identidad': 'required',
                        'deportes[]': {required: true, minlength: 1}
                    },
                    messages: {
                        'nombre': 'Debe ingresar el nombre',
                        'apellido': 'Debe ingresar el apellido',
                        'numero_identidad': {required: 'Debe ingresar el nï¿½mero de documento de identidad', number: 'Debe ingresar un nï¿½mero'},
                        'email': {required: 'Debe ingresar un correo electrï¿½nico', email: 'Debe ingresar el correo electrï¿½nico con el formato correcto. Por ejemplo: u@localhost.com'},
                        'tipo_identidad': 'Debe ingresar el nï¿½mero de documento',
                        'deportes[]': 'Debe seleccionar mï¿½nimo un deporte'
                    },
                    debug: true,
                    /*errorElement: 'div',*/
                    //errorContainer: $('#errores'),
                    submitHandler: function(form) {
                        alert('El formulario ha sido validado correctamente!');
                    }
                });
            });
        </script>

    </head>
    <body>
        <header>
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
                            <li><img src="../../sitio/images/slider-2-small.jpg" alt="" /></li>
                        </ul>
                        <p>&nbsp;</p>
                    </div>	
                    <a href="#" class="prev"></a><a href="#" class="next"></a>
                </div>
                <nav>
                    <ul class="menu">
                        <li><a href="../ArrendamientosVentas/frmArrendamientosVentas.jsp">Financiera</a></li>
                        <li><a href="../GestionarPrioridadInmueble/grdSeries.jsp">Prioridad</a></li>
                            <li><a href="../ingresarInmuebles/frmRegistrarInmueble.jsp">Inmuebles</a></li>
                            <li><a class="current" href="../IngresarClientes/frmRegistrarCliente.jsp" >Clientes</a></li> 
                            <li><a href="../Administrador.jsp">Archivos</a></li>

                    </ul>
                </nav>
            </div>
        </header>  
        <div class="main">
            <!--==============================header=================================-->

            <!--==============================content================================-->
            <section id="content"><div class="ic"></div>
                <div class="container_12">	
                    <div class="grid_4">
                        <h2 class="top-1 p3">Registrar Clientes</h2>
                        <form id="form" method="post" action="frmIngresarInmueble.jsp" >
                            <fieldset>
                                <p>
                                    <label><strong>Nombre:</strong>
                                        <input type="text" id="nombre" name="nombre"  required> </label>
                                    <label><strong>Apellido:</strong>
                                        <input type="text" id="apellido" name="apellido"  required>
                                    </label>

                                    <label>Tipo de Identificacion: </label>
                                    <select name="tipoID" id="tipoId"  style="border:transparent; background-color: rgb(19, 19, 19);font: 14px Arial,Helvetica,sans-serif; color:rgb(83,83,83); 
                                            height: 28px; " >
                                        <option value="1">Cedula</option>
                                        <option value="2">NIT</option>
                                    </select>  
                                </p>
                                <p>&nbsp;</p>
                                <p>
                                    <label><strong>Identificacion:</strong>
                                        <input type="text" value="" required name="id" id="id">
                                    </label>
                                    <label><strong>Direccion:</strong>
                                        <input type="text" value="" required name="dir" id="dir">
                                    </label>
                                    <label><strong>Teléfono:</strong>
                                        <input type="text" value="" required name="tel" id="tel">
                                    </label>
                                    <label><strong>Correo:</strong>
                                        <input type="text" id="email" name="email" placeholder="asturver@hotmail.es" required="required" >
                                    </label>
                                    <label><strong>Contraseña:</strong>
                                        <input type="text" value="" id="contras" name="contras">
                                    </label>
                                    <label>Rol: </label>
                                    <select name="rol" id="rol"  style="border:transparent; background-color: rgb(19, 19, 19);font: 14px Arial,Helvetica,sans-serif; color:rgb(83,83,83); 
                                            height: 28px; " >
                                        <option value="1">Arrendador</option>
                                        <option value="2">Arrendatario</option>
                                    </select> 
                                </p>
                                <p>

                                </p>
                                <div class="btns"><a href="contacts.html" class="button">Clear</a><a href="#" class="button" onClick="document.getElementById('form').submit()">Send</a></div>

                                <p>

                                <p>&nbsp; </p>
                                <p>&nbsp; </p>

                            </fieldset> 

                        </form> 
                    </div>

                    <div class="clear"></div>
                </div>  
            </section> 
        </div>    


    </body>
</html>
