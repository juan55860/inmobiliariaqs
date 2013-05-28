<%-- 
    Document   : newjsp
    Created on : 6/05/2013, 11:18:57 PM
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
            inmuebles = cnn.buscarPorFecha("RV");
            float cantidadTotal = 0.f;


            cantidadTotal = cnn.buscarPorFecha2("VEN");

            float porcentaje = (inmuebles.size() * 100) / cantidadTotal;
            int zz = 150000;
            int[] numeros = {140000, 63000, 74000, 91000, 117000, 20000};
            int aaa = numeros.length;
            String aux = "0";
        %>

        <div id="example" class="k-content">
            <div class="chart-wrapper">
                <div id="chart" style="background: center no-repeat url('../../content/shared/styles/world-map.png');"></div>
            </div>
            <script>


                function createChart() {

                    var porc = <%=porcentaje%>;
                    $("#chart").kendoChart({
                        title: {
                            position: "bottom",
                            text: "Reporte Inmubles Vendidos"
                        },
                        legend: {
                            visible: false
                        },
                        chartArea: {
                            background: ""
                        },
                        seriesDefaults: {
                            labels: {
                                visible: true,
                                background: "transparent",
                                template: "#= category #: #= value#%"
                            }
                        },
                        series: [{
                                type: "pie",
                                startAngle: 150,
                                data: [{
                                        category: "Vendidos",
                                        value: porc,
                                        color: "#9de219"
                                    }, {
                                        category: "No Vendidos",
                                        value: 100 - porc,
                                        color: "#004d38"
                                    }]
                            }],
                        tooltip: {
                            visible: true,
                            format: "{0}%"
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
                });
            </script>


            <center><table cellspacing="1" cellpadding="0" border="1"> 
                    <tr bgcolor="986598">
                        <td align="center">TOTAL INMUEBLES: </td>
                        <td align="center"><%=cantidadTotal%></td>
                    </tr>
                    <tr bgcolor="FF8000">
                        <td align="center">TOTAL VENDIDOS: </td>
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
                                    <td colspan="9" align="center" bgcolor="336699"><font color="#FFFFFF"><strong>Reporte Inmuebles Vendidos</strong></font></td>
                                </tr>

                                <tr bgcolor="789A9F">
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
                                <tr bgcolor="#D1E6E7">
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