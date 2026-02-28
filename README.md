# minpro1

# 📱 Manajemen Jadwal Service Kendaraan (Flutter)

## 📌 Deskripsi Aplikasi
Aplikasi Manajemen Jadwal Service Kendaraan adalah aplikasi mobile berbasis Flutter yang digunakan untuk mencatat dan mengelola jadwal service kendaraan.

Pengguna dapat menambahkan data jadwal service yang berisi:
- Nama pemilik kendaraan
- Plat nomor kendaraan
- Jenis kendaraan
- Tanggal service
- Catatan tambahan
Data yang ditambahkan akan ditampilkan dalam bentuk daftar dan dapat dihapus sesuai kebutuhan.

  ## 🚀 Fitur Aplikasi
<img width="1903" height="968" alt="Cuplikan layar 2026-02-28 224035" src="https://github.com/user-attachments/assets/2e57355c-3c14-454e-8698-6c3c0336d760" />

### 1️⃣ Create (Tambah Data)
seperti gambar diatas Pengguna dapat menambahkan jadwal service kendaraan melalui form input.

<img width="1917" height="323" alt="image" src="https://github.com/user-attachments/assets/0528664e-7b61-4dbf-9272-9779e095d82a" />

### 2️⃣ Read (Tampilkan Data)
Gambar diatas menunjukkan Data jadwal service yang telah ditambahkan akan ditampilkan dalam bentuk daftar (ListView).

<img width="1919" height="717" alt="image" src="https://github.com/user-attachments/assets/86675202-03ad-4d19-b1d0-abd5b3ec62b4" />


### 3️⃣ Delete (Hapus Data)
Pengguna dapat menghapus jadwal service dari daftar dengan menekan tombol delete.

## 🧾 Komponen Form
Form input memiliki minimal 3 TextField sesuai ketentuan tugas, yaitu:
- Nama Pemilik
- Plat Nomor
- Jenis Kendaraan
- Tanggal Service
- Catatan (opsional)

## 🧩 Widget yang Digunakan
- MaterialApp
- Scaffold
- AppBar
- ListView
- ListTile
- Card
- FloatingActionButton
- Form
- TextFormField
- InputDecoration
- Navigator (navigasi antar halaman)
- AlertDialog
- TextButton
- FilledButton
- IconButton


## 🔄 Alur Kerja Aplikasi

1. Aplikasi dibuka → Menampilkan halaman daftar jadwal.
2. Tekan tombol "+" → Masuk ke halaman form.
3. Isi data → Tekan tombol Simpan.
4. Data tampil di halaman daftar.
5. Data dapat dihapus dengan tombol delete.
