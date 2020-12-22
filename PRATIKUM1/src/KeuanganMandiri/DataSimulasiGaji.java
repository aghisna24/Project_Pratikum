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
public class DataSimulasiGaji 
{
    int Gaji,BKB,BSB;

 
   public DataSimulasiGaji(int a,int b,int c)
   {
       Gaji = a;
       BKB = b;
       BSB = c;
   }
    
    int CetakGaji()
    {
        return Gaji;
    }
    int CetakBKB()
    {
        return BKB;
    }
    int CetakBSB()
    {
        return BSB;
    }
}
