/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mahasiswa;

/**
 *
 * @author ASUS
 */
public class Mahasiswa {
    private String NIM;
    private String Nama;
    private String TTL;
    private String Angkatan;
    private String Kelas;
    
    
    
    public Mahasiswa setMahasiswa(String n,String na,String tl, String a, String K){
        Mahasiswa m = new Mahasiswa();
        m.NIM = n;
        m.Nama = na;
        m.TTL = tl;
        m.Kelas = K;
        m.Angkatan = a;
        return m;
    }
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    }
    
}
