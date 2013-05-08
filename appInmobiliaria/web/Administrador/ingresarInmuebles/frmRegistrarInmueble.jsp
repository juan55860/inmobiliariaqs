<%-- 
    Document   : addInmueble
    Created on : 22/04/2013, 02:47:50 PM
    Author     : Camilo
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Registrar Inmueble</title>
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
        <div id="apDiv2">
            <form action="prcRegistrarInmueble.jsp" enctype="multipart/form-data"  name="form">
                <p align="center"><strong>Registrar Inmueble</strong>
                </p>
                <p>
                    <label for="precio">Precio : </label>
                    <input type="number" step="any" name="precio" id="precio" required>
                </p>
                <p><br>
                </p>
                <p>
                    <% modelo.clsConexionBD cb = new modelo.clsConexionBD();
                        StringBuffer bf = (cb.cmbGenera("barrios", 2));
                    %>
                    <label for="barrio">Barrio: <%=bf.toString()%>
                    </label>



                </p>
                <p>&nbsp;</p>
                <p>
                    <label for="dir">Direccion :</label>
                    <input type="text" name="dir" id="dir" required="">
                </p>
                <p>&nbsp;</p>
                <p>
                    <% modelo.clsConexionBD cr = new modelo.clsConexionBD();
                        StringBuffer bf2 = (cr.cmbGenera("tipoinmueble", 2));
                    %>
                    <label for="tipoinmue">Tipo Inmueble :<%=bf2.toString()%></label>

                </p>
                <p>&nbsp;</p>
                <p>
                    <label for="cedpro">Documento propietario : </label>
                    <input type="number" name="cedpro" id="cedpro" required>
                    <br>
                </p>
                <p>&nbsp;</p>
                <p>
                    <label for="longitud"> Longitud : </label>
                    <input type="number" step="any" name="longitud" id="longitud" required>
                </p>
                <p>&nbsp;</p>
                <p><strong> Estado : </strong></p>
                <p>&nbsp;</p>
                <p>
                    <label> Venta :
                        <input type="radio" name="estado" value="1" id="estado_0">
                    </label>
                    <label>  Arrendamiento :
                        <input type="radio" name="estado" value="2" id="estado_1">
                    </label>
                    <br>
                </p>
                <p>&nbsp;</p>
                <p>
                    <label for="banio">Baños</label>
                    <input type="text" name="banio" id="banio">
                </p>
                <p>&nbsp;</p>
                <p>
                    <label for="habitaciones">Habitaciones</label>
                    <input type="text" name="habitaciones" id="habitaciones">
                </p>
                <p><br>
                </p>
                <p>
                    <label for="foto">Fotos: </label>
                <p>&nbsp;</p>
                <p>
                    <input type="file" name="uploadfile1"  id="uploadfile1" >
                </p>
                </p>
                <p>&nbsp;</p>
                <p>
                    <label for="foto2"></label>
                    <input type="file" name="uploadfile1" id="uploadfile2" required>
                </p>
                <p>&nbsp;</p>
                <p>
                    <label for="foto3"></label>
                    <input type="file" name="uploadfile1" id="foto3" required>
                </p>
                <p>&nbsp;</p>
                <p>
                    <input type="submit" name="enviar" id="enviar" value="Enviar">
                </p>
                <p>&nbsp; </p>
            </form>
        </div>
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
                        <li><a href="../GestionarPrioridadInmueble/grdSeries.jsp" >Prioridad</a></li>
                        <li><a href="frmRegistrarInmueble.jsp" >Inmuebles</a></li>
                        <li><a class="current" href="../IngresarClientes/frmRegistrarCliente.jsp" >Clientes</a></li> 
                        <li><a href="../Administrador.jsp">Archivos</a></li>

                    </ul>
                </nav>
            </div>
        </header>  

        <!--==============================header=================================-->

        <!--==============================content================================-->



        <script>
            Cufon.now();
        </script>  
    </body>
</html>
