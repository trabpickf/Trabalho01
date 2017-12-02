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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author brhue
 */
public class TimeDAO {
    
    public void adicionarTime(String nomeTime, String nacionalidade){
        //Antes é passado pelo CheckTimeExiste
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try {
            stmt = con.prepareStatement("INSERT INTO time (nome, nacionalidade) VALUES (?,?)");
            stmt.setString(1,nomeTime);
            stmt.setString(2, nacionalidade);
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null,"Time adicionado com sucesso!");
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"Não foi possivel adicionar o time. "+ex);
        }finally{
            ConnectionFactory.closeConnection(con,stmt);
        }
    }
    
    public void removerTime(String nomeTime){
        //Antes é passado pelo CheckTimeExiste
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try {
            stmt = con.prepareStatement("DELETE FROM time WHERE time = ?");
            stmt.setString(1, nomeTime);
            stmt.executeQuery();
            
            JOptionPane.showMessageDialog(null,"Time deletado com sucesso!");
            
        } catch (SQLException ex) {
        JOptionPane.showMessageDialog(null,"Não foi possível deletar o time: " +ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt);
        }
        
        
    }
    
    public boolean checkTimeExiste(String nomeTime){
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        boolean check = false;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM time WHERE nome = ?");
            stmt.setString(1, nomeTime);
            stmt.executeQuery();
            
            while(rs.next()){
                check = true;
            }
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"Erro ao checar time: "+ex);
        }finally{
            ConnectionFactory.closeConnection(con,stmt, rs);
        }
        
       return check;
    }
    
}
