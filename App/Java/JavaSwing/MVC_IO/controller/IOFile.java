
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Scanner;
import model.BaiTapNhom;
import model.SinhVIen;

/**
 *
 * @author ThanTrieu@Pro
 */
public class IOFile {
    
    public void ghi(ArrayList list, String file){
        try(FileOutputStream out = new FileOutputStream(new File(file))) {
            ObjectOutputStream oos = new ObjectOutputStream(out);
            oos.writeObject(list);
        } catch (Exception e) {
            System.out.println("Got an exception!");
        }
    }
    
    public void ghiSV(ArrayList <SinhVIen> list){
        try (PrintWriter pw = new PrintWriter(new File("SV.DAT"))){
            for(SinhVIen s: list){
                pw.println(s.getID());
                pw.println(s.getTen());
                pw.println(s.getDiachi());
                pw.println(s.getLop());
                
            }
        } catch (Exception e) {
            System.out.println("got an exception!");
        }
    }
    
    public ArrayList docSV(){
        ArrayList<SinhVIen> list = new ArrayList<>();
        try(Scanner sc = new Scanner(new File("SV.DAT"))) {
            while(sc.hasNext()){
                SinhVIen s = new SinhVIen();
                s.setID(Integer.parseInt(sc.nextLine()));
                s.setTen(sc.nextLine());
                s.setDiachi(sc.nextLine());
                s.setLop(sc.nextLine());
                
                list.add(s);
            }
        } catch (Exception e) {
            System.out.println("got an exception!");
        }
        return list;
    }
    
    public ArrayList docBT(){
        ArrayList<BaiTapNhom> list = new ArrayList<>();
        try(Scanner sc = new Scanner(new File("BT.DAT"))) {
            while(sc.hasNext()){
                BaiTapNhom s = new BaiTapNhom();
                s.setID(Integer.parseInt(sc.nextLine()));
                s.setTen(sc.nextLine());
                s.setKieu(sc.nextLine());
                s.setTongTG(Integer.parseInt(sc.nextLine()));
                
                list.add(s);
            }
        } catch (Exception e) {
            System.out.println("got an exception!");
        }
        return list;
    }
    
    public void ghiBT(ArrayList <BaiTapNhom> list){
        try (PrintWriter pw = new PrintWriter(new File("BT.DAT"))){
            for(BaiTapNhom s: list){
                pw.println(s.getID());
                pw.println(s.getTen());
                pw.println(s.getKieu());
                pw.println(s.getTongTG());
                
            }
        } catch (Exception e) {
            System.out.println("got an exception!");
        }
    }
    
    public ArrayList doc( String file){
        ArrayList list = new ArrayList();
        try(FileInputStream out = new FileInputStream(new File(file))) {
            ObjectInputStream oos = new ObjectInputStream(out);
            list = (ArrayList) oos.readObject();
        } catch (Exception e) {
            System.out.println("Got an exception!");
        }
        return list;
    }
}
