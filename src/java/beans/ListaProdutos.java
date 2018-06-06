/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.List;
import model.bean.ProdutoBean;
import model.dao.ProdutoDAO;

/**
 *
 * @author kleyton
 */
public class ListaProdutos {
    
    public List<ProdutoBean> getProdutos() {
        ProdutoDAO dAO = new ProdutoDAO();
        return dAO.buscarTodos();
    }
    
}
