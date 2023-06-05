/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uaslabpbo;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author johan
 */
class Mahasiswa {
    String nim;
    String nama;
    String jeniskelamin;
    String nohp;
    String agama;
    String status;
    
    public String getNim() {
        return nim;
    }
    
    static ArrayList<Mahasiswa> daftarMahasiswa;
    public static void dataMahasiswa()
    {
        daftarMahasiswa = new ArrayList<Mahasiswa>(); 
        Mahasiswa mahasiswa;
        try {
            Statement stmt = koneksi.connection.createStatement();
            
            String sql = "SELECT * FROM msiswa";
            
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next())
            {
                mahasiswa =  new Mahasiswa();
                
                mahasiswa.nama = rs.getString("Nama");
                mahasiswa.nim = rs.getString("NIM");
                mahasiswa.jeniskelamin = rs.getString("Jenis Kelamin");
                mahasiswa.nohp = rs.getString("No Hp");
                mahasiswa.agama = rs.getString("Agama");
                mahasiswa.status = rs.getString("Status");
                
                daftarMahasiswa.add(mahasiswa);
            }
        } 
    
        catch (Exception ex) {
            System.out.println(ex);
        }
    }
   
}

