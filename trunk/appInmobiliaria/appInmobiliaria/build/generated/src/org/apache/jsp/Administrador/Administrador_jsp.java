package org.apache.jsp.Administrador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Administrador_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Administrador Home</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"../sitio/css/reset.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"../sitio/css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"../sitio/css/grid_12.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"../sitio/css/slider-2.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"../sitio/css/jqtransform.css\">\n");
      out.write("        <script src=\"../sitio/js/jquery-1.7.min.js\"></script>\n");
      out.write("        <script src=\"../sitio/js/jquery.easing.1.3.js\"></script>\n");
      out.write("        <script src=\"../sitio/js/cufon-yui.js\"></script>\n");
      out.write("        <script src=\"../sitio/js/vegur_400.font.js\"></script>\n");
      out.write("        <script src=\"../sitio/js/Vegur_bold_700.font.js\"></script>\n");
      out.write("        <script src=\"../sitio/js/cufon-replace.js\"></script>\n");
      out.write("        <script src=\"../sitio/js/tms-0.4.x.js\"></script>\n");
      out.write("        <script src=\"../sitio/js/jquery.jqtransform.js\"></script>\n");
      out.write("        <script src=\"../sitio/js/FF-cash.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function() {\n");
      out.write("                $('.form-1').jqTransform();\n");
      out.write("                $('.slider')._TMS({\n");
      out.write("                    show: 0,\n");
      out.write("                    pauseOnHover: true,\n");
      out.write("                    prevBu: '.prev',\n");
      out.write("                    nextBu: '.next',\n");
      out.write("                    playBu: false,\n");
      out.write("                    duration: 1000,\n");
      out.write("                    preset: 'fade',\n");
      out.write("                    pagination: true,\n");
      out.write("                    pagNums: false,\n");
      out.write("                    slideshow: 7000,\n");
      out.write("                    numStatus: false,\n");
      out.write("                    banners: false,\n");
      out.write("                    waitBannerAnimation: false,\n");
      out.write("                    progressBar: false\n");
      out.write("                })\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            #apDiv1 {\n");
      out.write("                position:absolute;\n");
      out.write("                left:191px;\n");
      out.write("                top:476px;\n");
      out.write("                width:802px;\n");
      out.write("                height:677px;\n");
      out.write("                z-index:1;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"apDiv1\"><iframe name=\"frdirect\" frameborder=\"0\"  height=\"600\" width=\"1100\"></iframe></div>\n");
      out.write("        <div class=\"main\">\n");
      out.write("            <!--==============================header=================================-->\n");
      out.write("            <header>\n");
      out.write("                <div>\n");
      out.write("                    <h1><a href=\"../index.jsp\"><img src=\"../sitio/images/logo.jpg\" alt=\"\"></a></h1>\n");
      out.write("                    <div class=\"social-icons\">\n");
      out.write("                        <span>Encuentranos en</span>\n");
      out.write("                        <a href=\"#\" class=\"icon-3\"></a>\n");
      out.write("                        <a href=\"#\" class=\"icon-2\"></a>\n");
      out.write("                        <a href=\"#\" class=\"icon-1\"></a>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"slide\">\t\t\n");
      out.write("                        <div class=\"slider\">\n");
      out.write("                            <ul class=\"items\">\n");
      out.write("                                <li><img src=\"../sitio/images/slider-1-small.jpg\" alt=\"\" /></li>\n");
      out.write("                                <li><img src=\"../sitio/images/slider-2-small.jpg\" alt=\"\" /></li>\n");
      out.write("                                <li><img src=\"../sitio/images/slider-3-small.jpg\" alt=\"\" /></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\t\n");
      out.write("                        <a href=\"#\" class=\"prev\"></a><a href=\"#\" class=\"next\"></a>\n");
      out.write("                    </div>\n");
      out.write("                    <nav>\n");
      out.write("                        <ul class=\"menu\">\n");
      out.write("                            <li><a href=\"ArrendamientosVentas/frmArrendamientosVentas.jsp\">Financiera</a></li>\n");
      out.write("                            <li><a href=\"GestionarPrioridadInmueble/grdSeries.jsp\">Prioridad</a></li>\n");
      out.write("                            <li><a href=\"ingresarInmuebles/frmRegistrarInmueble.jsp\" >Inmuebles</a></li>\n");
      out.write("                            <li><a href=\"IngresarClientes/frmRegistrarCliente.jsp\">Clientes</a></li> \n");
      out.write("                            <li><a href=\"SubirArchivos/cargarArchivo.jsp\" target=\"frdirect\">Archivos</a></li>\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("            </header>   \n");
      out.write("\n");
      out.write("        </div>  \n");
      out.write("        <script>\n");
      out.write("            Cufon.now();\n");
      out.write("        </script>    \n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
