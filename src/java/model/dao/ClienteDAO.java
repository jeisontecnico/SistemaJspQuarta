package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.bean.ClienteBean;
import model.factory.ConnectionFactory;

public class ClienteDAO {

    private Connection con;

    public ClienteDAO() {
        this.con = new ConnectionFactory().getConnection();
    }

    public List<ClienteBean> buscarTodos() {
        List<ClienteBean> listCliente = new ArrayList<>();
        String sql = "select * from cliente";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ClienteBean clientBean = new ClienteBean(String.valueOf(rs.getInt("id")) ,rs.getString("nome"), rs.getString("sobrenome"), rs.getString("apelido"), 
                rs.getString("data_nascimento"));
                listCliente.add(clientBean);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listCliente;
    }

    public void cadastrar(ClienteBean cliente) {
        String sql = "insert into cliente(nome,sobrenome,apelido, data_nascimento) values(?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cliente.getNome());
            ps.setString(2, cliente.getSobrenome());
            ps.setString(3, cliente.getApelido());
            ps.setString(4, cliente.getNascimento());
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void deletar(String id) {
        String sql = "DELETE FROM cliente WHERE id =?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
           
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void update(ClienteBean cliente) {
        String sql = "update cliente SET nome=?, sobrenome=?, apelido=?, data_nascimento=? where id =?";
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cliente.getId());
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // VALIDAR LOGIN DO USUARIO
    public boolean autenticar(String nome, String senha) {
        String sql = "select * from usuario where nome=? and senha=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, nome);
            ps.setString(2, senha);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
