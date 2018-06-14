/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

/**
 *
 * @author kleyton
 */
public class ProdutoBean {
    int id;
    int preco;
    String nome;
    String descricao;

    public ProdutoBean() {
    }

    public ProdutoBean(int preco, String nome, String descricao) {
        
        this.preco = preco;
        this.nome = nome;
        this.descricao = descricao;
    }

    public ProdutoBean(int id, int preco, String nome, String descricao) {
        this.id = id;
        this.preco = preco;
        this.nome = nome;
        this.descricao = descricao;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    

    public int getPreco() {
        return preco;
    }

    public void setPreco(int preco) {
        this.preco = preco;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    

}
