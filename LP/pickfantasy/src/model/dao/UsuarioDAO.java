/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;
import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import model.bean.Usuario;

/**
 *
 * @author brhue
 */
public class UsuarioDAO {
    
    // INSERINDO DADOS
    
    public void create(Usuario u){
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        
        try {
            stmt = con.prepareStatement("INSERT INTO usuario( user_name, nome, email,palavra_chave, senha) VALUES (?,?,?,?,?)");
            stmt.setString(1, u.getUser_name());
            stmt.setString(2, u.getNome());
            stmt.setString(3, u.getEmail());
            stmt.setString(4, u.getPalavraChave());
            stmt.setString(5, u.getSenha());
            
            
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null,"Criado com sucesso!");
        }catch(SQLException ex){
            JOptionPane.showMessageDialog(null,"Erro ao salvar!" + ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt);
            }
    }
    
   public boolean checkLogin(String login, String senha){
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        boolean check = false;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM usuario WHERE user_name = ? and senha = ?");
            stmt.setString(1, login);
            stmt.setString(2, senha);
            
            rs = stmt.executeQuery();
            
            if(rs.next()){
                check = true;
            }
                    
                    } catch (SQLException ex) {
                        JOptionPane.showMessageDialog(null,"Erro ao autenteicar usuário: " + ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return check;
    }
   
   public boolean userExists(String txtUser, String txtEmail){
       
       Connection con = ConnectionFactory.getConnection();
       PreparedStatement stmt = null;
       ResultSet rs = null;
       boolean check = false;
       
        try {
            stmt = con.prepareStatement("SELECT * FROM usuario WHERE user_name = ? OR email = ?");
            stmt.setString(1, txtUser);
            stmt.setString(2, txtEmail);
            rs = stmt.executeQuery();
            if(rs.next()){
                check = true;
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"Não foi possível verificar: "+ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return check;
       
    }
   
   public boolean checkCorrect(String email, String palavra_chave){
       boolean check = false;
       
       Connection con = ConnectionFactory.getConnection();
       PreparedStatement stmt = null;
       ResultSet rs = null;
       // ADICIONAR VERIFICAÇÃO DE TIPO
       try {
            stmt = con.prepareStatement("SELECT * FROM usuario WHERE  email = ? and palavra_chave= ?");
            stmt.setString(1, email);
            stmt.setString(2, palavra_chave);
            
            rs = stmt.executeQuery();
            
            if(rs.next()){
                check = true;
            }
                    
                    } catch (SQLException ex) {
                        JOptionPane.showMessageDialog(null,"Erro ao autenteicar usuário: " + ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return check;
       
   }
   
   public static void resetPassword(String senha, String email ,String palavra_chave){
       
       Connection con = ConnectionFactory.getConnection();
       PreparedStatement stmt = null;
       ResultSet rs = null;
       
        try {
            stmt = con.prepareStatement("UPDATE usuario SET senha = ? WHERE  email = ? AND palavra_chave = ?");
            stmt.setString(1, senha);
            stmt.setString(2, email);
            stmt.setString(3, palavra_chave);
            
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null, "Senha alterada com sucesso!");
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"Houve um erro ao alterar o usuário: \n" +ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
   }
   
   

   
}
