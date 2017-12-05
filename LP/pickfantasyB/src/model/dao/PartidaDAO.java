/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import connection.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import model.bean.Time;

/**
 *
 * @author brhue
 */
public class PartidaDAO {
    
    
    public void adicionar(int pTime1,int pTime2,String ganhador, String data){
        //Antes é passado pelo CheckTimeExiste
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        
        
        
        try {
            stmt = con.prepareStatement("INSERT INTO partida (pTime1, pTime2, ganhador, data) VALUES (?,?,?,?)");
            stmt.setInt(1,pTime1);
            stmt.setInt(2, pTime2);
            stmt.setString(2, ganhador);
            stmt.setString(2, data);
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null,"Time adicionado com sucesso!");
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"Não foi possivel adicionar o time. "+ex);
        }finally{
            ConnectionFactory.closeConnection(con,stmt);
        }
    }
}
