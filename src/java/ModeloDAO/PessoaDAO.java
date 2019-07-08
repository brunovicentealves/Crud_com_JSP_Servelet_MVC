package ModeloDAO;

import Config.conexao;
import Modelo.Pessoas;
import View.CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bruno.alves
 */
public class PessoaDAO implements CRUD {

    conexao cn = new conexao();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Pessoas p = new Pessoas();

    @Override
    public List listar() {
        ArrayList<Pessoas> list = new ArrayList<>();
        String Sql = "select * from pessoas";
        try {

            con = cn.getconeConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Pessoas pes = new Pessoas();
                pes.setId(rs.getInt("Id"));
                pes.setNome(rs.getString("Nome"));
                pes.setCpf(rs.getString("Cpf"));
                list.add(pes);
            }
        } catch (Exception e) {
            System.out.println("erro" + e);
        }

        return list;
    }

    @Override
    public Pessoas list(int id) {
        String Sql = "select * from pessoas where id=" + id;
        try {
            con = cn.getconeConnection();
            ps = con.prepareStatement(Sql);
            rs = ps.executeQuery();

            while (rs.next()) {

                p.setId(rs.getInt("Id"));
                p.setNome(rs.getString("Nome"));
                p.setCpf(rs.getString("Cpf"));

            }
        } catch (Exception e) {
            System.out.println("erro" + e);
        }

        return p;
    }

    @Override
    public boolean adcionar(Pessoas pes) {
        String sql = "insert into pessoas (nome ,cpf) values('" + pes.getNome() + "','" + pes.getCpf() + "')";

        try {
            con = cn.getconeConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("Erro ao Adcionar " + e);
        }
        return false;
    }

    @Override
    public boolean editar(Pessoas pes) {
        String sql = "update pessoas set nome='" + pes.getNome() + "',cpf='" + pes.getCpf() + "'where id=" + pes.getId();
        try {
            con = cn.getconeConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Erro ao Adcionar " + e);
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from pessoas where id="+id;
        try {
            con=cn.getconeConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Erro ao Adcionar " + e);
        }
        return false;
    }

}
