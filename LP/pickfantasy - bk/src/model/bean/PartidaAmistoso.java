package model.bean;
public class PartidaAmistoso extends Partida  {
    /*
     id_partida int PRIMARY KEY auto_increment,
    placar_time1 int (2) default 0,
    placar_time2 int(2) default 0,
    ganhador varchar(20),
    data date,
    FK_CAMPEONATOS_id_campeonato int,
    FK_TIME_id_time2 int,
    FK_TIME_id_time int
    */
    
    private String patriocinador;
    
    
    public PartidaAmistoso(int pTime1, int pTime2, String ganhador, String data,String patriocinador){
        super(pTime1, pTime2, ganhador, data);
        this.patriocinador = patriocinador;
    }
    
    public String getPatriocinador(){
        return patriocinador;
    }

    public void setPatriocinador(String patriocinador) {
        this.patriocinador = patriocinador;
    }
    
    
    
    
}
