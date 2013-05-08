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

    public StringBuffer cmbGenera(String tabla, int col) {
        StringBuffer sb = new StringBuffer();
        try {
            ResultSet resC = null;
            String sql = "Select * from " + tabla.toString();
            st = getCon().createStatement();
            resC = st.executeQuery(sql);
            sb.append("<select name=\"" + resC.getMetaData().getColumnName(2) + "\" id=\"" + resC.getMetaData().getColumnName(2) + "\"");
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
}
