/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.bean.ProdutoBean;
import model.factory.ConnectionFactory;


/**
 *
 * @author kleyton
 */
public class ProdutoDAO {
    
    private Connection con;

    public ProdutoDAO() {
        this.con = new ConnectionFactory().getConnection();
    }

    public List<ProdutoBean> buscarTodos() {
        List<ProdutoBean> listProduto = new ArrayList<>();
        String sql = "select * from produtos";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProdutoBean clientBean = new ProdutoBean(rs.getInt("preco"), rs.getString("nome"), rs.getString("descricao"));
                listProduto.add(clientBean);
            }
            rs.close();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listProduto;
    }

    public void cadastrar(ProdutoBean produto) {
        String sql = "insert into produtos(preco,nome,descricao) values(?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, produto.getPreco());
            ps.setString(2, produto.getNome());
            ps.setString(3, produto.getDescricao());
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}