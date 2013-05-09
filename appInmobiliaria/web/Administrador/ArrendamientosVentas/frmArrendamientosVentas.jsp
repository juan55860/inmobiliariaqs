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
                $( "#tabs" ).tabs();
            });
        </script>

        <script type="text/javascript">
            $.jgrid.no_legacy_api = true;
            $.jgrid.useJSON = true;
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

            function grid(){
                var t = new String();var f = new String();
                t='tipo'; //document.getElementById('id_tipo_hab').value;
                f='';//$('#widgetField').get(0).innerHTML;
                //alert(t);alert(f);
                jQuery("#list9").empty();
                jQuery("#list9").jqGrid({
                    url:'rCargarArrendamientos.jsp'  ,

                    datatype: "json",
                    mtype: 'GET',
                    colNames:['Codigo','Codigo Arrendador', 'Codigo Arrendatario', 'Descripcion', 'Fecha','Codigo Inmueble', 'Valor', 'Comision','Duracion' ],
                    colModel:[
                        {name:'codigo',index:'codigo', width:70, sortable:false,align:"center"},
                        {name:'codArrendador',index:'codArrendador', width:160, align:"center"},
                        {name:'codArrendatario',index:'codArrendatario', width:170,align:"center"},
                        {name:'descripcion',index:'descripcion', width:110,align:"center"},
                        {name:'fecha',index:'fecha', width:95,align:"center"},
                        {name:'codInmueble',index:'codInmueble', width:140,align:"center"},
                        {name:'valor',index:'valor', width:100,align:"center"},
                        {name:'comision',index:'comision', width:100,align:"center"},
                        {name:'duracion',index:'duracion', width:100,align:"center"}
                             
                    ],
                    rowNum:10,
                    rowList:[10,20,30],
                    pager: '#pager9',
                    sortname: 'item',
                    recordpos: 'left',
                    viewrecords: true,
                    sortorder: "desc",
                    multiselect: true,
                    caption: "Seleccione " });

                jQuery("#list9").jqGrid('navGrid','#pager9',{add:false,del:false,edit:false,position:'right'});

                jQuery("#m1").click( function() {
                    s = jQuery("#list9").jqGrid('getGridParam','selarrrow');
                    alert(s);
                });

                jQuery("#m1s").click( function() { jQuery("#list9").jqGrid('setSelection',"13"); });
            }
                
                
            function grid2(){
                var t = new String();var f = new String();
                t='tipo'; //document.getElementById('id_tipo_hab').value;
                f='';//$('#widgetField').get(0).innerHTML;
                //alert(t);alert(f);
                jQuery("#list99").empty();
                jQuery("#list99").jqGrid({
                    url:'rCargarVentas.jsp'  ,

                    datatype: "json",
                    mtype: 'GET',
                    colNames:['Codigo','Codigo Vendedor', 'Codigo Comprador', 'Descripcion', 'Fecha','Codigo Inmueble', 'Valor', 'Comision','Duracion' ],
                    colModel:[
                        {name:'codigo',index:'codigo', width:70, sortable:false,align:"center"},
                        {name:'codArrendador',index:'codArrendador', width:150, align:"center"},
                        {name:'codArrendatario',index:'codArrendatario', width:160,align:"center"},
                        {name:'descripcion',index:'descripcion', width:100,align:"center"},
                        {name:'fecha',index:'fecha', width:100,align:"center"},
                        {name:'codInmueble',index:'codInmueble', width:140,align:"center"},
                        {name:'valor',index:'valor', width:100,align:"center"},
                        {name:'comision',index:'comision', width:100,align:"center"},
                        {name:'duracion',index:'duracion', width:100,align:"center"}
                             
                    ],
                    rowNum:10,
                    rowList:[10,20,30],
                    pager: '#pager99',
                    sortname: 'codigo',
                    recordpos: 'left',
                    viewrecords: true,
                    sortorder: "desc",
                    multiselect: true,
                    caption: "Seleccione " });

                jQuery("#list99").jqGrid('navGrid','#pager99',{add:false,del:false,edit:false,position:'right'});

                jQuery("#m1").click( function() {
                    s = jQuery("#list99").jqGrid('getGridParam','selarrrow');
                    alert(s);
                });

                jQuery("#m1s").click( function() { jQuery("#list99").jqGrid('setSelection',"13"); });
            }


            function mostrarH(){
                var itemsSeleccionadas = new String();
                itemsSeleccionadas = jQuery("#list9").jqGrid('getGridParam','selarrrow');
                var habSel = new String();
                var habi = new Array();
                habi = itemsSeleccionadas;
                for (i=0; i<habi.length; i++){
                    habSel = habSel+jQuery("#list9").jqGrid('getCell',habi[i], '1')+';';
                }
                var f = new String();
                f=document.getElementById('fecha').value;
                document.getElementById('frameDel').src='newjsp3.jsp?MDLG='+habSel;

            }


            function mostrarH1(){
                var itemsSeleccionadas = new String();
                itemsSeleccionadas = jQuery("#list9").jqGrid('getGridParam','selarrrow');
                var habSel = new String();
                var habi = new Array();
                habi = itemsSeleccionadas;
                for (i=0; i<habi.length; i++){
                    habSel = habSel+jQuery("#list9").jqGrid('getCell',habi[i], '1')+';';
                }
                document.getElementById('frameDel').src='frmOpcionSeleccionada.jsp?MDLG='+habSel;

            }
    
            function mostrarH11(){
                var itemsSeleccionadas = new String();
                itemsSeleccionadas = jQuery("#list99").jqGrid('getGridParam','selarrrow');
                var habSel = new String();
                var habi = new Array();
                habi = itemsSeleccionadas;
                for (i=0; i<habi.length; i++){
                    habSel = habSel+jQuery("#list99").jqGrid('getCell',habi[i], '1')+';';
                }
                document.getElementById('frameDel2').src='frmOpcionSeleccionada.jsp?MDLG='+habSel;

            }




        </script>
        <script>
      
            function evento(){
                
                window.location.href= "../Administrador.jsp";
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
                    <h1><a href="../index.jsp"><img src="../../sitio/images/logo.jpg" alt=""></a></h1>
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
                            <li><a href="../GestionarPrioridadInmueble/grdSeries.jsp">Prioridad</a></li>
                            <li><a href="../ingresarInmuebles/frmRegistrarInmueble.jsp" >Inmuebles</a></li>
                            <li><a href="../IngresarClientes/frmRegistrarCliente.jsp">Clientes</a></li> 
                            <li><a href="../SubirArchivos/cargarArchivo.jsp" target="frdirect">Archivos</a></li>

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
                <li><a href="#tabs-1">Registrar Venta</a></li>
                <li><a href="#tabs-2">Registrar Arrendamiento</a></li>

                <li><a href="#tabs-3">Consultar Arrendamientos</a></li>
                <li><a href="#tabs-4">Consultar Ventas</a></li>
            </ul>
            
            
            <div id="tabs-1" >


                <div id="container" class="ltr">





                    <header id="header" class="info">
                        <h3>Completa los datos del formulario:</h3>
                        <div></div>
                    </header>

                    <form id="form55" action="registrarPromesaCompraventa.jsp" target="iframe1" onload="this">
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e"> Datos Vendedor:</font></span></p></h3><br> 
                        <table align="left" border="0" >
                            <td  width="255"> <font color="black" width="500">Codigo Vendedor:</font></td>
                        <td>
                            <input type="text" name="codVendedor" style="background-color: black; color: white; border:5 "  value="" required /></td>

                        </table>
                        </fieldset>
                        <br><br>
                        
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Datos Comprador:</font></span></p></h3><br> 
                        <table align=?center? border="0" >
                           <td  width="255"> <font color="black"  width="210">Codigo Comprador:</font></td>
                        <td><input type="text" name="codComprador" style="background-color: black; color: white; border:5 " value="" onsubmit="this.value=''" required /></td>
                        
                        
                        </table></fieldset>
                        <br><br>
                        
                        
                        


                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Datos Inmueble:</font></span></p></h3><br> 
                       <table align=?center? border="0" >
                           <td width="255"><font color="black">Codigo Inmueble:</font></td>
                           <td>
                               <input type="text" name="codInmueble" style="background-color: black; color: white; border:5 " value="" required /></td>

                        </td>
                        <tr>


                        <td width="210"><font color="black">Fecha Creacion Escritura Publica:</font> </td>
                        <td><input type="text" name="fechaEscritura"  style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                            <td width="255"><font color="black">Numero Escritura Publica:</font></td>
                        <td><input type="text" name="numEscritura" style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                        <td width="210"><font color="black">Numero Notaria:</font></td>
                        <td><input type="text" name="numNotaria" style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                        <td width="210"><font color="black">Ciudad:</font></td>
                        <td><input type="text" name="ciuNotaria" style="background-color: black; color: white; border:5 " value="" required /></td>
                        
                       </table></fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Valor Venta Inmueble:</font></span></p></h3><br> 
                        <table align=?center? border="0" >
                        <td width="255"><font color="black">cantidad venta:</font></td>
                        <td><input type="text" name="cantVenta" style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                        <td width="255"><font color="black">Cifra:</td>
                        <td><input type="text" name="cifVenta" style="background-color: black; color: white; border:5 " value="" required /></td>
                        
                        </table></fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Porcentaje Ganancia Inmobiliaria:</font></span></p></h3><br>
                        <table align=?center? border="0" >
                           <td width="255"><font color="black">Porcentaje Ganado:</font></td>
                            <td><input type="text" name="porcGanado" style="background-color: black; color: white; border:5 " value="" required /></td>
                        
                        </table></fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Datos Creacion Nueva Escritura:</font></span></p></h3><br>
                        <table align=?center? border="0" >
                            <td width="255"><font color="black">Dia:</font></td>
                            <td><input type="text" name="diaNueEsc" style="background-color: black; color: white; border:5 " value="" required /></td>
                            <tr>
                            <td width="255"><font color="black">Mes:</font></td>
                            <td><input type="text" name="mesNueEsc" style="background-color: black; color: white; border:5 " value="" required /></td>
                            <tr>
                            <td width="255"><font color="black">Año:</font</td>
                            <td><input type="text" name="anoNueEsc" style="background-color: black; color: white; border:5 " value="" required /></td>
                            <tr>
                            <td width="255"><font color="black">Hora:</font></td>
                            <td><input type="text" name="hora" style="background-color: black; color: white; border:5 " value="" required /></td>
                            <tr>
                            <td width="255"><font color="black">Numero Notaria:</font></td>
                            <td><input type="text" name="nombreNotaria" style="background-color: black; color: white; border:5 " value="" required /></td>                       
                            <tr>
                            <td width="255"><font color="black">Ciudad:</font></td>
                            <td><input type="text" name="ciuNueEsc" style="background-color: black; color: white; border:5 " value="" required /></td>
                        </table></fieldset>
                        <br><br>
                        
                        
                            
                        <fieldset>
                            <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Datos Constancia Documento:</font></span></p></h3><br>
                            
                            <table align=?center? border="0" >
                        <td width="255"><font color="black">Ciudad Firma Documento:</font></td>
                        <td><input type="text" name="ciuFirma" style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                        <td width="255"><font color="black">Dia firma Documento:</font></td>
                        <td><input type="text" name="diaFirma" style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                        <td width="255"><font color="black">mes Firma Documento:</font></td>
                        <td><input type="text" name="mesFirma" style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                        <td width="255"><font color="black">año Firma Documento:</font></td>
                        <td><input type="text" name="anoFirma" style="background-color: black; color: white; border:5 " value="" required /></td>
                        </table></fieldset>
                        <br><br>
                        

                        <p align="center"><input  type="submit"  style="border: #000 1px solid;   background-color: #2e6e9e" value="Registrar Datos"  >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<INPUT TYPE="reset" style="border: #000 1px solid; background-color: #2e6e9e" VALUE=" Borrar Campos "></p>

                        <center><iframe name="iframe1" width="320" height="150" scrolling="no" frameborder="0"></iframe></center>
                    </form> 



                </div><!--container-->

            </div>
            
            
   <!--tab2-->         
            <div id="tabs-2">

                <div id="container" class="ltr">





                    <header id="header" class="info">
                        <h2><font color="black">Completa los datos del formulario:</font></h2>
                        <div></div>
                    </header>

                    <form id="form56"  action="registrarContratoArrendamiento.jsp" target="iframe2" >
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Datos Arrendador:</font></span></p></h3><br> 
                        
                         <table align="left" border="0" >
                             <td width="255"><font color="black">Codigo Arrendador:</font></td>
                             <td><input type="text" name="codArrendador" style="background-color: black; color: white; border:5 " value="" required /></td>

                        
                         </table>
                        </fieldset>
                        <br><br>
                        
                        <fieldset>
                             
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Datos Arrendatario:</font></span></p></h3><br> 
                        <table align="left" border="0" >
                        <td width="255"><label for="Salas" id="combo"><font color="black">Nombre Comprador:</label></td>
                        <td><input type="text" name="codArrendatario" style="background-color: black; color: white; border:5 " value="" required /></td>
                             </table>
                        </fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Datos Inmueble:</font></span></p></h3><br> 
                         <table align="left" border="0" >
                        <td width="255"><label for="Salas" id="combo"><font color="black">Codigo Inmueble:</label></td>
                        <td><input type="text" name="codInmueble" style="background-color: black; color: white; border:5 " value="" required /></td>


                        
                         </table>
                        </fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Duracion Contrato:</font></span></p></h3><br> 
                         <table align="left" border="0" >
                        <td width="255"><font color="black">cantidad de Meses:</font></td>
                        <td><input ype="text" name="cantidadMeses" style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                        <td width="255"><font color="black">fecha inicio:</font></td>
                        <td><input type="text" name="fechaIni" style="background-color: black; color: white; border:5 " value="" required /></td>
                         </table>
                        </fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Precio Arrendamiento:</font></span></p></h3><br>
                         <table align="left" border="0" >
                        <td width="255"><font color="black">Cantidad Arrendamiento:</font></td>
                        <td><input type="text" name="cantArrendamiento" style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                        <td width="255"><font color="black">Cifra:</font></td>
                        <td><input type="text" name="cifra" style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                        <td width="255"><font color="black">Dias plazo:</font></td>
                        <td><input type="text" name="diasPlazo" style="background-color: black; color: white; border:5 " value="" required /></td>
                         </table>
                        </fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Porcentaje Ganancia Inmobiliaria:</font></span></p></h3><br>
                         <table align="left" border="0" >
                             <td width="255"><font color="black">Porcentaje Ganado:</font></td>
                             <td><input type="text" name="porcGanado" style="background-color: black; color: white; border:5 " value="" required /></td>
                         </table>
                        </fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="#2e6e9e">Datos Constancia Documento:</font></span></p></h3><br>
                         <table align="left" border="0" >
                        <td width="255"><font color="black">Ciudad Firma Documento:</font></td>
                        <td><input type="text" name="ciuFirma" style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                        <td width="255"><font color="black">Dia firma Documento:</font></td>
                        <td><input type="text" name="diaFirma" style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                        <td width="255"><font color="black">mes Firma Documento:</font></td>
                        <td><input type="text" name="mesFirma" style="background-color: black; color: white; border:5 " value="" required /></td>
                        <tr>
                        <td width="255"><font color="black">año Firma Documento:</font></td>
                        <td><input type="text" name="anoFirma" style="background-color: black; color: white; border:5 " value="" required  /></td>
                        </table>
                        </fieldset>
                        <br><br>
                        
                        <p align="center"><input  type="submit" style="border: #000 1px solid; background-color: #2e6e9e" value="Registrar Datos"  >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<INPUT TYPE="reset" style="border: #000 1px solid; background-color: #2e6e9e" VALUE=" Borrar Campos "></p>

                        <center><iframe name="iframe2" width="320" height="150" scrolling="no" frameborder="0"></iframe></center>
                    </form> 


                </div><!--container-->

            </div>
   
   
   
            <div id="tabs-3">

                <center>
                    <table id="list9"></table>
                    <div id="pager9"></div><br/>




                    <input type="submit" onclick="mostrarH1()" border="10" style="border: #000 1px solid; background-color: #2e6e9e" value="Seleccionar"/> <input type="button" style="border: #000 1px solid; background-color: #2e6e9e " onclick="refresh()" value="Actualizar"/>

                </center>
                <center>
                    <iframe id="frameDel" name="frameDel" width="1000" height="500" frameborder="0"></iframe>
                </center>
            </div>

            <div id="tabs-4">

                <center>
                    <table id="list99"></table>
                    <div id="pager99"></div><br/>




                    <input type="submit" onclick="mostrarH11()" style="border: #000 1px solid; background-color: #2e6e9e" value="Seleccionar"/> <input type="button" style="border: #000 1px solid; background-color: #2e6e9e" onclick="refresh()" value="Actualizar"/>

                </center>
                <center>
                    <iframe id="frameDel2" name="frameDel2" width="1000" height="500" frameborder="0"></iframe>
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
