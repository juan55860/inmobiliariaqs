<%-- 
    Document   : reporteArrendamientoMes
    Created on : 20/05/2013, 03:35:01 PM
    Author     : publico
--%>

<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            session.setAttribute("numero", request.getParameter("aim"));
            String seleccion1 = session.getAttribute("numero").toString();

            int tamaño = 12;
            int totalGanado = 0;

            modelo.clsConexionBD cnn = new modelo.clsConexionBD();
            int[] tamaños = new int[tamaño];
            int aux = 0;

            double[] totalGanancia = new double[tamaño];
            for (int i = 0; i < 12; i++) {

                tamaños[aux] = cnn.buscarMes(i + 1, Integer.parseInt(seleccion1), "USU");
                totalGanancia[aux] = cnn.buscarMesGanancia(i + 1, Integer.parseInt(seleccion1), "USU");
                totalGanado += totalGanancia[aux];

                aux++;
            }
            
            LinkedList<modelo.Persona> usuarios = new LinkedList<modelo.Persona>();
            usuarios = cnn.buscarPersonaPorFecha(seleccion1);

            String[] meses = {"ENERO", "FEBRERO", "MARZO", "ABRIL", "MAYO",
                "JUNIO", "JULIO", "AGOSTO", "SEPTIEMBRE", "OCTUBRE", "NOVIEMBRE", "DICIEMBRE"};



            //out.print("a"+seleccion);

        %>
        <div id="example" class="k-content">
            <div class="chart-wrapper">
                <div id="chart" style="background: center no-repeat url('../../content/shared/styles/world-map.png');"></div>
            </div>
            <script>


                function createChart() {
                    var arreglo3 = new Array();



                <%for (int i = 0; i < tamaños.length; i++) {
                %>
                    arreglo3.push('<%=tamaños[i]%>');
                <%




                    }%>


                    $("#chart").kendoChart({
                        title: {
                            text: "Reporte Usuarios Afiliados por Mes del Año: " +<%=seleccion1%> 
                        },
                        legend: {
                            position: "bottom"
                        },
                        seriesDefaults: {
                            type: "column"
                        },
                        series: [{
                                name: "Total Visits",
                                data: arreglo3
                            }],
                        valueAxis: {
                            line: {
                                visible: false
                            }
                        },
                        categoryAxis: {
                            categories: ["ENERO", "FEBRERO", "MARZO", "ABRIL", "MAYO", "JUNIO", "JULIO", "AGOSTO", "SEPTIEMBRE", "OCTUBRE", "NOVIEMBRE", "DICIEMBRE"],
                            majorGridLines: {
                                visible: false
                            }
                        },
                        tooltip: {
                            visible: true,
                            format: "{0}"
                        }
                    });
                }

                $(document).ready(function() {
                    setTimeout(function() {
                        // Initialize the chart with a delay to make sure
                        // the initial animation is visible
                        createChart();
                        $("#example").bind("kendo:skinChange", createChart);

                        var chart = $("#chart").data("kendoChart"),
                                firstSeries = chart.options.series;

                        $("#getGap").click(function() {
                            firstSeries[0].gap = parseFloat($("#gap").val(), 10);
                            chart.redraw();
                        });

                        $("#getSpacing").click(function() {
                            firstSeries[0].spacing = parseFloat($("#spacing").val(), 10);
                            chart.redraw();
                        });
                    }, 400);

                    if (kendo.ui.NumericTextBox) {
                        $("#gap").kendoNumericTextBox();
                        $("#spacing").kendoNumericTextBox();
                    }
                });
            </script>

            <style scoped>
                .chart-wrapper, .chart-wrapper .k-chart {
                    height: 300px;
                }
            </style>


            <br>
            <br>
            <center><table cellspacing="10" cellpadding="10" border="3"> 
                    <tr> 
                        <td align="center"> 
                            <table cellspacing="3" cellpadding="3" border="1"> 
                                <tr>
                                    <td colspan="9" align="center" bgcolor="336699"><font color="#FFFFFF"><strong>Reporte Usuarios Afiliados</strong></font></td>
                                </tr>

                                <tr bgcolor="789A9F">
                                    <td align="center">AÑO</td>
                                    <td align="center">TOTAL AFILIADOS:</td>

                                </tr>
                                <%
                                    for (int i = 0; i < tamaños.length; i++) {
                                        //out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
                                        if (i % 2 == 0) {
                                %>
                                <tr bgcolor="#D1E6E7">
                                    <td align="center"><%=meses[i]%></td> 
                                    <td align="center"><%=totalGanancia[i]%></td> 

                                </tr>
                                <%
                                } else {
                                %>
                                <tr>
                                    <td align="center"><%=meses[i]%></td> 
                                    <td align="center"><%=totalGanancia[i]%></td> 
                                </tr>
                                <%
                                        }
                                    }
                                %>

                                <tr bgcolor="9CFF00">
                                    <td align="center">TOTAL INSCRIPCIONES:</td>
                                    <td align="center"><%=totalGanado%></td>

                                </tr>
                            </table> </center>
                        </td> 
                    </tr> 
                </table>
                                    
                                    <center><table cellspacing="10" cellpadding="10" border="3"> 
                    <tr> 
                        <td align="center"> 
                            <table cellspacing="3" cellpadding="3" border="1"> 
                                <tr>
                                    <td colspan="9" align="center" bgcolor="336699"><font color="#FFFFFF"><strong>Reporte Usuarios Afiliados</strong></font></td>
                                </tr>

                                <tr bgcolor="FFCD00">
                                    <td align="center">IDENTIFICACION</td>
                                    <td align="center">TIPO IDENTIFICACION</td>
                                    <td align="center">NOMBRE</td>
                                    <td align="center">APELLIDO</td>
                                    <td align="center">DIRECCION</td>
                                    <td align="center">TELEFONO</td>
                                    <td align="center">CORREO</td>
                                    <td align="center">CONTRASEÑA</td>
                                    <td align="center">ROL</td>
                                   
                                </tr>
                                <%
                                    for (int i = 0; i < usuarios.size(); i++) {
                                        //out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
                                        if (i % 2 == 0) {
                                %>
                                <tr bgcolor="#148EFF">
                                    <td align="center"><%=usuarios.get(i).getIdentificacion()%></td> 
                                    <td align="center"><%=usuarios.get(i).getTipoIdentificacion()%></td> 
                                    <td align="center"><%=usuarios.get(i).getNombre()%></td> 
                                    <td align="center"><%=usuarios.get(i).getApellido()%></td> 
                                    <td align="center"><%=usuarios.get(i).getDireccion()%></td> 
                                    <td align="center"><%=usuarios.get(i).getTelefono()%></td> 
                                    <td align="center"><%=usuarios.get(i).getCorreo()%></td> 
                                    <td align="center"><%=usuarios.get(i).getContrasena()%></td> 
                                    <td align="center"><%=usuarios.get(i).getRol()%></td> 
                                    
                                </tr>
                                <%
                                } else {
                                %>
                                <tr>
                                   <td align="center"><%=usuarios.get(i).getIdentificacion()%></td> 
                                    <td align="center"><%=usuarios.get(i).getTipoIdentificacion()%></td> 
                                    <td align="center"><%=usuarios.get(i).getNombre()%></td> 
                                    <td align="center"><%=usuarios.get(i).getApellido()%></td> 
                                    <td align="center"><%=usuarios.get(i).getDireccion()%></td> 
                                    <td align="center"><%=usuarios.get(i).getTelefono()%></td> 
                                    <td align="center"><%=usuarios.get(i).getCorreo()%></td> 
                                    <td align="center"><%=usuarios.get(i).getContrasena()%></td> 
                                    <td align="center"><%=usuarios.get(i).getRol()%></td> 
                                    
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
