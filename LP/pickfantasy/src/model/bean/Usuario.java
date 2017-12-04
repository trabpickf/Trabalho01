/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

/**
 *
 * @author brhue
 */
public class Usuario {
    private String nome;
    private String user_name;
    private String senha;
    private String email;
    private String palavraChave;
    private int tipo = 0;
    
    public Usuario(String nome, String user_name, String senha, String email, String palavraChave){
        this.nome = nome;
        this.user_name = user_name;
        this.senha = senha;
        this.email = email;
        this.palavraChave = palavraChave;
    }
    
    public Object tipoUser(){
        return this.getClass();
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public String getPalavraChave() {
        return palavraChave;
    }

    public void setPalavraChave(String palavraChave) {
        this.palavraChave = palavraChave;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    private int pontos;
    private int user_id;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }


    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    
    
    
    
}
