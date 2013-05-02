package modelo;

/**
 *
 * @author Camilo
 */
import java.io.File;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class CargadorArchivos {

    String relativePath = "C:\\Users\\usuario\\Documents\\NetBeansProjects\\appInmobiliaria\\web\\fotos" ;
    String mensaje = "No se subió ningun archivo";

    /**
     * Comienza a procesar los datos del formulario
     *
     * @param request	Request actual con los datos del formulario
     * @param context	Context del servlet/jsp
     * @return	String con el resultado del proceso
     */
    public String cargarArchivo(HttpServletRequest request, ServletContext context) {
        if (request.getParameter("form") != null) {
            this.parseRequest(request);
        }
        return mensaje;
    }

    /**
     * Parsea los campos del formulario para almacenarlos en una lista
     *
     * @param request	Request con los datos del formulario
     */
    private void parseRequest(HttpServletRequest request) {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        try {
            List items = upload.parseRequest(request);
            this.verCamposFile(items);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
    }

    /**
     * Recorre la lista de campos del formulario hasta encontrar alguno de tipo
     * file
     *
     * @param items	Lista de items/campos de formulario
     */
    private void verCamposFile(List items) {
        Iterator iter = items.iterator();
        while (iter.hasNext()) {
            FileItem item = (FileItem) iter.next();
            if (!item.isFormField()) {

                this.subirArchivo(item);
            }
        }
    }

    /**
     * Procesa el archivo enviado desde el formulario y lo almacena en el
     * servidor con el nombre original en la misma ubicacion en q se encuentra
     * el jsp que utiliza esta clase
     *
     * @param item	Item con los datos del archivo
     */
    public void subirArchivo(FileItem item) {

        Archivo filename = new Archivo(item.getName(), '\\', '.');
        if (validarExtension(filename.extension())) {
            String file = filename.filename() + "." + filename.extension();
            File uploadedFile = new File(this.relativePath, file);
            mensaje = "Archivo Procesado con éxito";
            try {
                item.write(uploadedFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public boolean validarExtension(String extension) {
        String extensionesValidas[] = {"jpg", "jpeg", "png"};
        for (String x : extensionesValidas) {
            if (x.equals(extension.toLowerCase())) {
                return true;
            }
        }
        return false;
    }
}
