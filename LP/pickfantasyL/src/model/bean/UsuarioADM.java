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
public class UsuarioADM extends Usuario {
    private int tipo=1;
    private String codAdm;

   
    public UsuarioADM(String nome, String user_name, String senha, String email, String palavraChave){
        super(nome, user_name, senha, email, palavraChave);
   
        
    }
    
     public String getCodAdm() {
        return codAdm;
    }

    public void setCodAdm(String codAdm) {
        this.codAdm = codAdm;
    }

    
    
    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
}
