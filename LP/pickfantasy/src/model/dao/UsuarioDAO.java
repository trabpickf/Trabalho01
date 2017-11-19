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
import java.util.ArrayList;
import java.util.List;
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
            stmt = con.prepareStatement("INSERT INTO usuario( user_name, nome, email, senha, pontos) VALUES (?,?,?,?,?)");
            stmt.setString(1, u.getUser_name());
            stmt.setString(2, u.getNome());
            stmt.setString(3, u.getEmail());
            stmt.setString(4, u.getSenha());
            stmt.setInt(5, u.getPontos());
            
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
}
