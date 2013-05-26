<%-- 
    Document   : Administrador2
    Created on : 22/04/2013, 10:41:42 PM
    Author     : Camilo
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
        <link rel="stylesheet" type="text/css" media="screen" href="css/jquery-ui-1.8.1.custom.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="css/ui.jqgrid.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="css/ui.multiselect.css" />
        <script src="js/jqGrid/jquery.js" type="text/javascript"></script>
        <script src="js/jqGrid/jquery-ui-1.8.1.custom.min.js" type="text/javascript"></script>
        <script src="js/jqGrid/jquery.layout.js" type="text/javascript"></script>
        <script src="js/jqGrid/grid.locale-en.js" type="text/javascript"></script>
        <script src="js/jqGrid/ui.multiselect.js" type="text/javascript"></script>
        <script src="js/jqGrid/jquery.jqGrid.min.js" type="text/javascript"></script>
        <script src="js/jqGrid/jquery.tablednd.js" type="text/javascript"></script>
        <script src="js/jqGrid/jquery.contextmenu.js" type="text/javascript"></script>
        <script type="text/javascript">
            $.jgrid.no_legacy_api = true;
            $.jgrid.useJSON = true;
        </script>
        
        
        <script>
            function evento() {

                window.location.href = "../Administrador.jsp";
            }
        </script>
        <script type="text/javascript">


var s = new String();


            $(document).ready(function(){

                grid();

            });
        
            $(document).ready(function(){

                grid2();

            });
            
            $(document).ready(function(){

                slid();

            });
            
            
            function grid() {
                jQuery("#toolbar").jqGrid({url: 'getJSONSerie.jsp',
                    datatype: "json",
                    jsonReader: {repeatitems: true,
                        subgrid: {repeatitems: false}
                    },
                    height: 255,
                    width: 600,
                    viewrecords: true,
                    colNames: ['codigo','precio','direccion','estrato','cod_propietario','prioridad', 'area', 'descripcion', 'estado'],
                    colModel: [{name: 'codigo', index: 'codigo', width: 65, editable: true},
                        {name: 'precio', index: 'precio', width: 150, editable: true},
                        {name: 'direccion', index: 'direccion', width: 150, editable: true},
                        {name: 'estrato', index: 'estrato', width: 150, editable: true},
                        {name: 'cod_propietario', index: 'cod_propietario', width: 150, editable: true},
                        {name: 'prioridad', index: 'prioridad', width: 150, editable: true},
                        {name: 'area', index: 'area', width: 150, editable: true},
                        {name: 'descripcion', index: 'descripcion', width: 150, editable: true},
                        {name: 'estado', index: 'estado', width: 150, editable: true}
                        
                    ],
                    rowNum: 50, rowTotal: 2000, rowList: [20, 30, 50],
                    mtype: "GET",
                    rownumbers: true, rownumWidth: 40,
                    multiselect: true,
                    gridview: true, pager: '#ptoolbar',
                    editurl: "admSerie.jsp",
                    sortname: 'item_id', viewrecords: true,
                            sortorder: "asc", caption: "Documentos",
                    "loadError": function(xhr, status, err) {
                        try {
                            jQuery.jgrid.info_dialog(jQuery.jgrid.errors.errcap, '<div class="ui-state-error">' + xhr.responseText
                                    + '</div>',
                                    jQuery.jgrid.edit.bClose, {buttonalign: 'right'});
                        } catch (e) {
                            alert(xhr.responseText);
                        }
                    },
                    pager:"#ptoolbar"
                });
                jQuery('#toolbar').jqGrid('navGrid', '#ptoolbar',
                        {"edit": true, "add": true, "del": true, "search": true, "view": true,
                            "excel": true, "pdf": true, "csv": true, "columns": true, reloadAfterSubmit: true
                        },
                {
                    modal: true,
                    recreateForm: true,
                    editCaption: "Agregar",
                    saveData: "Los datos han cambiado! Desea Guardarloa?",
                    bYes: "Si",
                    bNo: "No",
                    bExit: "Cancelar",
                    drag: true,
                    resize: true,
                    closeOnEscape: true,
                    jqModal: false,
                    dataheight: 150,
                    reloadAfterSubmit: true,
                    closeAfterAdd: true,
                    reloadAfterSubmit:false,
                            errorTextFormat: function(r) {
                        return r.responseText;
                    },
                    "width": 350
                },
                {
                    modal: true,
                    recreateForm: true,
                    editCaption: "Editar",
                    saveData: "Los datos han cambiado! Desea Guardar?",
                    bYes: "Si",
                    bNo: "No",
                    bExit: "Cancelar",
                    drag: true,
                    resize: true,
                    closeOnEscape: true,
                    dataheight: 150,
                    closeAfterEdit: true, reloadAfterSubmit: false,
                    errorTextFormat: function(r) {
                        return r.responseText;
                    }
                },
                {
                    modal: true,
                    recreateForm: true,
                    closeOnEscape: true,
                    reloadAfterSubmit: false,
                    errorTextFormat: function(r) {

                        return r.responseText;
                    }
                }
                );


        
                

            }
            
            function slid(){
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

        </script>


    <style type="text/css">
    body,td,th {
	color: #000;
}
body {
	background-color:rgb(255,255,255);
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






  <footer>
      
            <fieldset>
                        
                <center>  <table id="toolbar"></table></center>
        <div id="ptoolbar" ></div>
            </fieldset>
      
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
