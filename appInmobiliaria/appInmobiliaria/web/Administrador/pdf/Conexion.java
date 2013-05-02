package Administrador.pdf;




import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion implements Serializable {

    ResultSet res = null;
    private Connection con = null;
    Statement st = null;
    String driver = "org.postgresql.Driver";
    String url = "jdbc:postgresql://127.0.0.1/bdPrestamos_salas";
    String userDB = "postgres";
    String passDB = "";

    public Conexion() {
        conectar();
    }
    
    public int conectar() {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            System.out.println("No se pudo cargal el driver :-( " + driver);
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

    public String buscarS(String sql) {
        try {
            ResultSet r = null;
            st = getCon().createStatement();
            r = st.executeQuery(sql);
            r.next();
            return r.getString(1);
        } catch (SQLException e) {
            return "-1";
        }
    }

    public String buscarC(String sql, int c) {
        try {
            ResultSet r = null;
            st = getCon().createStatement();
            r = st.executeQuery(sql);
            if (r.next());
            return r.getString(c);
        } catch (SQLException e) {
            return "-1";
        }
    }

    public SQLException insertar(String sql) {
        try {
            st = getCon().createStatement(); // Se conecta con el motor
            st.execute(sql); // Ejecuta la intrucción
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

    public StringBuffer cmbGenera(String tabla, int col) {
        StringBuffer sb = new StringBuffer();
        try {
            ResultSet resC = null;
            String sql = "Select * from sala " + tabla.toString();
            st = getCon().createStatement();
            resC = st.executeQuery(sql);
            sb.append("<select name=\"" + resC.getMetaData().getColumnName(1) + "\" id=\"" + resC.getMetaData().getColumnName(1) + "\"");
            while (resC.next()) {
                //sb.append("<option value=\"" + resC.getString(1) + "\">" + resC.getString(col) + " </option>");
                sb.append("Descripción: " + "<br><table border=1><tr><th>"+  resC.getString(1) +"</th><th>"+ resC.getString(2) + "</th> <th>" +resC.getString(3)+"</th> <th>" +resC.getString(4)+"</th> <th>" +resC.getString(5)+"</th></tr></table><br>");
            }
            sb.append("</select>");
        } catch (SQLException e) {
            sb.append(e.toString());
            return sb;
        }
        return sb;
    }
    
    public StringBuffer cmbGeneraSalas(String tabla, int col) {
        StringBuffer sb = new StringBuffer();
        try {
            ResultSet resC = null;
            String sql = "Select * from sala " + tabla.toString();
            st = getCon().createStatement();
            resC = st.executeQuery(sql);
            sb.append("Descripción: " + "<br><table border=1><tr><th>"+  resC.getString(1) +"</th><th>"+ resC.getString(2) + "</th> <th>" +resC.getString(3)+"</th> <th>" +resC.getString(4)+"</th> <th>" +resC.getString(5)+"</th></tr></table><br>");
            //sb.append("<select name=\"" + resC.getMetaData().getColumnName(1) + "\" id=\"" + resC.getMetaData().getColumnName(1) + "\"");
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
    
    public StringBuffer cmbGeneraEstado(String tabla, int col) {
        StringBuffer sb = new StringBuffer();
        try {
            ResultSet resC = null;
            String sql = "Select * from estado_sala " + tabla.toString();
            st = getCon().createStatement();
            resC = st.executeQuery(sql);
            sb.append("<select name=\"" + resC.getMetaData().getColumnName(1) + "\" id=\"" + resC.getMetaData().getColumnName(1) + "\"");
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
    
    public StringBuffer cmbGeneraIdSala(String tabla, int col) {
        StringBuffer sb = new StringBuffer();
        try {
            ResultSet resC = null;
            String sql = "Select * from sala " + tabla.toString();
            st = getCon().createStatement();
            resC = st.executeQuery(sql);
            sb.append("<select name=\"" + resC.getMetaData().getColumnName(1) + "\" id=\"" + resC.getMetaData().getColumnName(1) + "\"");
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

    /**
     * @return the con
     */
    public Connection getCon() {
        return con;
    }
}
