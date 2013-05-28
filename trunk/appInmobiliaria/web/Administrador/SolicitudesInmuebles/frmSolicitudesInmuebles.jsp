<%-- 
    Document   : frmArrendamientosVentas
    Created on : 21/04/2013, 03:58:44 PM
    Author     : Usuariio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Administrador Home</title>
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

        <link rel="stylesheet" href="../js/tabs/jquery-ui.css" />
        <script src="../js/tabs/jquery-1.9.1.js"></script>
        <script src="../js/tabs/jquery-ui.js"></script>
        <link rel="stylesheet" href="../js/tabs/style.css" />


        <link rel="stylesheet" type="text/css" media="screen" href="../js/mio/themes/jquery-ui-custom.css"  />
        <link rel="stylesheet" type="text/css" media="screen" href="../js/mio/themes/ui.jqgrid.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="../js/mio/themes/ui.multiselect.css" />

        <script src="../js/mio/jquery.js" type="text/javascript"></script>
        <script src="../js/mio/jquery-ui-custom.min.js" type="text/javascript"></script>

        <script src="../js/mio/jquery.layout.js" type="text/javascript"></script>
        <script src="../js/mio/grid.locale-en.js" type="text/javascript"></script>
        <script type="text/javascript">
            $.jgrid.no_legacy_api = true;
            $.jgrid.useJSON = true;
        </script>
        <script src="../js/mio/ui.multiselect.js" type="text/javascript"></script>
        <script src="../js/mio/jquery.jqGrid.js" type="text/javascript"></script>
        <script src="../js/mio/jquery.tablednd.js" type="text/javascript"></script>
        <script src="../js/mio/jquery.contextmenu.js" type="text/javascript"></script>

        <link href="../js/formulario/css/structure.css" rel="stylesheet">
        <link href="../js/formulario/css/form.css" rel="stylesheet">



        <script>
            $(function() {
                $("#tabs").tabs();
            });
        </script>

        <script type="text/javascript">
            $.jgrid.no_legacy_api = true;
            $.jgrid.useJSON = true;
        </script>

        <script type="text/javascript">



            var s = new String();


            $(document).ready(function() {

                grid();

            });

            $(document).ready(function() {

                grid2();

            });
            $(document).ready(function() {

                grid3();

            });

            $(document).ready(function() {

                grid4();

            });

            $(document).ready(function() {

                grid5();

            });

            $(document).ready(function() {

                slid();

            });


            function slid() {

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
            }

            function grid() {
                var t = new String();
                var f = new String();
                t = 'tipo'; //document.getElementById('id_tipo_hab').value;
                f = '';//$('#widgetField').get(0).innerHTML;
                //alert(t);alert(f);
                jQuery("#list9").empty();
                jQuery("#list9").jqGrid({
                    url: 'Comercial/rCargarComercial.jsp',
                    datatype: "json",
                    mtype: 'GET',
                    colNames: ['Codigo', 'Precio', 'Direccion', 'Estrato', 'Propietario', 'Prioridad', 'Area', 'Descripcion', 'Estado', 'Registro', 'Validacion', 'tipo', 'Baños', 'Pisos', 'Barrio'],
                    colModel: [
                        {name: 'codigo', index: 'codigo', width: 70, sortable: false, align: "center"},
                        {name: 'precio', index: 'precio', width: 130, align: "center"},
                        {name: 'direccion', index: 'direccion', width: 150, align: "center"},
                        {name: 'estrato', index: 'estrato', width: 60, align: "center"},
                        {name: 'cod_propietario', index: 'cod_propietario', width: 90, align: "center"},
                        {name: 'prioridad', index: 'prioridad', width: 60, align: "center"},
                        {name: 'area', index: 'area', width: 60, align: "center"},
                        {name: 'descripcion', index: 'descripcion', width: 100, align: "center"},
                        {name: 'estado', index: 'estado', width: 70, align: "center"},
                        {name: 'fecha_registro', index: 'fecha_registro', width: 80, align: "center"},
                        {name: 'validacion', index: 'validacion', width: 70, align: "center"},
                        {name: 'tipo', index: 'tipo', width: 55, align: "center"},
                        {name: 'num_bannos', index: 'num_bannos', width: 50, align: "center"},
                        {name: 'num_pisos', index: 'num_pisos', width: 50, align: "center"},
                        {name: 'cod_barrio', index: 'cod_barrio', width: 50, align: "center"}

                    ],
                    rowNum: 10,
                    rowList: [10, 20, 30],
                    pager: '#pager9',
                    sortname: 'item',
                    recordpos: 'left',
                    viewrecords: true,
                    sortorder: "desc",
                    multiselect: true,
                    caption: "Seleccione "});

                jQuery("#list9").jqGrid('navGrid', '#pager9', {add: false, del: false, edit: false, position: 'right'});

                jQuery("#m1").click(function() {
                    s = jQuery("#list9").jqGrid('getGridParam', 'selarrrow');
                    alert(s);
                });

                jQuery("#m1s").click(function() {
                    jQuery("#list9").jqGrid('setSelection', "15");
                });
            }


            function grid2() {
                var t = new String();
                var f = new String();
                t = 'tipo'; //document.getElementById('id_tipo_hab').value;
                f = '';//$('#widgetField').get(0).innerHTML;
                //alert(t);alert(f);
                jQuery("#list99").empty();
                jQuery("#list99").jqGrid({
                    url: 'Residencial/rCargarResidencial.jsp',
                    datatype: "json",
                    mtype: 'GET',
                    colNames: ['Codigo', 'Precio', 'Direccion', 'Estrato', 'Propietario', 'Prioridad', 'Area', 'Descripcion', 'Estado', 'Registro', 'Validacion', 'tipo', 'Baños', 'Habitaciones', 'Pisos', 'Parqueadero', 'Barrio'],
                    colModel: [
                        {name: 'codigo', index: 'codigo', width: 70, sortable: false, align: "center"},
                        {name: 'precio', index: 'precio', width: 130, align: "center"},
                        {name: 'direccion', index: 'direccion', width: 150, align: "center"},
                        {name: 'estrato', index: 'estrato', width: 60, align: "center"},
                        {name: 'cod_propietario', index: 'cod_propietario', width: 90, align: "center"},
                        {name: 'prioridad', index: 'prioridad', width: 60, align: "center"},
                        {name: 'area', index: 'area', width: 60, align: "center"},
                        {name: 'descripcion', index: 'descripcion', width: 100, align: "center"},
                        {name: 'estado', index: 'estado', width: 70, align: "center"},
                        {name: 'fecha_registro', index: 'fecha_registro', width: 80, align: "center"},
                        {name: 'validacion', index: 'validacion', width: 70, align: "center"},
                        {name: 'tipo', index: 'tipo', width: 55, align: "center"},
                        {name: 'num_bannos', index: 'num_bannos', width: 50, align: "center"},
                        {name: 'num_habitaciones', index: 'num_habitaciones', width: 50, align: "center"},
                        {name: 'num_pisos', index: 'num_pisos', width: 50, align: "center"},
                        {name: 'parqueadero', index: 'parqueadero', width: 80, align: "center"},
                        {name: 'cod_barrio', index: 'cod_barrio', width: 50, align: "center"}

                    ],
                    rowNum: 10,
                    rowList: [10, 20, 30],
                    pager: '#pager99',
                    sortname: 'codigo',
                    recordpos: 'left',
                    viewrecords: true,
                    sortorder: "desc",
                    multiselect: true,
                    caption: "Seleccione "});

                jQuery("#list99").jqGrid('navGrid', '#pager99', {add: false, del: false, edit: false, position: 'right'});

                jQuery("#m1").click(function() {
                    s = jQuery("#list99").jqGrid('getGridParam', 'selarrrow');
                    alert(s);
                });

                jQuery("#m1s").click(function() {
                    jQuery("#list99").jqGrid('setSelection', "16");
                });
            }

            function grid3() {
                var t = new String();
                var f = new String();
                t = 'tipo'; //document.getElementById('id_tipo_hab').value;
                f = '';//$('#widgetField').get(0).innerHTML;
                //alert(t);alert(f);
                jQuery("#list999").empty();
                jQuery("#list999").jqGrid({
                    url: 'Edificios/rCargarEdificios.jsp',
                    datatype: "json",
                    mtype: 'GET',
                    colNames: ['Codigo', 'Precio', 'Direccion', 'Estrato', 'Propietario', 'Prioridad', 'Area', 'Descripcion', 'Estado', 'Registro', 'Validacion', 'Pisos', 'Parqueaderos', 'Barrio'],
                    colModel: [
                        {name: 'codigo', index: 'codigo', width: 70, sortable: false, align: "center"},
                        {name: 'precio', index: 'precio', width: 130, align: "center"},
                        {name: 'direccion', index: 'direccion', width: 150, align: "center"},
                        {name: 'estrato', index: 'estrato', width: 60, align: "center"},
                        {name: 'cod_propietario', index: 'cod_propietario', width: 90, align: "center"},
                        {name: 'prioridad', index: 'prioridad', width: 60, align: "center"},
                        {name: 'area', index: 'area', width: 60, align: "center"},
                        {name: 'descripcion', index: 'descripcion', width: 100, align: "center"},
                        {name: 'estado', index: 'estado', width: 70, align: "center"},
                        {name: 'fecha_registro', index: 'fecha_registro', width: 80, align: "center"},
                        {name: 'validacion', index: 'validacion', width: 70, align: "center"},
                        {name: 'num_pisos', index: 'num_pisos', width: 55, align: "center"},
                        {name: 'num_parqueaderos', index: 'num_parqueaderos', width: 80, align: "center"},
                        {name: 'cod_barrio', index: 'cod_barrio', width: 50, align: "center"}

                    ],
                    rowNum: 10,
                    rowList: [10, 20, 30],
                    pager: '#pager999',
                    sortname: 'codigo',
                    recordpos: 'left',
                    viewrecords: true,
                    sortorder: "desc",
                    multiselect: true,
                    caption: "Seleccione "});

                jQuery("#list999").jqGrid('navGrid', '#pager999', {add: false, del: false, edit: false, position: 'right'});

                jQuery("#m1").click(function() {
                    s = jQuery("#list999").jqGrid('getGridParam', 'selarrrow');
                    alert(s);
                });

                jQuery("#m1s").click(function() {
                    jQuery("#list999").jqGrid('setSelection', "14");
                });
            }

            function grid4() {
                var t = new String();
                var f = new String();
                t = 'tipo'; //document.getElementById('id_tipo_hab').value;
                f = '';//$('#widgetField').get(0).innerHTML;
                //alert(t);alert(f);
                jQuery("#list9999").empty();
                jQuery("#list9999").jqGrid({
                    url: 'Rural/rCargarRural.jsp',
                    datatype: "json",
                    mtype: 'GET',
                    colNames: ['Codigo', 'Precio', 'Direccion', 'Estrato', 'Propietario', 'Prioridad', 'Area', 'Descripcion', 'Estado', 'Registro', 'Validacion', 'Tipo', 'Baños', 'Habitaciones', 'Piscinas'],
                    colModel: [
                        {name: 'codigo', index: 'codigo', width: 70, sortable: false, align: "center"},
                        {name: 'precio', index: 'precio', width: 130, align: "center"},
                        {name: 'direccion', index: 'direccion', width: 150, align: "center"},
                        {name: 'estrato', index: 'estrato', width: 60, align: "center"},
                        {name: 'cod_propietario', index: 'cod_propietario', width: 90, align: "center"},
                        {name: 'prioridad', index: 'prioridad', width: 60, align: "center"},
                        {name: 'area', index: 'area', width: 60, align: "center"},
                        {name: 'descripcion', index: 'descripcion', width: 100, align: "center"},
                        {name: 'estado', index: 'estado', width: 70, align: "center"},
                        {name: 'fecha_registro', index: 'fecha_registro', width: 80, align: "center"},
                        {name: 'validacion', index: 'validacion', width: 70, align: "center"},
                        {name: 'tipo', index: 'tipo', width: 55, align: "center"},
                        {name: 'num_bannos', index: 'num_bannos', width: 60, align: "center"},
                        {name: 'num_habitaciones', index: 'num_habitaciones', width: 90, align: "center"},
                        {name: 'num_piscinas', index: 'num_piscinas', width: 50, align: "center"}


                    ],
                    rowNum: 10,
                    rowList: [10, 20, 30],
                    pager: '#pager9999',
                    sortname: 'codigo',
                    recordpos: 'left',
                    viewrecords: true,
                    sortorder: "desc",
                    multiselect: true,
                    caption: "Seleccione "});

                jQuery("#list9999").jqGrid('navGrid', '#pager9999', {add: false, del: false, edit: false, position: 'right'});

                jQuery("#m1").click(function() {
                    s = jQuery("#list9999").jqGrid('getGridParam', 'selarrrow');
                    alert(s);
                });

                jQuery("#m1s").click(function() {
                    jQuery("#list9999").jqGrid('setSelection', "14");
                });
            }


            function mostrarH() {
                var itemsSeleccionadas = new String();
                itemsSeleccionadas = jQuery("#list9").jqGrid('getGridParam', 'selarrrow');
                var habSel = new String();
                var habi = new Array();
                habi = itemsSeleccionadas;
                for (i = 0; i < habi.length; i++) {
                    habSel = habSel + jQuery("#list9").jqGrid('getCell', habi[i], '1') + ';';
                }
                var f = new String();
                f = document.getElementById('fecha').value;
                document.getElementById('frameDel').src = 'newjsp3.jsp?MDLG=' + habSel;

            }



            function mostrarH1() {
                var itemsSeleccionadas = new String();
                itemsSeleccionadas = jQuery("#list9").jqGrid('getGridParam', 'selarrrow');
                var habSel = new String();
                var habi = new Array();
                habi = itemsSeleccionadas;
                for (i = 0; i < habi.length; i++) {
                    habSel = habSel + jQuery("#list9").jqGrid('getCell', habi[i], '1') + ';';
                }
                document.getElementById('frameDel').src = 'Comercial/prcValidarComercial.jsp?MDLG=' + habSel;

            }

            function borrarH1() {
                var itemsSeleccionadas = new String();
                itemsSeleccionadas = jQuery("#list9").jqGrid('getGridParam', 'selarrrow');
                var habSel = new String();
                var habi = new Array();
                habi = itemsSeleccionadas;
                for (i = 0; i < habi.length; i++) {
                    habSel = habSel + jQuery("#list9").jqGrid('getCell', habi[i], '1') + ';';
                }
                document.getElementById('frameDel').src = 'Comercial/prcBorrarComercial.jsp?MDLG=' + habSel;

            }

            function mostrarH11() {
                var itemsSeleccionadas = new String();
                itemsSeleccionadas = jQuery("#list99").jqGrid('getGridParam', 'selarrrow');
                var habSel = new String();
                var habi = new Array();
                habi = itemsSeleccionadas;
                for (i = 0; i < habi.length; i++) {
                    habSel = habSel + jQuery("#list99").jqGrid('getCell', habi[i], '1') + ';';
                }
                document.getElementById('frameDel2').src = 'Residencial/prcValidarResidencial.jsp?MDLG=' + habSel;

            }

            function borrarH11() {
                var itemsSeleccionadas = new String();
                itemsSeleccionadas = jQuery("#list99").jqGrid('getGridParam', 'selarrrow');
                var habSel = new String();
                var habi = new Array();
                habi = itemsSeleccionadas;
                for (i = 0; i < habi.length; i++) {
                    habSel = habSel + jQuery("#list99").jqGrid('getCell', habi[i], '1') + ';';
                }
                document.getElementById('frameDel2').src = 'Residencial/prcBorrarResidencial.jsp?MDLG=' + habSel;

            }

            function mostrarH111() {
                var itemsSeleccionadas = new String();
                itemsSeleccionadas = jQuery("#list999").jqGrid('getGridParam', 'selarrrow');
                var habSel = new String();
                var habi = new Array();
                habi = itemsSeleccionadas;
                for (i = 0; i < habi.length; i++) {
                    habSel = habSel + jQuery("#list999").jqGrid('getCell', habi[i], '1') + ';';
                }
                document.getElementById('frameDel3').src = 'Edificios/prcValidarEdificios.jsp?MDLG=' + habSel;

            }

            function borrarH111() {
                var itemsSeleccionadas = new String();
                itemsSeleccionadas = jQuery("#list999").jqGrid('getGridParam', 'selarrrow');
                var habSel = new String();
                var habi = new Array();
                habi = itemsSeleccionadas;
                for (i = 0; i < habi.length; i++) {
                    habSel = habSel + jQuery("#list999").jqGrid('getCell', habi[i], '1') + ';';
                }
                document.getElementById('frameDel3').src = 'Edificios/prcBorrarEdificios.jsp?MDLG=' + habSel;

            }

            function mostrarH1111() {
                var itemsSeleccionadas = new String();
                itemsSeleccionadas = jQuery("#list9999").jqGrid('getGridParam', 'selarrrow');
                var habSel = new String();
                var habi = new Array();
                habi = itemsSeleccionadas;
                for (i = 0; i < habi.length; i++) {
                    habSel = habSel + jQuery("#list9999").jqGrid('getCell', habi[i], '1') + ';';
                }
                document.getElementById('frameDel4').src = 'Rural/prcValidarRural.jsp?MDLG=' + habSel;

            }

            function borrarH1111() {
                var itemsSeleccionadas = new String();
                itemsSeleccionadas = jQuery("#list9999").jqGrid('getGridParam', 'selarrrow');
                var habSel = new String();
                var habi = new Array();
                habi = itemsSeleccionadas;
                for (i = 0; i < habi.length; i++) {
                    habSel = habSel + jQuery("#list9999").jqGrid('getCell', habi[i], '1') + ';';
                }
                document.getElementById('frameDel4').src = 'Rural/prcBorrarRural.jsp?MDLG=' + habSel;

            }


        </script>
        <script>

            function evento() {

                window.location.href = "../Administrador.jsp";
            }
        </script>


        <style type="text/css">
            #apDiv1 {
                background-color:white;
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

        <div class="main">
            <!--==============================header=================================-->
            <header>
                <div>
                    <h1><a href="../../home.jsp"><img src="../../sitio/images/logo.jpg" alt=""></a></h1>
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
                                <li><img src="../../sitio/images/slider-3-small.jpg" alt="" /></li>
                            </ul>
                        </div>	
                        <a href="#" class="prev"></a><a href="#" class="next"></a>
                    </div>
                    <nav>
                        <ul class="menu">
                            <li><a href="../ArrendamientosVentas/frmArrendamientosVentas.jsp">Financiera</a></li>
                            <li><a href="../GestionarPrioridadInmueble/GestionarPrioridad.jsp" >Prioridad</a></li>
                            <li><a href="../ingresarInmuebles/frmSeleccionInmueble.jsp" >Inmuebles</a></li>
                            <li><a class="current" href="../IngresarClientes/frmRegistrarCliente.jsp" >Clientes</a></li> 
                            <li><a href="../SubirArchivos/cargarArchivo.jsp">Archivos</a></li>
                            <li><a href="#">Reportes</a></li>
                        </ul>
                    </nav>
                </div>
            </header>   

        </div>  
        <script>
            Cufon.now();
        </script>  


        <footer>
            <div id="tabs">
                <ul>
                    <li><a href="#tabs-1">Comercial</a></li>
                    <li><a href="#tabs-2">Residencial </a></li>

                    <li><a href="#tabs-3">Edificios</a></li>
                    <li><a href="#tabs-4">Rural</a></li>
                    <li><a href="#tabs-5">Lotes</a></li>
                </ul>


                <div id="tabs-1" >


                    <table id="list9"></table>
                    <div id="pager9"></div><br/>

                    <input type="submit" onclick="mostrarH1()" border="10" style="border: #000 1px solid; background-color: #2e6e9e" value="Dar de Alta"/> <input type="button" style="border: #000 1px solid; background-color: #2e6e9e " onclick="borrarH1()" value="Borrar"/>


                    <center>
                        <iframe id="frameDel" name="frameDel" width="1000" height="500" frameborder="0"></iframe>
                    </center>

                </div>


                <!--tab2-->         
                <div id="tabs-2">



                    <table id="list99"></table>
                    <div id="pager99"></div><br/>
                    <input type="submit" onclick="mostrarH11()" style="border: #000 1px solid; background-color: #2e6e9e" value="Seleccionar"/> <input type="button" style="border: #000 1px solid; background-color: #2e6e9e" onclick="borrarH11()" value="Borrar"/>


                    <center>
                        <iframe id="frameDel2" name="frameDel2" width="1000" height="500" frameborder="0"></iframe>
                    </center>

                </div>



                <div id="tabs-3">

                    <table id="list999"></table>
                    <div id="pager999"></div><br/>
                    <input type="submit" onclick="mostrarH111()" style="border: #000 1px solid; background-color: #2e6e9e" value="Seleccionar"/> <input type="button" style="border: #000 1px solid; background-color: #2e6e9e" onclick="borrarH111()" value="Borrar"/>


                    <center>
                        <iframe id="frameDel3" name="frameDel3" width="1000" height="500" frameborder="0"></iframe>
                    </center>


                </div>

                <div id="tabs-4">
                    <table id="list9999"></table>
                    <div id="pager9999"></div><br/>
                    <input type="submit" onclick="mostrarH1111()" style="border: #000 1px solid; background-color: #2e6e9e" value="Seleccionar"/> <input type="button" style="border: #000 1px solid; background-color: #2e6e9e" onclick="borrarH1111()" value="Borrar"/>


                    <center>
                        <iframe id="frameDel4" name="frameDel4" width="1000" height="500" frameborder="0"></iframe>
                    </center>

                </div>
            </div>

        </footer>

        <footer>
            <img src="../../sitio/images/LogoQS.JPG" width="120" height="90">
            <p>© 2013 Quality Solutions</p>
        </footer>

        <script>
            Cufon.now();
        </script>

    </body>


</html>
