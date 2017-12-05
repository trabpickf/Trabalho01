/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

/**
 *
 * @author brhue
 */
public class PartidaCampeonato extends Partida {
    private String campeonato;
    
    public PartidaCampeonato(int pTime1, int pTime2, String ganhador, String data, String campeonato){
        super(pTime1, pTime2, ganhador, data);
        this.campeonato = campeonato;
    }
    
    public String getCampeonato() {
        return campeonato;
    }

    public void setCampeonato(String campeonato) {
        this.campeonato = campeonato;
    }
    
    
}
