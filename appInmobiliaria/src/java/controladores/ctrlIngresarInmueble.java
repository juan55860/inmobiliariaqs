/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Inmueble;

/**
 *
 * @author camilo
 */
public class ctrlIngresarInmueble {

    modelo.clsConexionBD conexion = new modelo.clsConexionBD();
    private Inmueble inmueble;
    private String tabla;

    public String getTabla() {
        return tabla;
    }

    public ctrlIngresarInmueble() {
        tabla = "";
    }

    public ctrlIngresarInmueble(Inmueble inmueble) {
        this.inmueble = inmueble;
    }

    public boolean validarDatosInmueble(double precio, String barrio, String direccion, String tipoInmueble,
            int documento, double longitud, String estado, String foto) {
        if (precio > 0 && barrio != null && direccion != null && tipoInmueble != null && documento > 0 && longitud > 0 && estado != null && foto != null) {
            return true;
        } else {
            return false;
        }
    }

    public int insertarInmueblesBD(Inmueble inmueble) {
        if (buscarTipoInmueble(inmueble.getTipoInmueble()) != null && verificarCliente(inmueble.getPersona().getIdentificacion()) && buscarIdBarrio(inmueble.getBarrio()) != null) {
            String estadoBD = null;
            if (inmueble.getEstado().equals("1")) {
                estadoBD = "ARRENDAMIENTO";
            } else if (inmueble.getEstado().equals("2")) {
                estadoBD = "VENTA";
            }
            String codigoTipoInmueble = inmueble.getTipoInmueble();
            String codifoBarrio = inmueble.getBarrio();
            String SQL = "INSERT INTO inmuebles(codigo_tipoinmueble,precio,direccion,codigo_propietario,codigo_barrio,estado_check,longitud,num_bannos,num_habitaciones)"
                    + "VALUES('" + codigoTipoInmueble + "'," + Integer.valueOf(inmueble.getPrecio()) + ",'" + inmueble.getDireccion() + "',"
                    + inmueble.getPersona().getIdentificacion() + ",'" + codifoBarrio + "','" + estadoBD + "'," + inmueble.getLongitud()
                    + "," + inmueble.getNumbanios() + "," + inmueble.getNumHabitaciones() + ");";

            if (conexion.insertar(SQL) == null) {
                return 1;
            }

            return -1;// error
        }
        return -2;// error 
    }

