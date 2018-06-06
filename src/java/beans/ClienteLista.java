/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.List;
import model.bean.ClienteBean;
import model.dao.ClienteDAO;

/**
 *
 * @author kleyton
 */
public class ClienteLista {
    public List<ClienteBean> getClientes() {
        ClienteDAO dao = new ClienteDAO();
        return dao.buscarTodos();
    }
}
