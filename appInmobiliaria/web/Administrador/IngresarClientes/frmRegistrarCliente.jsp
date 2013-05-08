<%-- 
    Document   : addInmueble
    Created on : 24/04/2013, 02:47:50 PM
    Author     : usuario
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Registrar Clientes</title>
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
            
            function alfanumerico(campo, id){
                var charpos = campo.value.search("[^A-Za-z0-9., ]");
                if((campo.value.length > 0) && (charpos >= 0)) {
                    strError = "El campo "+id+" solo acepta letras de A a la Z y digitos";
                    alert(strError + "\n [Posición del caracter erróneo: " + eval(charpos+1)+"]");
                    campo.focus();
                    return false;
                } else {//if
                    return true;
                }
            }

            function letras (campo, id) {
                var charpos = campo.value.search("[^A-Za-z ]");
                if(campo.value.length > 0 &&  charpos >= 0) {
                    strError = "El campo " + id +" solo permite letras ";
                    alert(strError + "\n [Posicion del caracter erróneo: " + eval(charpos+1)+"]");
                    campo.focus();
                    return false;
                } else {//if
                    return true;
                }
            }

            function numerico(campo, id) {
                var charpos = campo.value.search("[^0-9]");
                if (campo.value.length > 0 &&  charpos >= 0)  {
                    strError = "El campo "+id+" solo acepta digitos ";
                    alert(strError + "\n [El caracter erróneo esta en la posicion: " + eval(charpos+1)+"]");
                    campo.focus();
                    return false;
                } else {
                    return true;
                }
            }
        </script>

    </head>
    <body>
        <div id="apDiv2">
            <form enctype="multipart/form-data" name="form1" action="prcRegistrarCliente.jsp" >
                <p>
                <center>
                    <table>    
                        <tr><td><strong>Identificacion:</strong></td>
                            <td><input type="text" value="" required="" name="ide" id="ide" onblur="numerico(ide, 'ide')"></td>
                        </tr>
                        <tr>
                            <td><strong>Tipo de Identificacion:</strong></td>
                            <td><select name="tipoId" id="tipoId"  style="border:transparent; background-color: rgb(19, 19, 19);font: 14px Arial,Helvetica,sans-serif; color:rgb(83,83,83); 
                                        height: 28px; " >
                                    <option value = "cedula">Cedula</option>
                                    <option value = "nit">NIT</option>
                                </select></td>
                        </tr>
                        <tr><td><strong>Nombre:</strong></td>
                            <td><input type="text" id="nombre" name="nombre" required onblur="letras(nombre, 'nombre')"></td>
                        </tr>
                        <tr><td><strong>Apellido:</strong></td>
                            <td><input type="text" id="apellido" name="apellido"  required onblur="letras(apellido, 'apellido')"></td>
                        </tr>
                        <p>&nbsp;</p>
                        <p>
                        <tr><td><strong>Direccion:</strong></td>
                            <td><input type="text" value="" required name="direccion" id="direccion" onblur="alfanumerico(direccion, 'direccion')"></td>
                        </tr>    
                        <tr><td><strong>Teléfono:</strong></td>
                            <td><input type="text" value="" required name="telefono" id="telefono" onblur="numerico(telefono, 'telefono')"></td>
                        </tr>    
                        <tr><td><strong>Email:</strong></td>
                            <td><input type="email" id="email" name="email" placeholder="quienfue@hotmail.com" required></td>
                        </tr>
                        <tr><td><strong>Contraseña:</strong></td>
                            <td><input type="text" required value="" id="contrasena" name="contrasena" onblur="numerico(contrasena, 'contrasena')"></td>
                        </tr>
                        <tr><td><strong>Rol: </strong></td>
                            <td><select name="rol" id="rol"  style="border:transparent; background-color: rgb(19, 19, 19);font: 14px Arial,Helvetica,sans-serif; color:rgb(83,83,83); 
                                        height: 28px; " >
                                    <option value="administrador">Administrador</option>
                                    <option value="arrendador">Arrendador</option>
                                    <option value="arrendatario">Arrendatario</option>
                                </select></td> 
                        </tr>
                        <p></p>
                        <tr><td><input type="submit" name="enviar" id="enviar" value="Enviar"></td>
                            <td><input type="reset" name="borrar" id="borrar" value="Borrar campos"></td>
                        </tr>
                        <p>
                    </table>
                </center>       
                <p>&nbsp; </p>
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