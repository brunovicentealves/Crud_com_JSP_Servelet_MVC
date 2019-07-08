
package View;

import Modelo.Pessoas;
import java.util.List;

/**
 *
 * @author bruno.alves
 */
public interface CRUD {

    
    public List listar();
    public Pessoas list(int id);
    public boolean adcionar(Pessoas pes);
    public boolean editar(Pessoas pes);
    public boolean eliminar(int id);
    
    
    
}
