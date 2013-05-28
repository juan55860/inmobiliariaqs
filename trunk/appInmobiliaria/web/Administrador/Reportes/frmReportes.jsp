<%-- 
    Document   : newjsp2
    Created on : 18/05/2013, 01:01:35 PM
    Author     : PUBLICO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>jQuery UI Autocomplete - Combobox</title>
        <link rel="stylesheet" href="js/checkbox/jquery-ui.css" />
        <script src="js/checkbox/jquery-1.9.1.js"></script>
        <script src="js/checkbox/jquery-ui.js"></script>
        <link rel="stylesheet" href="js/checkbox/style.css" />
        
        <style>
        .custom-combobox {
                position: relative;
                display: inline-block;
        }
        .custom-combobox-toggle {
                position: absolute;
                top: 0;
                bottom: 0;
                margin-left: -1px;
                padding: 0;
                /* support: IE7 */
                *height: 1.7em;
                *top: 0.1em;
        }
        .custom-combobox-input {
                margin: 0;
                padding: 0.3em;
        }
        </style>
        <script>
            (function($) {
                $.widget("custom.combobox", {
                    _create: function() {
                        this.wrapper = $("<span>")
                                .addClass("custom-combobox")
                                .insertAfter(this.element);

                        this.element.hide();
                        this._createAutocomplete();
                        this._createShowAllButton();
                    },
                    _createAutocomplete: function() {
                        var selected = this.element.children(":selected"),
                                value = selected.val() ? selected.text() : "";

                        this.input = $("<input>")
                                .appendTo(this.wrapper)
                                .val(value)
                                .attr("title", "")
                                .addClass("custom-combobox-input ui-widget ui-widget-content ui-state-default ui-corner-left")
                                .autocomplete({
                            delay: 0,
                            minLength: 0,
                            source: $.proxy(this, "_source")
                        })
                                .tooltip({
                            tooltipClass: "ui-state-highlight"
                        });

                        this._on(this.input, {
                            autocompleteselect: function(event, ui) {
                                ui.item.option.selected = true;
                                this._trigger("select", event, {
                                    item: ui.item.option
                                });
                            },
                            autocompletechange: "_removeIfInvalid"
                        });
                    },
                    _createShowAllButton: function() {
                        var input = this.input,
                                wasOpen = false;

                        $("<a>")
                                .attr("tabIndex", -1)
                                .attr("title", "Show All Items")
                                .tooltip()
                                .appendTo(this.wrapper)
                                .button({
                            icons: {
                                primary: "ui-icon-triangle-1-s"
                            },
                            text: false
                        })
                                .removeClass("ui-corner-all")
                                .addClass("custom-combobox-toggle ui-corner-right")
                                .mousedown(function() {
                            wasOpen = input.autocomplete("widget").is(":visible");
                        })
                                .click(function() {
                            input.focus();

                            // Close if already visible
                            if (wasOpen) {
                                return;
                            }

                            // Pass empty string as value to search for, displaying all results
                            input.autocomplete("search", "");
                        });
                    },
                    _source: function(request, response) {
                        var matcher = new RegExp($.ui.autocomplete.escapeRegex(request.term), "i");
                        response(this.element.children("option").map(function() {
                            var text = $(this).text();
                            if (this.value && (!request.term || matcher.test(text)))
                                return {
                                    label: text,
                                    value: text,
                                    option: this
                                };
                        }));
                    },
                    _removeIfInvalid: function(event, ui) {

                        // Selected an item, nothing to do
                        if (ui.item) {
                            return;
                        }

                        // Search for a match (case-insensitive)
                        var value = this.input.val(),
                                valueLowerCase = value.toLowerCase(),
                                valid = false;
                        this.element.children("option").each(function() {
                            if ($(this).text().toLowerCase() === valueLowerCase) {
                                this.selected = valid = true;
                                return false;
                            }
                        });

                        // Found a match, nothing to do
                        if (valid) {
                            return;
                        }

                        // Remove invalid value
                        this.input
                                .val("")
                                .attr("title", value + " didn't match any item")
                                .tooltip("open");
                        this.element.val("");
                        this._delay(function() {
                            this.input.tooltip("close").attr("title", "");
                        }, 2500);
                        this.input.data("ui-autocomplete").term = "";
                    },
                    _destroy: function() {
                        this.wrapper.remove();
                        this.element.show();
                    }
                });
            })(jQuery);

            $(function() {
                $("#combobox").combobox();
                $("#toggle").click(function() {
                    $("#combobox").toggle();
                });
            });
        </script>
    </head>
    <body>

    <center>
        <form id="formulario" method="get" action="opcionReporte.jsp"  target="cargo2">
            <div class="ui-widget">

                <label><strong>Seleccione el reporte que desea consultar: </strong></label>
                <select name="reporte" id="reporte" >
                    <option value="rep1">Reporte Inmuebles Arrendados</option>
                    <option value="rep2">Reporte Inmuebles Pendientes de Arrendar</option>
                    <option value="rep3">Reporte Inmuebles Vendidos</option>
                    <option value="rep4">Reporte Inmuebles Pendientes por Vender</option>
                    <option value="rep5">Reporte Inmuebles En Oferta</option>
                    <option value="rep6">Reporte Arrendamientos por Años</option>
                    <option value="rep7">Reporte Arrendamientos por Mes</option>
                    <option value="rep8">Reporte Ventas por Año</option>
                    <option value="rep9">Reporte Ventas por Mes</option>
                    <option value="rep10">Reporte Usuarios Afiliados por Años</option>
                    <option value="rep11">Reporte Usuarios Afiliados por Mes</option>
                    <option value="rep12">Reporte Inmuebles Afiliados por Años</option>
                    <option value="rep13">Reporte Inmuebles Afiliados por Mes</option>
                </select>
            </div>
            <button  name="Submit" type="submit">Consultar Reporte</button>
        </form>
    </center>

    <center> 
        <iframe id="cargo2" name="cargo2" frameborder="0" width="1050" height="1100" scrolling="no" frameborder="5">
        
        </iframe></center>

</body>
</html>