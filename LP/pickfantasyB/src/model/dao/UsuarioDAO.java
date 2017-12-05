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
import model.bean.UsuarioADM;
import model.bean.UsuarioComum;

/**
 *
 * @author brhue
 */
public class UsuarioDAO{
    
    // INSERINDO DADOS
    
    public static void create(UsuarioComum u){
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        
        try {
            stmt = con.prepareStatement("INSERT INTO USUARIO( user_name, nome, email,palavra_chave, senha) VALUES (?,?,?,?,?)");
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
    
    public static void create(UsuarioADM u){
         Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        
        try {
            stmt = con.prepareStatement("INSERT INTO USUARIO( user_name, nome, email,palavra_chave, senha, tipo) VALUES (?,?,?,?,?,?)");
            stmt.setString(1, u.getUser_name());
            stmt.setString(2, u.getNome());
            stmt.setString(3, u.getEmail());
            stmt.setString(4, u.getPalavraChave());
            stmt.setString(5, u.getSenha());
            stmt.setInt(6,u.getTipo());
            
            
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null,"Adimistrador criado com sucesso!");
        }catch(SQLException ex){
            JOptionPane.showMessageDialog(null,"Erro ao salvar!" + ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt);
            }
    }
    
   public static boolean checkLogin(String login, String senha){
        // Checando login na tentativa de logar no sistema
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        boolean check = false;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM USUARIO WHERE user_name = ? and senha = ?");
            stmt.setString(1, login);
            stmt.setString(2, senha);
            
            rs = stmt.executeQuery();
            
            while(rs.next()){
                check = true;
            }
                    
                    } catch (SQLException ex) {
                        JOptionPane.showMessageDialog(null,"Erro ao autenteicar usuário: " + ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        
      
        
        return check;
        
    }
   
   public static boolean userExists(String txtUser, String txtEmail){
       // Checando a existência do usuário para recuperar a conta
       Connection con = ConnectionFactory.getConnection();
       PreparedStatement stmt = null;
       ResultSet rs = null;
       boolean check = false;
       
        try {
            stmt = con.prepareStatement("SELECT * FROM USUARIO WHERE user_name = ? OR email = ?");
            stmt.setString(1, txtUser);
            stmt.setString(2, txtEmail);
            rs = stmt.executeQuery();
            while(rs.next()){
                check = true;
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"Não foi possível verificar: "+ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return check;
       
    }
   
   public static boolean checkCorrect(String email, String palavra_chave){
       // Verificando se os dados passados para recuperar a conta, estão corretos
       boolean check = false;
       
       Connection con = ConnectionFactory.getConnection();
       PreparedStatement stmt = null;
       ResultSet rs = null;
       // ADICIONAR VERIFICAÇÃO DE TIPO
       try {
            stmt = con.prepareStatement("SELECT * FROM USUARIO WHERE  email = ? and palavra_chave= ?");
            stmt.setString(1, email);
            stmt.setString(2, palavra_chave);
            
            rs = stmt.executeQuery();
            
            while(rs.next()){
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
       // Para resetar a senha do usuário
       Connection con = ConnectionFactory.getConnection();
       PreparedStatement stmt = null;
       ResultSet rs = null;
       
        try {
            stmt = con.prepareStatement("UPDATE USUARIO SET senha = ? WHERE  email = ? AND palavra_chave = ?");
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
   
   public static int isAdm(String usuario){
       // Verificar o tipo de usuário, para determinar a tela que irá aparecer
       // 0 para usuário comum
       // 1 para ADM
       int tipo = 0;
       
       Connection con = ConnectionFactory.getConnection();
       PreparedStatement stmt = null;
       ResultSet rs = null;
      
       
        try {
            stmt = con.prepareStatement("SELECT * FROM USUARIO WHERE user_name = ?");
            stmt.setString(1, usuario);
            rs = stmt.executeQuery();
            
            while(rs.next()){
                tipo = rs.getInt("tipo_user");
            }
            
           
           
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"Não foi possível identificar o tipo do usuário." +ex);
        }
       
       
        return tipo;
   
       
   }
   
}
