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
public class ComumDAO {
    public static boolean existeIsso(String table, String coluna, String arg){
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        boolean check = false;

        try {
            stmt = con.prepareStatement("SELECT * FROM ? WHERE ? = ?");
            stmt.setString(1, table);
            stmt.setString(2, coluna);
            stmt.setString(3, arg);
            rs = stmt.executeQuery();
            if (rs.next()) {
                check = true;
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Não foi possível verificar: " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return check;

    }
    
    public static boolean existIsso(String table, String coluna, int arg){
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        boolean check = false;

        try {
            stmt = con.prepareStatement("SELECT * FROM ? WHERE ? = ?");
            stmt.setString(1, table);
            stmt.setString(2, coluna);
            stmt.setInt(3, arg);
            rs = stmt.executeQuery();
            if (rs.next()) {
                check = true;
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Não foi possível verificar: " + ex);
        } finally {
            ConnectionFactory.closeConnection(con, stmt, rs);
        }
        return check;
    }
    
}
