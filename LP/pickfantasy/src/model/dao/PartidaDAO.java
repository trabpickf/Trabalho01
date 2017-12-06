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
public class PartidaDAO {
    
    
    public static void adicionar(int pTime1,int pTime2, String data){
        //Antes é passado pelo CheckTimeExiste
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        
        
        
        try {
            stmt = con.prepareStatement("INSERT INTO partida (FK_TIME_id_time, FK_TIME_id_time2, data) VALUES (?,?,?)");
            stmt.setInt(1,pTime1);
            stmt.setInt(2, pTime2);
            stmt.setString(3, data);
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null,"Time adicionado com sucesso!");
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,"Não foi possivel adicionar o time. "+ex);
        }finally{
            ConnectionFactory.closeConnection(con,stmt);
        }
    }
    
    public static Vector partidaAndamento(String time1, String time2){
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Vector vectorTime = new Vector();
        
        try {
            stmt = con.prepareStatement("SELECT TIME.nome FROM PARTIDA INNER JOIN TIME ON PARTIDA.FK_TIME_id_time = ? AND PARTIDA.FK_TIME_id_time2 = ?");
            stmt.setString(1,time1);
            stmt.setString(2, time2);
            rs = stmt.executeQuery();
            
            while(rs.next()){
                vectorTime.add(rs.getString("TIME.nome"));
            }
            
            
            
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(null,"Erro ao procurar partida: " +ex);
        }finally{
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        
        return vectorTime;
    }
    
        public static Vector partidasCombo(){
            Connection con = ConnectionFactory.getConnection();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            Vector vectorTime = new Vector();

            try {
                stmt = con.prepareStatement("select time.nome as 'time1',time2.nome as 'time2' from time inner join partida on(time.id_time = partida.FK_TIME_id_time) inner join time time2 on(time2.id_time = partida.FK_TIME_id_time2);");
                rs = stmt.executeQuery();

                while(rs.next()){
                    vectorTime.add(rs.getString("time1") + " vs " + rs.getString("time2"));

                }



                } catch (SQLException ex) {
                    JOptionPane.showMessageDialog(null,"Erro ao procurar partida: " +ex);
            }finally{
                ConnectionFactory.closeConnection(con, stmt, rs);
            }

            return vectorTime;
    }
        
    public static int nomeToId(String nomeT){
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        int idTime = -1;
        
            try {
                stmt = con.prepareStatement("SELECT id_time FROM TIME WHERE TIME.nome = ?");
                stmt.setString(1, nomeT);
                rs = stmt.executeQuery();
                
                while(rs.next()){
                    idTime = rs.getInt("id_time");

                }



                } catch (SQLException ex) {
                    JOptionPane.showMessageDialog(null,"Erro ao procurar partida: " +ex);
            }finally{
                ConnectionFactory.closeConnection(con, stmt, rs);
            }

            return idTime;
    }
}
