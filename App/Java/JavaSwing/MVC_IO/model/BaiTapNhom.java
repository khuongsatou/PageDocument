/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controller.GiaoTiep;
import java.io.Serializable;

/**
 *
 * @author ThanTrieu@Pro
 */
public class BaiTapNhom implements Serializable, GiaoTiep{
    private int ID, tongTG;
    private String ten, kieu;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getTongTG() {
        return tongTG;
    }

    public void setTongTG(int tongTG) {
        this.tongTG = tongTG;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getKieu() {
        return kieu;
    }

    public void setKieu(String kieu) {
        this.kieu = kieu;
    }

    @Override
    public Object[] toObject() {
        return new Object[]{
          this.getID(), this.getTen(), this.getKieu(), this.getTongTG()
        };
    }
    
}
