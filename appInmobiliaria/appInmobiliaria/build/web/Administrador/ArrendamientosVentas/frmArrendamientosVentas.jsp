<%-- 
    Document   : frmArrendamientosVentas
    Created on : 21/04/2013, 03:58:44 PM
    Author     : Usuariio
--%>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Formulario Ventas y Arrendamientos</title>
        <link rel="stylesheet" href="../js/tabs/jquery-ui.css" />
        <script src="../js/tabs/jquery-1.9.1.js"></script>
        <script src="../js/tabs/jquery-ui.js"></script>
        <link rel="stylesheet" href="../js/tabs/style.css" />


        <link rel="stylesheet" type="text/css" media="screen" href="../js/mio/themes/jquery-ui-custom.css" />
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
                        {name:'codigo',index:'codigo', width:150, sortable:false,align:"center"},
                        {name:'codArrendador',index:'codArrendador', width:100, align:"center"},
                        {name:'codArrendatario',index:'codArrendatario', width:100,align:"center"},
                        {name:'descripcion',index:'descripcion', width:100,align:"center"},
                        {name:'fecha',index:'fecha', width:100,align:"center"},
                        {name:'codInmueble',index:'codInmueble', width:100,align:"center"},
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
                    colNames:['Codigo','Codigo Arrendador', 'Codigo Arrendatario', 'Descripcion', 'Fecha','Codigo Inmueble', 'Valor', 'Comision','Duracion' ],
                    colModel:[
                        {name:'codigo',index:'codigo', width:150, sortable:false,align:"center"},
                        {name:'codArrendador',index:'codArrendador', width:100, align:"center"},
                        {name:'codArrendatario',index:'codArrendatario', width:100,align:"center"},
                        {name:'descripcion',index:'descripcion', width:100,align:"center"},
                        {name:'fecha',index:'fecha', width:100,align:"center"},
                        {name:'codInmueble',index:'codInmueble', width:100,align:"center"},
                        {name:'valor',index:'valor', width:100,align:"center"},
                        {name:'comision',index:'comision', width:100,align:"center"},
                        {name:'duracion',index:'duracion', width:100,align:"center"}
                             
                    ],
                    rowNum:10,
                    rowList:[10,20,30],
                    pager: '#pager99',
                    sortname: 'item',
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

    </head>
    <body>
        <p align="right"><input  type="submit" value="Regresar a la pagina Principal" onclick="evento();">
        <div id="tabs">
            <ul>
                <li><a href="#tabs-1">Registrar Venta</a></li>
                <li><a href="#tabs-2">Registrar Arrendamiento</a></li>

                <li><a href="#tabs-3">Consultar Arrendamientos</a></li>
                <li><a href="#tabs-4">Consultar Ventas</a></li>
            </ul>
            
            
            <div style="background: rgb(39,39,39); border:transparent;" id="tabs-1" >


                <div style="background: #333; border:transparent;" id="container" class="ltr">





                    <header style="border: transparent" id="header" class="info">
                        <h2><font color="white">Completa los datos del formulario:</font></h2>
                        <div></div>
                    </header>

                    <form id="form55" action="registrarPromesaCompraventa.jsp" target="iframe1" onload="this">
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Datos Vendedor:</font></span></p></h3> 
                        <table align="left" border="0" >
                            <td  width="255"> <font color="white" width="210">Codigo Vendedor:</font></td>
                        <td>
                            <input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="codVendedor" value="" required /></td>

                        </table>
                        </fieldset>
                        <br><br>
                        
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Datos Comprador:</font></span></p></h3> 
                        <table align=?center? border="0" >
                           <td  width="255"> <font color="white"  width="210">Codigo Comprador:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="codComprador" value="" onsubmit="this.value=''" required /></td>
                        
                        
                        </table></fieldset>
                        <br><br>
                        
                        
                        


                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Datos Inmueble:</font></span></p></h3> 
                       <table align=?center? border="0" >
                           <td width="255"><font color="white">Codigo Inmueble:</font></td>
                           <td>
                               <input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="codInmueble" value="" required /></td>

                        </td>
                        <tr>


                        <td width="210"><font color="white">Fecha Creacion Escritura Publica:</font> </td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="fechaEscritura" value="" required /></td>
                        <tr>
                        <td width="255"><font color="white">Numero Escritura Publica:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="numEscritura" value="" required /></td>
                        <tr>
                        <td width="210"><font color="white">Numero Notaria:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="numNotaria" value="" required /></td>
                        <tr>
                        <td width="210"><font color="white">Ciudad:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px "  type="text" name="ciuNotaria" value="" required /></td>
                        
                       </table></fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Valor Venta Inmueble:</font></span></p></h3> 
                        <table align=?center? border="0" >
                        <td width="255"><font color="white">cantidad venta:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="cantVenta" value="" required /></td>
                        <tr>
                        <td width="255"><font color="white">cifra:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="cifVenta" value="" required /></td>
                        
                        </table></fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Porcentaje Ganancia Inmobiliaria:</font></span></p></h3>
                        <table align=?center? border="0" >
                           <td width="255"><font color="white">Porcentaje Ganado:</font></td>
                            <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="porcGanado" value="" required /></td>
                        
                        </table></fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Datos Creacion Nueva Escritura:</font></span></p></h3>
                        <table align=?center? border="0" >
                            <td width="255"><font color="white">Dia:</font></td>
                            <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="diaNueEsc" value="" required /></td>
                            <tr>
                            <td width="255"><font color="white">Mes:</font></td>
                            <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="mesNueEsc" value="" required /></td>
                            <tr>
                            <td width="255"><font color="white">Año:</font</td>
                            <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="anoNueEsc" value="" required /></td>
                            <tr>
                            <td width="255"><font color="white">Hora:</font></td>
                            <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="hora" value="" required /></td>
                            <tr>
                            <td width="255"><font color="white">Numero Notaria:</font></td>
                            <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="nombreNotaria" value="" required /></td>                       
                            <tr>
                            <td width="255"><font color="white">Ciudad:</font></td>
                            <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="ciuNueEsc" value="" required /></td>
                        </table></fieldset>
                        <br><br>
                        
                        
                            
                        <fieldset>
                            <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Datos Constancia Documento:</font></span></p></h3>
                            
                            <table align=?center? border="0" >
                        <td width="255"><font color="white">Ciudad Firma Documento:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="ciuFirma" value="" required /></td>
                        <tr>
                        <td width="255"><font color="white">Dia firma Documento:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="diaFirma" value="" required /></td>
                        <tr>
                        <td width="255"><font color="white">mes Firma Documento:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="mesFirma" value="" required /></td>
                        <tr>
                        <td width="255"><font color="white">año Firma Documento:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px" type="text" name="anoFirma" value="" required /></td>
                        </table></fieldset>
                        <br><br>
                        

                        <p align="center"><input  type="submit" value="Registrar Datos"  >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<INPUT TYPE="reset" VALUE=" Borrar Campos "></p>

                        <center><iframe name="iframe1" width="320" height="150" scrolling="no" frameborder="0"></iframe></center>
                    </form> 



                </div><!--container-->

            </div>
            
            
   <!--tab2-->         
            <div style="background: rgb(39,39,39); border:transparent;"  id="tabs-2">

                <div style="background: #333; border:transparent;" id="container" class="ltr">





                    <header style="border: transparent" id="header" class="info">
                        <h2><font color="white">Completa los datos del formulario:</font></h2>
                        <div></div>
                    </header>

                    <form id="form56"  action="registrarContratoArrendamiento.jsp" target="iframe2" >
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Datos Arrendador:</font></span></p></h3> 
                        
                         <table align="left" border="0" >
                             <td width="255"><font color="white">Codigo Arrendador:</font></td>
                             <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px "  type="text" name="codArrendador" value="" required /></td>

                        
                         </table>
                        </fieldset>
                        <br><br>
                        
                        <fieldset>
                             
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Datos Arrendatario:</font></span></p></h3> 
                        <table align="left" border="0" >
                        <td width="255"><label for="Salas" id="combo"><font color="white">Nombre Comprador:</label></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px "  type="text" name="codArrendatario" value="" required /></td>
                             </table>
                        </fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Datos Inmueble:</font></span></p></h3> 
                         <table align="left" border="0" >
                        <td width="255"><label for="Salas" id="combo"><font color="white">Codigo Inmueble:</label></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px "  type="text" name="codInmueble" value="" required /></td>


                        
                         </table>
                        </fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Duracion Contrato:</font></span></p></h3> 
                         <table align="left" border="0" >
                        <td width="255"><font color="white">cantidad de Meses:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px "  type="text" name="cantidadMeses" value="" required /></td>
                        <tr>
                        <td width="255"><font color="white">fecha inicio:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="fechaIni" value="" required /></td>
                         </table>
                        </fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Precio Arrendamiento:</font></span></p></h3>
                         <table align="left" border="0" >
                        <td width="255"><font color="white">Cantidad Arrendamiento:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px "  type="text" name="cantArrendamiento" value="" required /></td>
                        <tr>
                        <td width="255"><font color="white">Cifra:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="cifra" value="" required /></td>
                        <tr>
                        <td width="255"><font color="white">Dias plazo:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px "  type="text" name="diasPlazo" value="" required /></td>
                         </table>
                        </fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Porcentaje Ganancia Inmobiliaria:</font></span></p></h3>
                         <table align="left" border="0" >
                             <td width="255"><font color="white">Porcentaje Ganado:</font></td>
                             <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px " type="text" name="porcGanado" value="" required /></td>
                         </table>
                        </fieldset>
                        <br><br>
                        
                        <fieldset>
                        <h3><span style="color: #2e6e9e;" > <p align="center"><font color="white">Datos Constancia Documento:</font></span></p></h3>
                         <table align="left" border="0" >
                        <td width="255"><font color="white">Ciudad Firma Documento:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px "  type="text" name="ciuFirma" value="" required /></td>
                        <tr>
                        <td width="255"><font color="white">Dia firma Documento:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px "  type="text" name="diaFirma" value="" required /></td>
                        <tr>
                        <td width="255"><font color="white">mes Firma Documento:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px "  type="text" name="mesFirma" value="" required /></td>
                        <tr>
                        <td width="255"><font color="white">año Firma Documento:</font></td>
                        <td><input style="background-color:rgb(19,19,19); color: rgb(83,83,83); border:transparent ;font:14px "  type="text" name="anoFirma" value="" required  /></td>
                        </table>
                        </fieldset>
                        <br><br>
                        
                        <p align="center"><input  type="submit" value="Registrar Datos"  >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<INPUT TYPE="reset" VALUE=" Borrar Campos "></p>

                        <center><iframe name="iframe2" width="320" height="150" scrolling="no" frameborder="0"></iframe></center>
                    </form> 


                </div><!--container-->

            </div>
   
   
   
            <div style="background: rgb(39,39,39); border:transparent;" id="tabs-3">

                <center>
                    <table id="list9"></table>
                    <div id="pager9"></div><br/>




                    <input type="submit" onclick="mostrarH1()" value="Seleccionar"/> <input type="button" onclick="refresh()" value="Actualizar"/>

                </center>
                <center>
                    <iframe id="frameDel" name="frameDel" width="1000" height="500" frameborder="0"></iframe>
                </center>
            </div>

            <div style="background: rgb(39,39,39); border:transparent;" id="tabs-4">

                <center>
                    <table id="list99"></table>
                    <div id="pager99"></div><br/>




                    <input type="submit" onclick="mostrarH11()" value="Seleccionar"/> <input type="button" onclick="refresh()" value="Actualizar"/>

                </center>
                <center>
                    <iframe id="frameDel2" name="frameDel2" width="1000" height="500" frameborder="0"></iframe>
                </center>

            </div>
        </div>


    </body>
</html>
