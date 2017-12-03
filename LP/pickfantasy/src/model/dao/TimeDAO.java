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
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import model.bean.Time;

/**
 *
 * @author brhue
 */
public class TimeDAO {
    
    public void adicionarTime(Time time){
        //Antes é passado pelo CheckTimeExiste
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        
        
        String nomeTime = time.getNomeTime();
        String nacionalidade = time.getNacionalidade();
        
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
        // Não é passado pelo checkTimeExiste, pois é listado dinamicamente
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try {
            stmt = con.prepareStatement("DELETE FROM time WHERE nome = ?");
            stmt.setString(1, nomeTime);
            stmt.executeUpdate();
            
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
            rs = stmt.executeQuery();
            
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
    
    public Vector vectorTime(){
        // Pegando times do BD para listar no comboBox
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Vector vectorTime = new Vector();
        
        try {
            stmt = con.prepareStatement("SELECT nome FROM time");
            rs = stmt.executeQuery();
            
            while(rs.next()){
                vectorTime.add(rs.getString("nome"));
            }
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"Não foi possível carregar os times: " +ex);
        }
        
        return vectorTime;
    }
    
}
