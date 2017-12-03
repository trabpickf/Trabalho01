/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view.adm;

import java.util.Vector;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import model.bean.Time;
import model.dao.TimeDAO;
import view.Principal;

/**
 *
 * @author brhue
 */
public class AlterarTime extends javax.swing.JInternalFrame {
    private Principal principal = null;
    /**
     * Creates new form AdicionarTime
     */
    public AlterarTime(Principal principal){
        initComponents();
        this.principal = principal;
        comboListTimes();
        
        
    }
    public AlterarTime() {
        initComponents();
    }
    
    public void comboListTimes(){
        // APARECER TIMES NO COMBO LIST
        comboListaTime.removeAllItems(); // Toda vez que for atualizado, não gerar ambinguidade
        comboListaTime.addItem("Escolha um time");
        
        TimeDAO timeDao = new TimeDAO();
        Vector vectorTime = timeDao.vectorTime();
        
        for(int i=0;i<vectorTime.size();i++){
            
            comboListaTime.addItem(vectorTime.elementAt(i).toString());
        }
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jSeparator1 = new javax.swing.JSeparator();
        jLabel2 = new javax.swing.JLabel();
        txtNomeTime = new javax.swing.JTextField();
        btnNovoTime = new javax.swing.JButton();
        comboListaTime = new javax.swing.JComboBox<>();
        btnRemoverTime = new javax.swing.JButton();
        btnCancelar = new javax.swing.JButton();
        txtNacionalidade = new javax.swing.JTextField();

        setPreferredSize(new java.awt.Dimension(584, 540));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel1.setText("Adicionar time:");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel2.setText("Remover time:");

        txtNomeTime.setText("Nome do time");
        txtNomeTime.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                txtNomeTimeFocusGained(evt);
            }
        });
        txtNomeTime.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                txtNomeTimeMouseClicked(evt);
            }
        });
        txtNomeTime.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtNomeTimeActionPerformed(evt);
            }
        });

        btnNovoTime.setText("Confirmar");
        btnNovoTime.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnNovoTimeActionPerformed(evt);
            }
        });

        comboListaTime.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Escolha o time" }));
        comboListaTime.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                comboListaTimeActionPerformed(evt);
            }
        });

        btnRemoverTime.setText("Confirmar");
        btnRemoverTime.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btnRemoverTimeMouseClicked(evt);
            }
        });

        btnCancelar.setText("Cancelar");
        btnCancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelarActionPerformed(evt);
            }
        });

        txtNacionalidade.setText("Nacionalidade");
        txtNacionalidade.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                txtNacionalidadeMouseClicked(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 400, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 113, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(txtNacionalidade)
                                    .addComponent(txtNomeTime, javax.swing.GroupLayout.DEFAULT_SIZE, 200, Short.MAX_VALUE))))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel2)
                        .addGap(99, 99, 99)
                        .addComponent(comboListaTime, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(158, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnRemoverTime, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnCancelar, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(228, 228, 228))))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnNovoTime, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(230, 230, 230))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(19, 19, 19)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(7, 7, 7)
                                .addComponent(txtNomeTime))
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtNacionalidade, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(4, 4, 4)
                .addComponent(btnNovoTime)
                .addGap(59, 59, 59)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(65, 65, 65)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(comboListaTime, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(34, 34, 34)
                .addComponent(btnRemoverTime)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 123, Short.MAX_VALUE)
                .addComponent(btnCancelar)
                .addGap(27, 27, 27))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnCancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelarActionPerformed
        this.dispose();
        if(principal != null){
            principal.setInvisivel(false);
        }
    }//GEN-LAST:event_btnCancelarActionPerformed

    private void txtNomeTimeFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtNomeTimeFocusGained
        // TODO add your handling code here:
        
    }//GEN-LAST:event_txtNomeTimeFocusGained

    private void txtNomeTimeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtNomeTimeActionPerformed
      
    }//GEN-LAST:event_txtNomeTimeActionPerformed

    private void txtNomeTimeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_txtNomeTimeMouseClicked
        // Limpar quando clickado
        txtNomeTime.setText("");

    }//GEN-LAST:event_txtNomeTimeMouseClicked

    private void btnNovoTimeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnNovoTimeActionPerformed
        int showConfirmDialog = JOptionPane.showConfirmDialog(null,"Deseja salvar este time?");  // 0 = SIM, 1 = NÃO, 2 = CANCELAR
        if(showConfirmDialog == 0){
            String nome = txtNomeTime.getText();
            String nacionalidade = txtNacionalidade.getText();

            Time novoTime = new Time();
            TimeDAO novoTimeDao = new TimeDAO();
            
            
            if(novoTimeDao.checkTimeExiste(nome)==false){

                novoTime.setNomeTime(nome);
                novoTime.setNacionalidade(nacionalidade);
                
                novoTimeDao.adicionarTime(novoTime);
                

            }else{
                JOptionPane.showMessageDialog(null, "Este time já existe");
            }
        
        }
        
        txtNomeTime.setText("Nome do time");
        txtNacionalidade.setText("Nacionalidade");
        
        comboListTimes();

    }//GEN-LAST:event_btnNovoTimeActionPerformed

    private void txtNacionalidadeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_txtNacionalidadeMouseClicked
        txtNacionalidade.setText("");
    }//GEN-LAST:event_txtNacionalidadeMouseClicked

    private void comboListaTimeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_comboListaTimeActionPerformed
        
    }//GEN-LAST:event_comboListaTimeActionPerformed

    private void btnRemoverTimeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnRemoverTimeMouseClicked
        // REMOVER TIME
        // ShowConfirmDalog 0 = SIM, 1 = NÃO, 0 = CANCELADO
       String timeSelecionado = comboListaTime.getSelectedItem().toString();
        if(!timeSelecionado.equals("Escolha um time")){
            if(JOptionPane.showConfirmDialog(null, "Deseja remover "+timeSelecionado+"?") == 0){
                TimeDAO timeDao = new TimeDAO();
                timeDao.removerTime(timeSelecionado);

                JOptionPane.showMessageDialog(null, "Time deletado com sucesso!");
            }
        }
        
        comboListTimes(); // Atualizar lista
        
    }//GEN-LAST:event_btnRemoverTimeMouseClicked


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCancelar;
    private javax.swing.JButton btnNovoTime;
    private javax.swing.JButton btnRemoverTime;
    private javax.swing.JComboBox<String> comboListaTime;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JTextField txtNacionalidade;
    private javax.swing.JTextField txtNomeTime;
    // End of variables declaration//GEN-END:variables
}
