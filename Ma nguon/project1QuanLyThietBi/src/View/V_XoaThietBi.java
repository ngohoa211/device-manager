/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package View;

import Model.Connect;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import Controler.*;
import java.io.IOException;
import javax.swing.JOptionPane;
/**
 *
 * @author ngohoa
 */
public class V_XoaThietBi extends javax.swing.JFrame {

    /**
     * Creates new form V_XoaThietBi
     */
    C_DATA data;
    public V_XoaThietBi(C_DATA data) {
        initComponents();
        setLocationRelativeTo(null);
        this.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        setVisible(true);
        this.data=data;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jRadioButton4 = new javax.swing.JRadioButton();
        groupButtonxoa = new javax.swing.ButtonGroup();
        jRadioButton1 = new javax.swing.JRadioButton();
        jRadioButton2 = new javax.swing.JRadioButton();
        jRadioButton3 = new javax.swing.JRadioButton();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();

        jRadioButton4.setText("jRadioButton4");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));

        groupButtonxoa.add(jRadioButton1);
        jRadioButton1.setText("Mã tài sản");
        jRadioButton1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jRadioButton1MouseClicked(evt);
            }
        });

        groupButtonxoa.add(jRadioButton2);
        jRadioButton2.setText("Số hiệu máy");
        jRadioButton2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jRadioButton2MouseClicked(evt);
            }
        });
        jRadioButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButton2ActionPerformed(evt);
            }
        });

        groupButtonxoa.add(jRadioButton3);
        jRadioButton3.setText("Tất cả các thiết bị có chi tiết kỹ thuật là:");
        jRadioButton3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jRadioButton3MouseClicked(evt);
            }
        });
        jRadioButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButton3ActionPerformed(evt);
            }
        });

        jTextField1.setEnabled(false);

        jTextField2.setEnabled(false);

        jTextField3.setEnabled(false);

        jLabel1.setText("Xóa theo tiêu chí:");

        jButton1.setText("xác nhận xóa");
        jButton1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jButton1MouseClicked(evt);
            }
        });

        jButton2.setText("làm lại");
        jButton2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jButton2MouseClicked(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 247, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(48, 48, 48)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jRadioButton2)
                                    .addComponent(jRadioButton1)
                                    .addComponent(jRadioButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 252, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(61, 61, 61)
                                .addComponent(jTextField3, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 201, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(89, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(jButton1)
                .addGap(27, 27, 27)
                .addComponent(jButton2)
                .addGap(35, 35, 35))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(9, 9, 9)
                .addComponent(jRadioButton1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jRadioButton2)
                .addGap(6, 6, 6)
                .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jRadioButton3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jTextField3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 48, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton1)
                    .addComponent(jButton2))
                .addGap(32, 32, 32))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jRadioButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButton2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jRadioButton2ActionPerformed

    private void jRadioButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButton3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jRadioButton3ActionPerformed

    private void jRadioButton1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jRadioButton1MouseClicked
        
            // TODO add your handling code here:
            if(jTextField2.isEnabled()==true) jTextField2.setEnabled(false);
            if(jTextField3.isEnabled()==true) jTextField3.setEnabled(false);
            if(jTextField1.isEnabled()==false) jTextField1.setEnabled(true);
            //use quanlythietbi DELETE FROM ItemThietBi where ItemThietBi.MaTaiSan='IT.IS.00014'
    }//GEN-LAST:event_jRadioButton1MouseClicked

    private void jButton1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton1MouseClicked
        // TODO add your handling code here:
        C_ItemThietBi itemMuonXoa ; 
        C_LoaiTB loaiMuonXoa;
        if(jRadioButton1.isSelected()==true){
            if(jTextField1.getText()==null||jTextField1.getText().equals("")){
                JOptionPane.showMessageDialog(null, "Bạn nhập thiếu thông tin","Lỗi", JOptionPane.WARNING_MESSAGE);
            }else{
            itemMuonXoa=data.timItemtheoMaTaiSan(jTextField1.getText());
            if(itemMuonXoa!=null){
            loaiMuonXoa=data.timLoaiTBtheoItem(itemMuonXoa);
            loaiMuonXoa.cacItems.remove(itemMuonXoa) ;
            
            String q="use quanlythietbi DELETE FROM ItemThietBi where ItemThietBi.MaTaiSan='";// 'Máy tính HP%'"
            String truyvanxoa= q.concat(jTextField1.getText()).concat("'");
            data.addquerry(truyvanxoa);
            }else JOptionPane.showMessageDialog(null, "Không tìm thấy thiết bi","Lỗi", JOptionPane.WARNING_MESSAGE);
            }
        }
        else if(jRadioButton2.isSelected()==true) {
            if(jTextField2.getText()==null||jTextField2.getText().equals("")){
                JOptionPane.showMessageDialog(null, "Bạn nhập thiếu thông tin","Lỗi", JOptionPane.WARNING_MESSAGE);
            }else{
            itemMuonXoa=data.timItemtheoSoHieuMay(jTextField2.getText());
            if(itemMuonXoa!=null){
            loaiMuonXoa=data.timLoaiTBtheoItem(itemMuonXoa);
            loaiMuonXoa.cacItems.remove(itemMuonXoa) ;
        
                try {
                    Connect co =new Connect();
                } catch (IOException ex) {
                    Logger.getLogger(V_XoaThietBi.class.getName()).log(Level.SEVERE, null, ex);
                }
            String q="use quanlythietbi DELETE FROM ItemThietBi where ItemThietBi.SoHieuMay='";// 'Máy tính HP%'"
            String truyvanxoa= q.concat(jTextField2.getText()).concat("'");
            data.addquerry(truyvanxoa);
            }else JOptionPane.showMessageDialog(null, "Không tìm thấy thiết bi","Lỗi", JOptionPane.WARNING_MESSAGE);
            }
        }else if(jRadioButton3.isSelected()==true){
            if(jTextField3.getText()==null||jTextField3.getText().equals("")){
                JOptionPane.showMessageDialog(null, "Bạn nhập thiếu thông tin","Lỗi", JOptionPane.WARNING_MESSAGE);
            }else{
            loaiMuonXoa=data.timLoaiTBtheoChiTieuKT(jTextField3.getText());
            if(loaiMuonXoa!=null){
            
            int soitemxoa=0;soitemxoa=loaiMuonXoa.cacItems.size();
            String q="use quanlythietbi DELETE FROM ItemThietBi where ItemThietBi.IDLoai='";
            String truyvanxoa= q.concat(Integer.toString(loaiMuonXoa.idloai)).concat("'");
            data.addquerry(truyvanxoa);
            q=new String("use quanlythietbi DELETE FROM LoaiTB where LoaiTB.ChiTieuKT='");
            String truyvanxoa2= q.concat(jTextField3.getText()).concat("'");
            data.addquerry(truyvanxoa2);
            
            data.danhSachToanBo.remove(loaiMuonXoa);
            }else JOptionPane.showMessageDialog(null, "Không tìm thấy thiết bị nào loại này","Lỗi", JOptionPane.WARNING_MESSAGE);
        }
        }
    }//GEN-LAST:event_jButton1MouseClicked

    private void jButton2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jButton2MouseClicked
        // TODO add your handling code here:
        jRadioButton1.setSelected(false);
        jRadioButton2.setSelected(false);
        jRadioButton3.setSelected(false);
        jTextField1.setText(null);
        jTextField3.setText(null);
    }//GEN-LAST:event_jButton2MouseClicked

    private void jRadioButton2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jRadioButton2MouseClicked
        // TODO add your handling code here:
            if(jTextField1.isEnabled()==true) jTextField1.setEnabled(false);
            if(jTextField3.isEnabled()==true) jTextField3.setEnabled(false);
            if(jTextField2.isEnabled()==false) jTextField2.setEnabled(true);
            jTextField1.setText(null);
            jTextField3.setText(null);
    }//GEN-LAST:event_jRadioButton2MouseClicked

    private void jRadioButton3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jRadioButton3MouseClicked
        // TODO add your handling code here:
            if(jTextField2.isEnabled()==true) jTextField2.setEnabled(false);
            if(jTextField1.isEnabled()==true) jTextField1.setEnabled(false);
            if(jTextField3.isEnabled()==false) jTextField3.setEnabled(true);
            jTextField1.setText(null);
            jTextField2.setText(null);

    }//GEN-LAST:event_jRadioButton3MouseClicked

    /**
     * @param args the command line arguments
     */

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.ButtonGroup groupButtonxoa;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JRadioButton jRadioButton1;
    private javax.swing.JRadioButton jRadioButton2;
    private javax.swing.JRadioButton jRadioButton3;
    private javax.swing.JRadioButton jRadioButton4;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    // End of variables declaration//GEN-END:variables
}