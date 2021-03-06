package model.bean;

import java.sql.Date;

public class ClienteBean {
 
    String id;
    String nome;
    String sobrenome;
    String apelido;
    String nascimento;

    public ClienteBean() {
       
    }
    
    

    public ClienteBean(String id, String nome, String sobrenome, String apelido, String nascimento) {
        this.id = id;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.apelido = apelido;
        this.nascimento = nascimento;
    }
    
    public ClienteBean(String nome, String sobrenome, String apelido, String nascimento) {
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.apelido = apelido;
        this.nascimento = nascimento;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getApelido() {
        return apelido;
    }

    public void setApelido(String apelido) {
        this.apelido = apelido;
    }

    public String getNascimento() {
        return nascimento;
    }

    public void setNascimento(String nascimento) {
        this.nascimento = nascimento;
    }
    
    
}
