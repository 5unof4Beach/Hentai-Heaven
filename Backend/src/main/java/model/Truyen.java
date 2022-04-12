/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author suckm
 */
public class Truyen {
    private String id, ten, nxb;
    private int rating;

    public Truyen(String id, String ten, String nxb, int rating) {
        this.id = id;
        this.ten = ten;
        this.nxb = nxb;
        this.rating = rating;
    }

    public String getId() {
        return id;
    }

    public String getTen() {
        return ten;
    }

    public String getNxb() {
        return nxb;
    }

    public int getRating() {
        return rating;
    }
    
}
