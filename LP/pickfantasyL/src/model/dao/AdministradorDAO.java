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
import javax.swing.JOptionPane;
import model.bean.Usuario;

/**
 *
 * @author brhue
 */
public class AdministradorDAO extends UsuarioDAO{
    
    public static boolean checkCorrect(String codAdm){
        boolean check = false;
       
       Connection con = ConnectionFactory.getConnection();
       PreparedStatement stmt = null;
       ResultSet rs = null;
       // ADICIONAR VERIFICAÇÃO DE TIPO
       try {
            stmt = con.prepareStatement("SELECT * FROM USUARIO WHERE  user_name = ? and email= ? AND codADM = ?");
            stmt.setString(1, codAdm);
            
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
    
    public static void create(String userName, String email){
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
         try {
            stmt = con.prepareStatement("UPDATE USUARIO SET tipo=? WHERE  user_name = ? and email= ?");
            stmt.setInt(1, 1); // Colocando como tipo = 1 
            stmt.setString(2,userName);
            stmt.setString(3,email);
            stmt.executeUpdate();            
           
                    
                    } catch (SQLException ex) {
                        JOptionPane.showMessageDialog(null,"Erro ao autenteicar usuário: " + ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        
    }
}
