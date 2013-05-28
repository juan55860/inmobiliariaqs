<%-- 
    Document   : reporteArrendamientoAños
    Created on : 20/05/2013, 01:23:14 PM
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
            session.setAttribute("numero", request.getParameter("ai"));
            String seleccion1 = session.getAttribute("numero").toString();
            session.setAttribute("numero2", request.getParameter("af"));
            String seleccion2 = session.getAttribute("numero2").toString();
            int tamaño = 0;
            for (int i = Integer.parseInt(seleccion1); i <= Integer.parseInt(seleccion2); i++) {

                tamaño++;

            }
            modelo.clsConexionBD cnn = new modelo.clsConexionBD();
            int[] tamaños = new int[tamaño];
            int aux = 0;
            String[] fechas = new String[tamaño];
            int cantidadTotal = 0;
            double[] totalGanancia = new double[tamaño];
            for (int i = Integer.parseInt(seleccion1); i <= Integer.parseInt(seleccion2); i++) {

                tamaños[aux] = cnn.buscarAno(i, "INM");
                // totalGanancia[aux] = cnn.buscarAnoGanancia(i, "USU");
                fechas[aux] = i + "";
                cantidadTotal += tamaños[aux];
                aux++;
            }


                 if(Integer.parseInt(seleccion1)>Integer.parseInt(seleccion2)){
               response.sendRedirect("reporteError.jsp");
                
              }
       
       else{


            //out.print("a"+seleccion);

        %>
        <div id="example" class="k-content">
            <div class="chart-wrapper">
                <div id="chart" style="background: center no-repeat url('../../content/shared/styles/world-map.png');"></div>
            </div>
            <script>
                function createChart() {

                    var arreglo2 = new Array();
                    var arreglo3 = new Array();



                <%for (int i = 0; i < tamaños.length; i++) {
                %>
                    arreglo2.push('<%=tamaños[i]%>');
                    arreglo3.push('<%=fechas[i]%>');
                <%




                    }%>

                    $("#chart").kendoChart({
                        title: {
                            text: "Reporte Inmuebles Afiliados Año: " +<%=seleccion1%> + " al Año: "+<%=seleccion2%>
                        },
                        legend: {
                            visible: false
                        },
                        seriesDefaults: {
                            type: "bar"
                        },
                        series: [{
                                name: "Total Visits",
                                data: arreglo2
                            }],
                        valueAxis: {
                            max: 10,
                            line: {
                                visible: false
                            },
                            minorGridLines: {
                                visible: true
                            }
                        },
                        categoryAxis: {
                            categories: arreglo3,
                            majorGridLines: {
                                visible: false
                            }
                        },
                        tooltip: {
                            visible: true,
                            template: "#= series.name #: #= value #"
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
            <style scoped>
                .chart-wrapper, .chart-wrapper .k-chart {
                    height: 350px;
                }
            </style>


            <br>
            <br>
            <center><table cellspacing="10" cellpadding="10" border="3"> 
                    <tr> 
                        <td align="center"> 
                            <table cellspacing="3" cellpadding="3" border="1"> 
                                <tr>
                                    <td colspan="9" align="center" bgcolor="336699"><font color="#FFFFFF"><strong>Reporte Inmuebles Afiliados</strong></font></td>
                                </tr>

                                <tr bgcolor="789A9F">
                                    <td align="center">AÑO</td>
                                    <td align="center">TOTAL AFILIADOS</td>

                                </tr>
                                <%
                                    for (int i = 0; i < fechas.length; i++) {
                                        //out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
                                        if (i % 2 == 0) {
                                %>
                                <tr bgcolor="#D1E6E7">
                                    <td align="center"><%=fechas[i]%></td> 
                                    <td align="center"><%=tamaños[i]%></td> 

                                </tr>
                                <%
                                } else {
                                %>
                                <tr>
                                    <td align="center"><%=fechas[i]%></td> 
                                    <td align="center"><%=tamaños[i]%></td> 
                                </tr>
                                <%
                                        }
                                    }


                                %>
                                <tr bgcolor="9CFF00">
                                    <td align="center">TOTAL AFILIACIONES: </td> 
                                    <td align="center"><%=cantidadTotal%></td> 
                                </tr>
                            </table> </center>
                        </td> 
                    </tr> 
                </table>
        </div>

<%
                 }
%>
    </body>
</html>
