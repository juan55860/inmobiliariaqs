<%-- 
    Document   : newjsp3
    Created on : 11/11/2010, 10:18:03 PM
    Author     : andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style type="text/css">
            BODY,
            FIELDSET {
                border: solid 1px #CCC;
                -moz-border-radius: 4px;
                -webkit-border-radius: 4px;
                border-radius: 4px;
                padding: 1em .5em;
                margin: 0em 0em;
            }

            LEGEND {
                color: #666;
                font-size: 16px;
                padding: 0em .5em;
            }

            PRE {
                font-family: "Arial", monospace;
                font-size: 14px;
                color: #666;
                background: #F8F8F8;
                padding: .5em;
                -moz-border-radius: 8px;
                -webkit-border-radius: 8px;
                border-radius: 4px;
            }

            #form1 input {
                border-top-style: solid;
                border-right-style: solid;
                border-bottom-style: solid;
                border-left-style: solid;
            }

            P {
                font-family: "Arial", monospace;
                font-size: 14px;

            }
            .Estilo1 {color: #FF0000}
        </style>
    </head>
    <body><pre><strong>Elementos seleccionados</strong>

            <%
                String h = request.getParameter("MDLG");

                java.util.StringTokenizer st = new java.util.StringTokenizer(h, ";");

                //while(st.hasMoreTokens()){
                String q = "";
                if (!h.equals("")) {
                    for (int i = 0; i < h.length() - 1; i++) {
                        if (h.charAt(i) != ';') {
                            q += h.charAt(i);
                        } else {
                            i = h.length() + 5;
                        }

                    }
                    out.print("<br/>" + st.nextToken());
                }
                

                
String ruta = "http://localhost:8080/appInmobiliaria/Administrador/pdf/"+q+".pdf";

String ruta2 = "http://localhost:8080/appInmobiliaria/Administrador/pdf/ejemplo.pdf";

response.sendRedirect(ruta);
                //}


            %>

                      

        </pre>
    </body>
</html>
