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
public class Partida {
    private int placarTime1;
    private int placarTime2;
    private String ganhador;
    private String data;
    
    public Partida(int pTime1, int pTime2, String ganhador, String data){
        this.placarTime1 = pTime1;
        this.placarTime2 = pTime2;
        this.ganhador = ganhador;
        this.data = data;
    }
    
    

    public int getPlacarTime1() {
        return placarTime1;
    }

    public void setPlacarTime1(int placarTime1) {
        this.placarTime1 = placarTime1;
    }

    public int getPlacarTime2() {
        return placarTime2;
    }

    public void setPlacarTime2(int placarTime2) {
        this.placarTime2 = placarTime2;
    }

    public String getGanhador() {
        return ganhador;
    }

    public void setGanhador(String ganhador) {
        this.ganhador = ganhador;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
}
