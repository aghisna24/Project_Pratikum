/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package KeuanganMandiri;

/**
 *
 * @author kontol
 */
public abstract class Data2 {
    public int pengeluaran,cicilan,investasi,donasi;
    public int a,sisa_a;
    public String Bulan;
   
    void input(int input)
    {
        this.a = input;
    }

    abstract int hitung();
            
    abstract int Ctk_pengeluaran();
       
    abstract int Ctk_cicilan();
    
    abstract int Ctk_investasi();
    
    abstract int Ctk_donasi();
    
    String Ctk_Bulan(){
        return Bulan;
    }
}
