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
            stmt = con.prepareStatement("SELECT * FROM usuario WHERE  user_name = ? and email= ? AND codADM = ?");
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
}
