/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class clsConexionBD {

    ResultSet res = null;
    private Connection con = null;
    Statement st = null;
    String driver = "org.postgresql.Driver";
    String url = "jdbc:postgresql://127.0.0.1/bdInmobiliaria";
    String userDB = "postgres";
    String passDB = "admin";

    public clsConexionBD() {
        conectar();
    }

    public Connection getCon() {
        return con;
    }

    public int conectar() {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            System.out.println("No se pudo cargar el driver :-( " + driver);
            return -1;
        }
        try {
            con = DriverManager.getConnection(url, userDB, passDB);
        } catch (SQLException e) {
            System.out.println("No se pudo realizar la conexion :-(");
            return -2;
        }
        return 1;
    }

    public SQLException insertar(String sql) {
        try {
            st = getCon().createStatement();
            st.execute(sql);
            st.close();
            return null;
        } catch (SQLException e) {
            return e;
        }
    }

    public ResultSet consultar(String sql) {
        try {
            st = getCon().createStatement();
            res = st.executeQuery(sql);
        } catch (SQLException e) {
            return null;
        }
        return res;
    }

    public int verificar(String sql) {
        try {
            st = getCon().createStatement();
            res = st.executeQuery(sql);
            if (res.next()) {
                return 1;
            }
            st.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }

    public StringBuffer consultarClaveBarrio() throws SQLException {
        String query = "SELECT  'inm'||nextval('sec_inmuebles')-1 as prueba";
        StringBuffer sb = new StringBuffer();
        ResultSet rs = consultar(query);
        if (rs.next()) {
            sb.append(rs.getString("prueba"));
        }
        return sb;
    }

    public int actualizar(String sql) {
        try {
            st = getCon().createStatement();
            st.executeUpdate(sql);
            st.close();
            return 1;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }

    public ResultSet listarDB(String sql) {
        try {
            st = getCon().createStatement(); // Se conecta a postgres
            res = st.executeQuery(sql); // Ejecuta el SQL
            if (res.next()) {
                return res;
            }
            st.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public String getJSON(String sql, int columnas) {
        String jsonResult = "";
        int col = columnas;
        try {
            modelo.JQGridJSONModel json = new modelo.JQGridJSONModel();
            java.util.List<modelo.JQGridRow> rows = new java.util.ArrayList<modelo.JQGridRow>();
            modelo.JQGridRow row = new modelo.JQGridRow();
            java.util.List<String> cells = new java.util.ArrayList<String>();
            st = getCon().createStatement();
            res = st.executeQuery(sql);
            int y = 1;
            while (res.next()) {
                cells = new java.util.ArrayList<String>();
                row = new modelo.JQGridRow();
                //row.setId(Integer.parseInt(res.getString(0)));
                row.setId(y);
                col = 1;
                while (col <= columnas) {
                    cells.add(res.getString(col));
                    col++;
                }
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            json.setPage("1");
            json.setRecords(y);
            json.setTotal("+" + (y <= 10 ? 1 : 2) + "");
            json.setRows(rows);
            flexjson.JSONSerializer serializer = new flexjson.JSONSerializer();
            jsonResult = serializer.exclude("*.class").deepSerialize(json);

        } catch (SQLException ex) {
            Logger.getLogger(clsConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return jsonResult;
    }

    public String crearContrato(modelo.Contrato contrato) {


        String sql = "INSERT INTO contratos VALUES ('" + contrato.getCodigo() + "', '" + contrato.getCodArrendador() + "', '" + contrato.getCodArrendatario() + "', '" + contrato.getDescripcion() + "', '" + contrato.getFecha() + "', '" + contrato.getCodInmueble() + "', '" + contrato.getValor() + "', '" + contrato.getComision() + "', '" + contrato.getDuracion() + "')";

        if (insertar(sql) == null) {
            return "1";
        }
        return "-1";

    }
 public StringBuffer Genera(String tabla)//aarma el carrusel con los dato de las vistas
{
        StringBuffer sb = new StringBuffer();
        try{
        ResultSet resC=null;
        String sql="Select * from "+tabla;
        st=getCon().createStatement();
        resC= st.executeQuery(sql);
      
        while (resC.next()){
    sb.append("<li>");

        sb.append("<a href=ensayo.jsp?VariableQueViaja="+resC.getString(1) + ">" +"<img width=\"70\" height=\"70\" src=\"Noticias/images/1.png"+ "\">");
         sb.append(" <h5>"+resC.getString(2)+"</a></h5>");    
          sb.append(" <h5>"+resC.getString(3)+"</a></h5>");  
            sb.append(" <h5>"+resC.getString(4)+"</a></h5>");  
            sb.append(" <h5>"+resC.getString(5)+"</a></h5>");  
            
        sb.append("</li>");
        }
         
        }
        catch(SQLException e){
        sb.append(e.toString());
        return sb;
        }
        return sb;
        }

    public StringBuffer cmbGenera(String tabla, int col) {
        StringBuffer sb = new StringBuffer();
        try {
            ResultSet resC = null;
            String sql = "Select * from " + tabla.toString();
            st = getCon().createStatement();
            resC = st.executeQuery(sql);
            sb.append("<select name=\"" + resC.getMetaData().getColumnName(2) + "\" id=\"" + resC.getMetaData().getColumnName(2) + "\">");
            while (resC.next()) {
                sb.append("<option value=\"" + resC.getString(1) + "\">" + resC.getString(col) + " </option>");
            }
            sb.append("</select>");
        } catch (SQLException e) {
            sb.append(e.toString());
            return sb;
        }
        return sb;
    }

    public String getJSONCols(String sql, String cuales) {
        String jsonResult = "";
        java.util.StringTokenizer cols;
        try {
            JSon.JQGridJSONModel json = new JSon.JQGridJSONModel();
            java.util.List<JSon.JQGridRow> rows = new java.util.ArrayList<JSon.JQGridRow>();
            JSon.JQGridRow row = new JSon.JQGridRow();
            java.util.List<String> cells = new java.util.ArrayList<String>();
            st = getCon().createStatement();
            res = st.executeQuery(sql);
            int y = 1;
            while (res.next()) {
                cells = new java.util.ArrayList<String>();
                row = new JSon.JQGridRow();
                row.setId(y);
                cols = new java.util.StringTokenizer(cuales, ";");
                while (cols.hasMoreTokens()) {
                    cells.add(res.getString(Integer.parseInt(cols.nextToken())));
                }
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            json.setPage("1");
            json.setRecords(y);
            json.setTotal("+" + (y <= 10 ? 1 : 2) + "");
            json.setRows(rows);
            flexjson.JSONSerializer serializer = new flexjson.JSONSerializer();
            jsonResult = serializer.exclude("*.class").deepSerialize(json);
        } catch (SQLException ex) {
            Logger.getLogger(clsConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return jsonResult;
    }
    
     
    public LinkedList<InmuebleV2> buscarPorFecha(String fecha) {

        LinkedList<modelo.InmuebleV2> listado = new LinkedList<modelo.InmuebleV2>();
        String jsonResult = "";
        String sql = "";
        if(fecha.equals("RA"))
        sql = "Select * from inmuebles where upper(estado) = 'ARRENDAMIENTO' and codigo in(select cod_inmueble from contratos)";
        else
            if(fecha.equals("RNA"))
              sql = "Select * from inmuebles where upper(estado) = 'ARRENDAMIENTO' and codigo not in(select cod_inmueble from contratos)";  
              else
                if(fecha.equals("RV"))
                    sql = "Select * from inmuebles where upper(estado) = 'VENTA' and codigo in(select cod_inmueble from contratos )";  
        else
                    if(fecha.equals("RNV"))
                        sql = "Select * from inmuebles where upper(estado) = 'VENTA' and codigo not in(select cod_inmueble from contratos )";  
        else
                        if(fecha.equals("RO"))
                            sql = "Select * from inmuebles where prioridad  is not null";
        else
                             sql = "Select * from inmuebles";
        int col =9;
        int columnas = 9;
        try {
            JQGridJSONModel json = new JQGridJSONModel();
            java.util.List<JQGridRow> rows = new java.util.ArrayList<JQGridRow>();
            JQGridRow row = new JQGridRow();
            java.util.List<String> cells = new java.util.ArrayList<String>();
            st = getCon().createStatement();
            res = st.executeQuery(sql);
            
            int y = 1;
            while (res.next()) {
                cells = new java.util.ArrayList<String>();
                row = new JQGridRow();
                //row.setId(Integer.parseInt(res.getString(0)));
                row.setId(y);
                modelo.InmuebleV2 inmuble = new modelo.InmuebleV2();
                col = 1;
                while (col <= columnas) {
                    cells.add(res.getString(col));
                    if(col==1){
                        String aux = res.getString(col);
                        int aux2 = Integer.parseInt(aux.substring(3, aux.length()));
                        inmuble.setCodigo(aux2);
                    }
                        else
                        if(col==2)
                            inmuble.setPrecio(res.getString(col));
                            else
                        if(col==3)
                            inmuble.setDireccion(res.getString(col));
                            else
                        if(col==4)
                            inmuble.setEstrato((res.getString(col)));
                            else
                        if(col==5)
                            inmuble.setCodPropietario(Integer.parseInt(res.getString(col)));
                            else
                        if(col==6){
                            String aux = res.getString(col);
                            System.out.println(aux);
                            
                            if(aux != null)
                            inmuble.setPrioridad(Integer.parseInt(res.getString(col)));
                        }
                            else
                        if(col==7)
                            inmuble.setArea(Integer.parseInt(res.getString(col)));
                            else
                        if(col==8)
                            inmuble.setDescripcion(res.getString(col));
                            else
                        if(col==9)
                            inmuble.setEstado(res.getString(col));
                            
                    col++;
                    if(col==9)
                        listado.add(inmuble);
                }
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            if(y==1){
                cells = new java.util.ArrayList<String>();
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("NO SE PUEDE");
                 row = new JQGridRow();
                row.setId(y);
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            json.setPage("1");
            json.setRecords(y);
            json.setTotal("+" + (y <= 10 ? 1 : 2) + "");
            json.setRows(rows);
            
            flexjson.JSONSerializer serializer = new flexjson.JSONSerializer();
            jsonResult = serializer.exclude("*.class").deepSerialize(json);

        } catch (SQLException ex) {
            Logger.getLogger(clsConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listado;
    }
    
    public int buscarPorFecha2(String fecha) {

        
        String jsonResult = "";
        String sql = "";
        if(fecha.equals("ARR"))
        sql = "Select count(*) from inmuebles where upper(estado)='ARRENDAMIENTO'";
        else
            if(fecha.equals("VEN"))
                sql = "Select count(*) from inmuebles where upper(estado)='VENTA'";
            else 
                if(fecha.equals("OFE"))
                    sql = "Select count(*) from inmuebles;";
        int col = 1;
        int columnas = 1;
        int cantidadTotal = 0;
        try {
            JQGridJSONModel json = new JQGridJSONModel();
            java.util.List<JQGridRow> rows = new java.util.ArrayList<JQGridRow>();
            JQGridRow row = new JQGridRow();
            java.util.List<String> cells = new java.util.ArrayList<String>();
            st = getCon().createStatement();
            res = st.executeQuery(sql);
            
            int y = 1;
            while (res.next()) {
                cells = new java.util.ArrayList<String>();
                row = new JQGridRow();
                //row.setId(Integer.parseInt(res.getString(0)));
                row.setId(y);
                
                col = 1;
                while (col <= columnas) {
                    cells.add(res.getString(col));
                   
                    cantidadTotal = Integer.parseInt(res.getString(col));
                    col++;
                    
                }
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            if(y==1){
                cells = new java.util.ArrayList<String>();
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("NO SE PUEDE");
                 row = new JQGridRow();
                row.setId(y);
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            json.setPage("1");
            json.setRecords(y);
            json.setTotal("+" + (y <= 10 ? 1 : 2) + "");
            json.setRows(rows);
            
            flexjson.JSONSerializer serializer = new flexjson.JSONSerializer();
            jsonResult = serializer.exclude("*.class").deepSerialize(json);

        } catch (SQLException ex) {
            Logger.getLogger(clsConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return cantidadTotal;
    }
    
    public int buscarAno(int año, String tipo) {

        
        String jsonResult = "";
        String sql = "";
        if(tipo.equals("ARR"))
       sql = "select count(*) from contratos where to_char(fecha, 'yyyy') = '" +año+"' and upper(descripcion)='ARRENDAMIENTO'" ;
        else
              if(tipo.equals("VEN"))
            sql = "select count(*) from contratos where to_char(fecha, 'yyyy') = '" +año+"' and upper(descripcion)='VENTA'" ;
    else
        if(tipo.equals("USU"))
            sql = "select count(*) from personas where to_char(fecha_registro, 'yyyy') = '" +año+"'" ;
        else
        if(tipo.equals("INM"))
            sql = "select count(*) from inmuebles where to_char(fecha_registro, 'yyyy') = '" +año+"'" ;
        int col = 1;
        int columnas = 1;
        int cantidadTotal = 0;
        try {
            JQGridJSONModel json = new JQGridJSONModel();
            java.util.List<JQGridRow> rows = new java.util.ArrayList<JQGridRow>();
            JQGridRow row = new JQGridRow();
            java.util.List<String> cells = new java.util.ArrayList<String>();
            st = getCon().createStatement();
            res = st.executeQuery(sql);
            
            int y = 1;
            while (res.next()) {
                cells = new java.util.ArrayList<String>();
                row = new JQGridRow();
                //row.setId(Integer.parseInt(res.getString(0)));
                row.setId(y);
                
                col = 1;
                while (col <= columnas) {
                    cells.add(res.getString(col));
                   String aux = res.getString(col);
                            System.out.println(aux);
                            
                            if(aux != null)
                    cantidadTotal = Integer.parseInt(res.getString(col));
                            else
                                cantidadTotal+=0;
                    col++;
                    
                }
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            if(y==1){
                cells = new java.util.ArrayList<String>();
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("NO SE PUEDE");
                 row = new JQGridRow();
                row.setId(y);
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            json.setPage("1");
            json.setRecords(y);
            json.setTotal("+" + (y <= 10 ? 1 : 2) + "");
            json.setRows(rows);
            
            flexjson.JSONSerializer serializer = new flexjson.JSONSerializer();
            jsonResult = serializer.exclude("*.class").deepSerialize(json);

        } catch (SQLException ex) {
            Logger.getLogger(clsConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return cantidadTotal;
    }
    
    public double buscarAnoGanancia(int año, String tipo) {

        
        String jsonResult = "";
        String sql = "";
        if(tipo.equals("ARR"))
       sql = "select sum(valor) from contratos where to_char(fecha, 'yyyy') = '" +año+"' and upper(descripcion)='ARRENDAMIENTO'" ;
        else
            if(tipo.equals("VEN"))
            sql = "select sum(valor) from contratos where to_char(fecha, 'yyyy') = '" +año+"' and upper(descripcion)='VENTA'" ;
        if(tipo.equals("USU"))
            sql = "select sum(valor) from contratos where to_char(fecha, 'yyyy') = '" +año+"' and upper(descripcion)='VENTA'" ;
        int col = 1;
        int columnas = 1;
        int cantidadTotal = 0;
        try {
            JQGridJSONModel json = new JQGridJSONModel();
            java.util.List<JQGridRow> rows = new java.util.ArrayList<JQGridRow>();
            JQGridRow row = new JQGridRow();
            java.util.List<String> cells = new java.util.ArrayList<String>();
            st = getCon().createStatement();
            res = st.executeQuery(sql);
            
            int y = 1;
            while (res.next()) {
                cells = new java.util.ArrayList<String>();
                row = new JQGridRow();
                //row.setId(Integer.parseInt(res.getString(0)));
                row.setId(y);
                
                col = 1;
                while (col <= columnas) {
                    cells.add(res.getString(col));
                   String aux = res.getString(col);
                            System.out.println(aux);
                            
                            if(aux != null)
                    cantidadTotal = Integer.parseInt(res.getString(col));
                            else
                                cantidadTotal+=0;
                    col++;
                    
                }
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            if(y==1){
                cells = new java.util.ArrayList<String>();
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("NO SE PUEDE");
                 row = new JQGridRow();
                row.setId(y);
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            json.setPage("1");
            json.setRecords(y);
            json.setTotal("+" + (y <= 10 ? 1 : 2) + "");
            json.setRows(rows);
            
            flexjson.JSONSerializer serializer = new flexjson.JSONSerializer();
            jsonResult = serializer.exclude("*.class").deepSerialize(json);

        } catch (SQLException ex) {
            Logger.getLogger(clsConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return cantidadTotal;
    }
    
    public int buscarMes(int mes,int año, String tipo) {

        
        String jsonResult = "";
        String sql = "";
        if(mes < 10 && tipo.equals("ARR"))
       sql = "select count(*) from contratos where to_char(fecha, 'mm') = '0"+mes+"' and to_char(fecha, 'yyyy') = '"+año+"' and upper(descripcion)='ARRENDAMIENTO'" ;
        else 
            if(tipo.equals("ARR"))
            sql = "select count(*) from contratos where to_char(fecha, 'mm') = '"+mes+"' and to_char(fecha, 'yyyy') = '"+año+"' and upper(descripcion)='ARRENDAMIENTO'";
        else
                if(mes <10 && tipo.equals("VEN"))
                     sql = "select count(*) from contratos where to_char(fecha, 'mm') = '0"+mes+"' and to_char(fecha, 'yyyy') = '"+año+"' and upper(descripcion)='VENTA'";
                else
                    if(tipo.equals("VEN"))
                     sql = "select count(*) from contratos where to_char(fecha, 'mm') = '"+mes+"' and to_char(fecha, 'yyyy') = '"+año+"' and upper(descripcion)='VENTA'";
        else
                if(mes <10 && tipo.equals("USU"))
                     sql = "select count(*) from personas where to_char(fecha_registro, 'mm') = '0"+mes+"' and to_char(fecha_registro, 'yyyy') = '"+año+"'";
                else
                    if(tipo.equals("USU"))
                     sql = "select count(*) from personas where to_char(fecha_registro, 'mm') = '"+mes+"' and to_char(fecha_registro, 'yyyy') = '"+año+"'";
        else
                if(mes <10 && tipo.equals("INM"))
                     sql = "select count(*) from inmuebles where to_char(fecha_registro, 'mm') = '0"+mes+"' and to_char(fecha_registro, 'yyyy') = '"+año+"'";
                else
                    if(tipo.equals("INM"))
                     sql = "select count(*) from inmuebles where to_char(fecha_registro, 'mm') = '"+mes+"' and to_char(fecha_registro, 'yyyy') = '"+año+"'";
        int col = 1;
        int columnas = 1;
        int cantidadTotal = 0;
        try {
            JQGridJSONModel json = new JQGridJSONModel();
            java.util.List<JQGridRow> rows = new java.util.ArrayList<JQGridRow>();
            JQGridRow row = new JQGridRow();
            java.util.List<String> cells = new java.util.ArrayList<String>();
            st = getCon().createStatement();
            res = st.executeQuery(sql);
            
            int y = 1;
            while (res.next()) {
                cells = new java.util.ArrayList<String>();
                row = new JQGridRow();
                //row.setId(Integer.parseInt(res.getString(0)));
                row.setId(y);
                
                col = 1;
                while (col <= columnas) {
                    cells.add(res.getString(col));
                   
                    cantidadTotal = Integer.parseInt(res.getString(col));
                    col++;
                    
                }
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            if(y==1){
                cells = new java.util.ArrayList<String>();
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("NO SE PUEDE");
                 row = new JQGridRow();
                row.setId(y);
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            json.setPage("1");
            json.setRecords(y);
            json.setTotal("+" + (y <= 10 ? 1 : 2) + "");
            json.setRows(rows);
            
            flexjson.JSONSerializer serializer = new flexjson.JSONSerializer();
            jsonResult = serializer.exclude("*.class").deepSerialize(json);

        } catch (SQLException ex) {
            Logger.getLogger(clsConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return cantidadTotal;
    }
    
    public double buscarMesGanancia(int mes, int año, String tipo) {

        
        String jsonResult = "";
        String sql = "";
        if(mes <10 && tipo.equals("ARR"))
       sql = "select sum(valor) from contratos where to_char(fecha, 'mm') ='0"+mes+"' and to_char(fecha, 'yyyy') = '"+año+"' and upper(descripcion)='ARRENDAMIENTO'" ;
        else
            if(tipo.equals("ARR"))
            sql = "select sum(valor) from contratos where to_char(fecha, 'mm') = '"+mes+"' and to_char(fecha, 'yyyy') = '"+año+"' and upper(descripcion)='ARRENDAMIENTO'" ;
        else
                if(mes < 10 && tipo.equals("VEN"))
                    sql = "select sum(valor) from contratos where to_char(fecha, 'mm') ='0"+mes+"' and to_char(fecha, 'yyyy') = '"+año+"' and upper(descripcion)='VENTA'" ;
        else
                    if(tipo.equals("VEN"))
            sql = "select sum(valor) from contratos where to_char(fecha, 'mm') = '"+mes+"' and to_char(fecha, 'yyyy') = '"+año+"' and upper(descripcion)='VENTA'" ;
       else
                if(mes <10 && tipo.equals("USU"))
                     sql = "select count(*) from personas where to_char(fecha_registro, 'mm') = '0"+mes+"' and to_char(fecha_registro, 'yyyy') = '"+año+"'";
                else
                    if(tipo.equals("USU"))
                     sql = "select count(*) from personas where to_char(fecha_registro, 'mm') = '"+mes+"' and to_char(fecha_registro, 'yyyy') = '"+año+"'";
         else
                if(mes <10 && tipo.equals("INM"))
                     sql = "select count(*) from inmuebles where to_char(fecha_registro, 'mm') = '0"+mes+"' and to_char(fecha_registro, 'yyyy') = '"+año+"'";
                else
                    if(tipo.equals("INM"))
                     sql = "select count(*) from inmuebles where to_char(fecha_registro, 'mm') = '"+mes+"' and to_char(fecha_registro, 'yyyy') = '"+año+"'";
        int col = 1;
        int columnas = 1;
        int cantidadTotal = 0;
        try {
            JQGridJSONModel json = new JQGridJSONModel();
            java.util.List<JQGridRow> rows = new java.util.ArrayList<JQGridRow>();
            JQGridRow row = new JQGridRow();
            java.util.List<String> cells = new java.util.ArrayList<String>();
            st = getCon().createStatement();
            res = st.executeQuery(sql);
            
            int y = 1;
            while (res.next()) {
                cells = new java.util.ArrayList<String>();
                row = new JQGridRow();
                //row.setId(Integer.parseInt(res.getString(0)));
                row.setId(y);
                
                col = 1;
                while (col <= columnas) {
                    cells.add(res.getString(col));
                   String aux = res.getString(col);
                            System.out.println(aux);
                            
                            if(aux != null)
                    cantidadTotal = Integer.parseInt(res.getString(col));
                            else cantidadTotal += 0;
                    col++;
                    
                }
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            if(y==1){
                cells = new java.util.ArrayList<String>();
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("NO SE PUEDE");
                 row = new JQGridRow();
                row.setId(y);
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            json.setPage("1");
            json.setRecords(y);
            json.setTotal("+" + (y <= 10 ? 1 : 2) + "");
            json.setRows(rows);
            
            flexjson.JSONSerializer serializer = new flexjson.JSONSerializer();
            jsonResult = serializer.exclude("*.class").deepSerialize(json);

        } catch (SQLException ex) {
            Logger.getLogger(clsConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return cantidadTotal;
    }
    
    public LinkedList<Persona> buscarPersonaPorFecha(String fecha) {

        LinkedList<modelo.Persona> listado = new LinkedList<modelo.Persona>();
        String jsonResult = "";
        String sql = "";
        
                             sql = "select * from personas where to_char(fecha_registro, 'yyyy') = '"+fecha+"';";
        int col =9;
        int columnas = 9;
        try {
            JQGridJSONModel json = new JQGridJSONModel();
            java.util.List<JQGridRow> rows = new java.util.ArrayList<JQGridRow>();
            JQGridRow row = new JQGridRow();
            java.util.List<String> cells = new java.util.ArrayList<String>();
            st = getCon().createStatement();
            res = st.executeQuery(sql);
            
            int y = 1;
            while (res.next()) {
                cells = new java.util.ArrayList<String>();
                row = new JQGridRow();
                //row.setId(Integer.parseInt(res.getString(0)));
                row.setId(y);
                modelo.Persona persona = new modelo.Persona();
                col = 1;
                while (col <= columnas) {
                    cells.add(res.getString(col));
                    if(col==1)
                        persona.setIdentificacion(Integer.parseInt(res.getString(col)));
                    else
                        if(col==2)
                            persona.setTipoIdentificacion(res.getString(col));
                            else
                        if(col==3)
                            persona.setNombre(res.getString(col));
                            else
                        if(col==4)
                           persona.setApellido((res.getString(col)));
                            else
                        if(col==5)
                            persona.setDireccion(res.getString(col));
                            else
                        if(col==6){
                            String aux = res.getString(col);
                            System.out.println(aux);
                            
                            if(aux != null)
                            persona.setTelefono(res.getString(col));
                        }
                            else
                        if(col==7)
                            persona.setCorreo(res.getString(col));
                            else
                        if(col==8)
                            persona.setContrasena(res.getString(col));
                            else
                        if(col==9)
                            persona.setRol(res.getString(col));
                            
                    
                            
                    col++;
                    if(col==9)
                        listado.add(persona);
                }
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            if(y==1){
                cells = new java.util.ArrayList<String>();
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("FECHA INCORRECTA");
                cells.add("NO SE PUEDE");
                 row = new JQGridRow();
                row.setId(y);
                row.setCell(cells);
                rows.add(row);
                y++;
            }
            json.setPage("1");
            json.setRecords(y);
            json.setTotal("+" + (y <= 10 ? 1 : 2) + "");
            json.setRows(rows);
            
            flexjson.JSONSerializer serializer = new flexjson.JSONSerializer();
            jsonResult = serializer.exclude("*.class").deepSerialize(json);

        } catch (SQLException ex) {
            Logger.getLogger(clsConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listado;
    }
}
