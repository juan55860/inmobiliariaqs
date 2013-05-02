package JSon;

import java.io.Serializable;
import java.util.List;

public class JQGridRow implements Serializable {

    private Integer id;
    private List<String> cell;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<String> getCell() {
        return cell;
    }

    public void setCell(List<String> cell) {
        this.cell = cell;
    }
}