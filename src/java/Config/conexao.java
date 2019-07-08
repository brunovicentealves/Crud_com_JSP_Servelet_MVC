package Config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author bruno.alves
 */
public class conexao {

    Connection con;

    public conexao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_pessoa","root","");
            
        } catch (Exception e) {
            System.out.println("erro"+e);
        }

    }
    
    public Connection getconeConnection(){
    return con;
    }

}