    public StringBuffer buscarTipoInmueble(String key) {

        StringBuffer sb = new StringBuffer();
        try {
            java.sql.ResultSet rs = null;
            String sql = "SELECT codigo from tipoinmueble where codigo='" + key.toString() + "'";
            rs = conexion.consultar(sql);

            sb.append(rs.getString(1));

        } catch (SQLException ex) {
            Logger.getLogger(ctrlIngresarInmueble.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sb;
    }

    public StringBuffer buscarIdBarrio(String key) {

        StringBuffer sb = new StringBuffer();
        try {
            java.sql.ResultSet rs = null;
            String sql = "SELECT nombre from barrios where nombre='" + key.toString() + "'";
            rs = conexion.consultar(sql);

            sb.append(rs.getString(1));

        } catch (SQLException ex) {
            Logger.getLogger(ctrlIngresarInmueble.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sb;
    }

    public boolean verificarCliente(int key) {
        String sql = "SELECT * FROM personas where identificacion=" + key + ";";
        if (conexion.verificar(sql) == 1) {
            return true;
        }
        return false;
    }

    public StringBuffer cargarComboCategoria(String categoria) {
        if (categoria != null) { // Categoria del html
            StringBuffer sb = new StringBuffer();
            sb.append("<label>Descripcion</label>");
            sb.append("<textarea id='descripcion' name='descripcion'  cols='38' rows='8' style='color:#ffffff; background: #131313; font-family: Arial, Helvetica, sans-serif;\n"
                    + "font-size: 14px;' type='text'></textarea>");
            if (categoria.equals("COMERCIAL")) {
                sb.append(" <label>Tipo de Inmueble</label>");
                sb.append("<select name='tipoInmueble' id='tipoInmueble'>");
                sb.append("<option value='LOCAL'>LOCAL</option>");
                sb.append("<option value='OFICINA'>OFICINA</option>");
                sb.append("<option value='CONSULTORIO'>CONSULTORIO</option>");
                sb.append("<option value='BODEGA'>BODEGA</option>");
                sb.append("<option value='PARQUEADERO'>PARQUEADERO</option>");
                sb.append("</select>");
                StringBuffer bf = (conexion.cmbGenera("barrios", 2));
                sb.append("<div> <label>Barrio</label>");
                sb.append(bf);
                sb.append("</div>");
                sb.append("<div> <label>Numero de Baños</label>");
                sb.append("<input required id='numbanios' name='numbanios' type='number'></input>");
                sb.append("</div>");
                sb.append("<div> <label>Numero de Pisos</label>");
                sb.append("<input required id='numpisos' name='numpisos' type='number'></input>");
                sb.append("</div>");
            } else if (categoria.equals("RESIDENCIAL")) {
                sb.append(" <label>Tipo de Inmueble</label>");
                sb.append("<select name='tipoInmueble' id='tipoInmueble'>");
                sb.append("<option value='CASA'>CASA</option>");
                sb.append("<option value='APARTAMENTO'>APARTAMENTO</option>");
                sb.append("<option value='ESTUDIO'>ESTUDIO</option>");
                sb.append("</select>");
                StringBuffer bf = (conexion.cmbGenera("barrios", 2));
                sb.append("<div> <label>Barrio</label>");
                sb.append(bf);
                sb.append("</div>");
                sb.append("<div> <label>Numero de Baños</label>");
                sb.append("<input required id='numbanios' name='numbanios' type='number'></input>");
                sb.append("</div>");
                sb.append("<div> <label>Numero de Pisos</label>");
                sb.append("<input required id='numpisos' name='numpisos' type='number'></input>");
                sb.append("</div>");
                sb.append("<div> <label>Numero de habitaciones</label>");
                sb.append("<input required id='habitaciones' name='habitaciones' type='number'></input>");
                sb.append("</div>");
                sb.append("<div class='select-1'> <label>Tiene Parqueadero?</label>");
                sb.append("<select name='parq' id='parq'>");
                sb.append("<option value='true'>SI</option>");
                sb.append("<option value='false'>NO</option>");

                sb.append("</select>");
                sb.append("</div>");
            } else if (categoria.equals("EDIFICIO")) {
                sb.append("<div> <label>Numero de parqueaderos</label>");
                sb.append("<input required id='numparq' name='numparq' type='number'></input>");
                sb.append("</div>");
                sb.append("<div> <label>Numero de Pisos</label>");
                sb.append("<input required id='numpisos' name='numpisos' type='number'></input>");
                sb.append("</div>");
            } else if (categoria.equals("RURAL")) {
                sb.append(" <label>Tipo de Inmueble</label>");
                sb.append("<select name='tipoInmueble' id='tipoInmueble'>");
                sb.append("<option value='FINCA'>FINCA</option>");
                sb.append("<option value='CASACAMPESTRE'>CASACAMPESTRE</option>");
                sb.append("<option value='CABAÑA'>CABAÑA</option>");
                sb.append("</select>");
                sb.append("<div> <label>Numero de habitaciones</label>");
                sb.append("<input required id='habitaciones' name='habitaciones' type='number'></input>");
                sb.append("</div>");
                sb.append("<div> <label>Numero de baños</label>");
                sb.append("<input required id='numbanios' name='numbanios' type='number'></input>");
                sb.append("</div>");
                sb.append("<div> <label>Numero de Pisos</label>");
                sb.append("<input required id='numpisos' name='numpisos' type='number'></input>");
                sb.append("</div>");
                sb.append("<div> <label>Numero de Piscinas</label>");
                sb.append("<input required id='numpiscinas' name='numpiscinas' type='number'></input>");
                sb.append("</div>");
            } else if (categoria.equals("LOTE")) {
                sb.append("<label>Tipo</label>");
                sb.append("<select name='tipo' id='tipo'>");
                sb.append("<option value='construccion'>CONSTRUCCION</option>");
                sb.append("<option value='cultivo'>CULTIVO</option>");
                sb.append("<option value='ganaderia'>GANADERIA</option>");
                sb.append("</select>");
//                sb.append("<textarea id='tipo' name='tipo'  cols='38' rows='8' style='color:#ffffff; background: #131313; font-family: Arial, Helvetica, sans-serif;\n"
//                        + "font-size: 14px;' type='text'></textarea>");
            }
            return sb;
        } else {
            return null;
        }
    }

    public String direccionarJsp(String cat) {
        String jsp = "";
        cat = cat.toLowerCase();
        switch (cat) {
            case "edificio":
                jsp = "prcIngresarEdificio.jsp";
                tabla = "edificios";
                break;
            case "comercial":
                jsp = "prcIngresarComercial.jsp";
                tabla = "comerciales";
                break;
            case "rural":
                jsp = "prcIngresarRural.jsp";
                tabla = "rurales";
                break;
            case "residencial":
                jsp = "prcIngresarResidencial.jsp";
                tabla = "residenciales";
                break;
            case "lote":
                jsp = "prcIngresarLote.jsp";
                tabla = "lotes";
                break;
            default:
                jsp = "frmSeleccionInmueble.jsp";
                tabla = "inmuebles";
                break;
        }
        return jsp;
    }
}