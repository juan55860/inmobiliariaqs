<%-- 
    Document   : newjsp1
    Created on : 6/05/2013, 11:20:21 PM
    Author     : familia
--%>

<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link href="../js/kendo.common.min.css" rel="stylesheet" />
        <link href="../js/kendo.default.min.css" rel="stylesheet" />
        <script src="../js/jquery.min.js"></script>
        <script src="../js/kendo.all.min.js"></script>
       
    </head>
    <body>

        <%
            modelo.clsConexionBD cnn = new modelo.clsConexionBD();
            LinkedList<modelo.InmuebleV2> inmuebles = new LinkedList<modelo.InmuebleV2>();
            inmuebles = cnn.buscarPorFecha("RA");
            float cantidadTotal = 0.f;


            cantidadTotal = cnn.buscarPorFecha2("ARR");

            float porcentaje = (inmuebles.size() * 100) / cantidadTotal;
            int zz = 150000;
            int[] numeros = {140000, 63000, 74000, 91000, 117000, 20000};
            int aaa = numeros.length;
            String aux = "0";
            
            
        %>

        <div id="example" class="k-content">
            <div class="chart-wrapper">
                <div id="chart"></div>
            </div>
            <div class="configuration-horizontal">

            </div>
            <script>
                function createChart() {

                    var porc = <%=porcentaje%>;
                    $("#chart").kendoChart({
                        title: {
                            text: "Reporte Inmuebles Arrendados"
                        },
                        legend: {
                            position: "top"
                        },
                        seriesDefaults: {
                            labels: {
                                template: "#= category # - #= kendo.format('{0:P}', percentage)#",
                                position: "outsideEnd",
                                visible: true,
                                background: "transparent"
                            }
                        },
                        series: [{
                                type: "pie",
                                data: [{
                                        category: "Arrendados",
                                        value: porc
                                    }, {
                                        category: "No Arrendados",
                                        value: 100 - porc
                                    }]
                            }],
                        tooltip: {
                            visible: true,
                            template: "#= category # - #= kendo.format('{0:P}', percentage) #"
                        }
                    });
                }

                $(document).ready(function() {
                    setTimeout(function() {
                        // Initialize the chart with a delay to make sure
                        // the initial animation is visible
                        createChart();

                        $("#example").bind("kendo:skinChange", function(e) {
                            createChart();
                        });
                    }, 400);

                    $(".configuration-horizontal").bind("change", refresh);
                });

                function refresh() {
                    var chart = $("#chart").data("kendoChart"),
                            pieSeries = chart.options.series[0],
                            labels = $("#labels").prop("checked"),
                            alignInputs = $("input[name='alignType']"),
                            alignLabels = alignInputs.filter(":checked").val();

                    chart.options.transitions = false;
                    pieSeries.labels.visible = labels;
                    pieSeries.labels.align = alignLabels;

                    alignInputs.attr("disabled", !labels);

                    chart.refresh();
                }

            </script>

            <style scoped>
                .chart-wrapper, .chart-wrapper .k-chart {
                    height: 400px;
                }
            </style>

            <center><table cellspacing="1" cellpadding="0" border="1"> 
                    <tr bgcolor="986598">
                        <td align="center">TOTAL INMUEBLES: </td>
                        <td align="center"><%=cantidadTotal%></td>
                    </tr>
                    <tr bgcolor="FF8000">
                        <td align="center">TOTAL ARRENDADOS: </td>
                        <td align="center"><%=inmuebles.size()%></td>
                    </tr>
                </table></center>
            <br>
            <br>
            <center><table cellspacing="10" cellpadding="10" border="3"> 
                    <tr> 
                        <td align="center"> 
                            <table cellspacing="3" cellpadding="3" border="1"> 
                                <tr>
                                    <td colspan="9" align="center" bgcolor="336699"><font color="#FFFFFF"><strong>Reporte Inmuebles Arrendados</strong></font></td>
                                </tr>

                                <tr bgcolor="FFCD00">
                                    <td align="center">CODIGO</td>
                                    <td align="center">PRECIO</td>
                                    <td align="center">DIRECCION</td>
                                    <td align="center">ESTRATO</td>
                                    <td align="center">COD. PROPIETARIO</td>
                                    <td align="center">PRIORIDAD</td>
                                    <td align="center">AREA</td>
                                    <td align="center">DESCRIPCION</td>
                                    <td align="center">ESTADO</td>
                                </tr>
                                <%
                                    for (int i = 0; i < inmuebles.size(); i++) {
                                        //out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
                                        if (i % 2 == 0) {
                                %>
                                <tr bgcolor="#148EFF">
                                    <td align="center"><%=inmuebles.get(i).getCodigo()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getPrecio()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getDireccion()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getEstrato()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getCodPropietario()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getPrioridad()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getArea()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getDescripcion()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getEstado()%></td> 
                                </tr>
                                <%
                                } else {
                                %>
                                <tr>
                                    <td align="center"><%=inmuebles.get(i).getCodigo()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getPrecio()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getDireccion()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getEstrato()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getCodPropietario()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getPrioridad()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getArea()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getDescripcion()%></td> 
                                    <td align="center"><%=inmuebles.get(i).getEstado()%></td> 
                                </tr>
                                <%
                                        }
                                    }
                                %>
                            </table> </center>
                        </td> 
                    </tr> 
                </table>

        </div>



    </body>
</html>