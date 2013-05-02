package org.apache.jsp.Administrador.GestionarPrioridadInmueble;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class grdSeries_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <title>Documentos</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/jquery-ui-1.8.1.custom.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/ui.jqgrid.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"css/ui.multiselect.css\" />\n");
      out.write("        <script src=\"js/jqGrid/jquery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/jqGrid/jquery-ui-1.8.1.custom.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/jqGrid/jquery.layout.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/jqGrid/grid.locale-en.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/jqGrid/ui.multiselect.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/jqGrid/jquery.jqGrid.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/jqGrid/jquery.tablednd.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/jqGrid/jquery.contextmenu.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $.jgrid.no_legacy_api = true;\n");
      out.write("            $.jgrid.useJSON = true;\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("           \n");
      out.write("            jQuery(document).ready(function(){\n");
      out.write("                jQuery(\"#toolbar\").jqGrid({ url:'getJSONSerie.jsp',\n");
      out.write("                    datatype: \"json\",\n");
      out.write("                    jsonReader:{repeatitems:true,\n");
      out.write("                        subgrid:{repeatitems:false}\n");
      out.write("                    },\n");
      out.write("                    height: 255,\n");
      out.write("                    width: 600,\n");
      out.write("                   \n");
      out.write("                    viewrecords:true,\n");
      out.write("                    colNames:['codigo','codigotipoinmueble','precio','barrio','direccion','codigopropietario','prioridad','estadocheck','longitud','numhabitaciones'],\n");
      out.write("                    colModel:[ {name:'codigo',index:'codigo', width:65,  editable:true},\n");
      out.write("                        {name:'codigotipoinmueble',index:'codigotipoinmueble', width:150, editable:true},\n");
      out.write("                        {name:'precio',index:'precio', width:150, editable:true},\n");
      out.write("                        {name:'barrio',index:'barrio', width:150, editable:true},\n");
      out.write("                        {name:'direccion',index:'direccion', width:150, editable:true},\n");
      out.write("                        {name:'codigopropietario',index:'codigopropietario', width:150, editable:true},\n");
      out.write("                        {name:'prioridad',index:'prioridad', width:150, editable:true},\n");
      out.write("                        {name:'estadocheck',index:'estadocheck', width:150, editable:true},\n");
      out.write("                        {name:'longitud',index:'longitud', width:150, editable:true},\n");
      out.write("                        {name:'numhabitaciones',index:'numhabitaciones', width:150, editable:true}\n");
      out.write("                    ],\n");
      out.write("                                                                     \n");
      out.write("                                                                           \n");
      out.write("                        \n");
      out.write("                    rowNum:50, rowTotal: 2000, rowList : [20,30,50],\n");
      out.write("                    mtype: \"GET\",\n");
      out.write("                    rownumbers: true, rownumWidth: 40,\n");
      out.write("                    multiselect:true,\n");
      out.write("                    gridview: true, pager: '#ptoolbar',\n");
      out.write("                    editurl:\"admSerie.jsp\",\n");
      out.write("                    sortname: 'item_id', viewrecords: true,\n");
      out.write("                    sortorder: \"asc\", caption: \"Documentos\",\n");
      out.write("                    \"loadError\":function(xhr,status, err){\n");
      out.write("                        try {\n");
      out.write("                            jQuery.jgrid.info_dialog(jQuery.jgrid.errors.errcap,'<div class=\"ui-state-error\">'+ xhr.responseText\n");
      out.write("                                +'</div>',\n");
      out.write("                            jQuery.jgrid.edit.bClose,{buttonalign:'right'});\n");
      out.write("                        } catch(e) {\n");
      out.write("                            alert(xhr.responseText);\n");
      out.write("                        }\n");
      out.write("                    },\n");
      out.write("                    pager:\"#ptoolbar\"\n");
      out.write("                });\n");
      out.write("                jQuery('#toolbar').jqGrid('navGrid','#ptoolbar',\n");
      out.write("                {\"edit\":true, \"add\":true, \"del\":true, \"search\":true, \"view\":true,\n");
      out.write("                    \"excel\":true, \"pdf\":true, \"csv\":true, \"columns\":true, reloadAfterSubmit:true\n");
      out.write("                },\n");
      out.write("                {\n");
      out.write("                    modal:true,\n");
      out.write("                    recreateForm: true,\n");
      out.write("                    editCaption: \"Agregar\",\n");
      out.write("                    saveData: \"Los datos han cambiado! Desea Guardarloa?\",\n");
      out.write("                    bYes: \"Si\",\n");
      out.write("                    bNo: \"No\",\n");
      out.write("                  \n");
      out.write("                    bExit: \"Cancelar\",\n");
      out.write("                    drag:true,\n");
      out.write("                    resize:true,\n");
      out.write("                    closeOnEscape:true,\n");
      out.write("                    jqModal: false,\n");
      out.write("       \n");
      out.write("                    dataheight:150,\n");
      out.write("                    reloadAfterSubmit:true,\n");
      out.write("                    closeAfterAdd:true,\n");
      out.write("                    reloadAfterSubmit:false,\n");
      out.write("                   \n");
      out.write("                    errorTextFormat:function(r){\n");
      out.write("                        return r.responseText;\n");
      out.write("                    },\n");
      out.write("                    \"width\":350\n");
      out.write("                },\n");
      out.write("                {\n");
      out.write("                    modal:true,\n");
      out.write("                    recreateForm: true,\n");
      out.write("                    editCaption: \"Editar\",\n");
      out.write("                    saveData: \"Los datos han cambiado! Desea Guardar?\",\n");
      out.write("                    bYes: \"Si\",\n");
      out.write("                    bNo: \"No\",\n");
      out.write("                    bExit: \"Cancelar\",\n");
      out.write("                    drag:true,\n");
      out.write("                    resize:true,\n");
      out.write("                    closeOnEscape:true,\n");
      out.write("                    dataheight:150,\n");
      out.write("                    closeAfterEdit:true, reloadAfterSubmit:false,\n");
      out.write("                    errorTextFormat:function(r){\n");
      out.write("                        return r.responseText;\n");
      out.write("                    }\n");
      out.write("                },\n");
      out.write("                {\n");
      out.write("                    modal:true,\n");
      out.write("                    recreateForm: true,\n");
      out.write("                    closeOnEscape:true,\n");
      out.write("                    reloadAfterSubmit:false,\n");
      out.write("                    errorTextFormat:function(r){\n");
      out.write("                        \n");
      out.write("                        return r.responseText;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            );\n");
      out.write("            \n");
      out.write("\n");
      out.write("         \n");
      out.write("                  \n");
      out.write("            });\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"../../sitio/css/reset.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"../../sitio/css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"../../sitio/css/grid_12.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"../../sitio/css/slider-2.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"../../sitio/css/jqtransform.css\">\n");
      out.write("\n");
      out.write("        <script src=\"../../sitio/js/jquery-1.7.min.js\"></script>\n");
      out.write("        <script src=\"../../sitio/js/jquery.easing.1.3.js\"></script>\n");
      out.write("        <script src=\"../../sitio/js/cufon-yui.js\"></script>\n");
      out.write("        <script src=\"../../sitio/js/vegur_400.font.js\"></script>\n");
      out.write("        <script src=\"../../sitio/js/Vegur_bold_700.font.js\"></script>\n");
      out.write("        <script src=\"../../sitio/js/cufon-replace.js\"></script>\n");
      out.write("        <script src=\"../../sitio/js/tms-0.4.x.js\"></script>\n");
      out.write("        <script src=\"../../sitio/js/jquery.jqtransform.js\"></script>\n");
      out.write("        <script src=\"../../sitio/js/FF-cash.js\"></script>\n");
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
      out.write("\n");
      out.write("            }\n");
      out.write("            #apDiv2 {\n");
      out.write("                position:absolute;\n");
      out.write("                left:362px;\n");
      out.write("                top:493px;\n");
      out.write("                width:721px;\n");
      out.write("                height:535px;\n");
      out.write("                z-index:1;\n");
      out.write("                font: 20px Arial,Helvetica,sans-serif; color:rgb(83,83,83)\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <table id=\"toolbar\"></table>\n");
      out.write("        <div id=\"ptoolbar\" ></div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
