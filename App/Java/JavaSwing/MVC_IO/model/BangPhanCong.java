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
public class BangPhanCong implements Serializable, GiaoTiep{

    private SinhVIen s;
    private BaiTapNhom b;
    private int songay;
    private String congviec;

    public SinhVIen getS() {
        return s;
    }

    public void setS(SinhVIen s) {
        this.s = s;
    }

    public BaiTapNhom getB() {
        return b;
    }

    public void setB(BaiTapNhom b) {
        this.b = b;
    }

    public int getSongay() {
        return songay;
    }

    public void setSongay(int songay) {
        this.songay = songay;
    }

    public String getCongviec() {
        return congviec;
    }

    public void setCongviec(String congviec) {
        this.congviec = congviec;
    }
    
    @Override
    public Object[] toObject() {
        return new Object[]{
          this.getS().getID(), this.getS().getTen(), this.getB().getID(), this.getB().getTen(), 
            this.getCongviec(), this.getSongay()
        };
    }
    
}
