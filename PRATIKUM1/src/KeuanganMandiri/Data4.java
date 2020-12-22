/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package KeuanganMandiri;

/**
 *
 * @author Aghisna R.G
 */
public class Data4 extends Data2 implements Tambahan {


    @Override
    int Ctk_pengeluaran()
    {
       pengeluaran = (int) (a*0.3);
       return pengeluaran;
    }
    @Override
    int Ctk_cicilan()
    {
        cicilan = (int) (a*0.2);
        return cicilan;
    }
    @Override
    int Ctk_investasi()
    {
        investasi = (int) (a*0.3);
        return investasi;
    }
    @Override
    int Ctk_donasi()
    {
        donasi = (int) (a*0.2);
        return donasi;
    }
       @Override
    public String keterangan() 
    {
        return"Simulasi ini menghitung, gaji anda yang telah di input"
               +"\n dengan formula 30-20-20-10";
    }
    
    
    @Override
    int hitung(){
        sisa_a=a-(Ctk_donasi()+ Ctk_investasi()+Ctk_cicilan()+Ctk_pengeluaran());
        return sisa_a;
    }


}
