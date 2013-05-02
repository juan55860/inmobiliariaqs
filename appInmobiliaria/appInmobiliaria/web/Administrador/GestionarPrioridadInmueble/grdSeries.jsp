<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Documentos</title>
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

            jQuery(document).ready(function() {
                jQuery("#toolbar").jqGrid({url: 'getJSONSerie.jsp',
                    datatype: "json",
                    jsonReader: {repeatitems: true,
                        subgrid: {repeatitems: false}
                    },
                    height: 255,
                    width: 600,
                    viewrecords: true,
                    colNames: ['codigo', 'codigotipoinmueble', 'precio', 'barrio', 'direccion', 'codigopropietario', 'prioridad', 'estadocheck', 'longitud', 'numhabitaciones'],
                    colModel: [{name: 'codigo', index: 'codigo', width: 65, editable: true},
                        {name: 'codigotipoinmueble', index: 'codigotipoinmueble', width: 150, editable: true},
                        {name: 'precio', index: 'precio', width: 150, editable: true},
                        {name: 'barrio', index: 'barrio', width: 150, editable: true},
                        {name: 'direccion', index: 'direccion', width: 150, editable: true},
                        {name: 'codigopropietario', index: 'codigopropietario', width: 150, editable: true},
                        {name: 'prioridad', index: 'prioridad', width: 150, editable: true},
                        {name: 'estadocheck', index: 'estadocheck', width: 150, editable: true},
                        {name: 'longitud', index: 'longitud', width: 150, editable: true},
                        {name: 'numhabitaciones', index: 'numhabitaciones', width: 150, editable: true}
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




            });

        </script>


    <style type="text/css">
    body,td,th {
	color: #000;
}
body {
	background-color:rgb(19,19,19);
}
    </style>
    </head>
<body>
        <p align="right"><input  widhtype="submit" value="Regresar a la pagina Principal" onclick="evento();">
                <center>  <table id="toolbar"></table></center>
        <div id="ptoolbar" ></div>
    </body>
</html>