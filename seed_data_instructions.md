# Cara Menggunakan SQL Script untuk Admin Panel

## 📁 File yang Dibuat
- `seed_data.sql` - Script SQL lengkap untuk mengisi database

## 🎯 Data yang Akan Ditambahkan

### 1. **Amenities (8 items)**
- WiFi Gratis, AC, TV LED
- Kamar Mandi Dalam, Mini Bar, Balkon
- Safe Box, Room Service 24 Jam

### 2. **Rooms (5 kamar)**
- **Deluxe Room** - Rp 850.000 (2 orang)
- **Superior Room** - Rp 650.000 (2 orang)  
- **Family Suite** - Rp 1.200.000 (6 orang)
- **Executive Room** - Rp 950.000 (2 orang)
- **Standard Room** - Rp 450.000 (2 orang)

### 3. **Users (6 users)**
- 1 Admin + 5 Customer dummy
- Lengkap dengan nama, email, nomor telepon

### 4. **Reservations (7 booking)**
- Mix tanggal masa lalu dan masa depan
- Berbagai tipe kamar dan customer

### 5. **Payments (7 payment records)**
- Status: paid, pending, unpaid, failure
- Metode: credit_card, bank_transfer, e_wallet

### 6. **Contacts (4 pesan)**
- Berbagai topik: fasilitas, group booking, komplain, event

## 🚀 Cara Menjalankan

### Opsi 1: Menggunakan Database Client (Recommended)
```bash
# Jika menggunakan PostgreSQL
psql -h localhost -U username -d database_name -f seed_data.sql

# Atau jika menggunakan pgAdmin, buka Query Tool dan copy-paste isi file
```

### Opsi 2: Menggunakan Prisma Studio
1. Buka Prisma Studio: `npx prisma studio`
2. Manual insert data satu per satu (tidak recommended untuk data banyak)

### Opsi 3: Menggunakan Database Management Tool
- **DBeaver**, **TablePlus**, **Sequel Pro**, dll
- Connect ke database
- Run script `seed_data.sql`

## 📊 Hasil Setelah Insert

Admin panel akan menampilkan:

### Dashboard
- **Total Revenue**: Rp 11.600.000 (dari 5 payment yang paid)
- **Total Reservations**: 7 booking
- **Total Customers**: 5 unique customers

### Room Management
- 5 kamar dengan berbagai tipe dan fasilitas
- Gambar menggunakan Unsplash (gratis)

### Reservation List
- 7 reservation dengan status berbeda-beda
- Data customer lengkap
- Tanggal check-in/out yang realistis

## ⚠️ Catatan Penting

1. **ID Format**: Menggunakan format cuid yang mirip dengan Prisma
2. **Gambar**: Menggunakan Unsplash URLs (pastikan internet connect)
3. **Tanggal**: Mix tanggal masa lalu dan masa depan
4. **Currency**: Harga dalam Rupiah (sesuai target market Indonesia)

## 🔧 Troubleshooting

### Jika Error "Constraint Violation":
- Pastikan tabel kosong sebelum insert
- Atau gunakan `ON CONFLICT` clause

### Jika Gambar Tidak Muncul:
- Periksa koneksi internet
- Ganti URL gambar dengan yang lain

### Jika Tanggal Error:
- Sesuaikan format tanggal dengan database settings
- Ganti `NOW()` dengan format timestamp lokal

## 🔄 Untuk Menghapus Data (Jika Diperlukan)
```sql
DELETE FROM "Payment";
DELETE FROM "Reservation"; 
DELETE FROM "RoomAmenities";
DELETE FROM "Room";
DELETE FROM "Amenities";
DELETE FROM "Contact";
DELETE FROM "User" WHERE role != 'admin';
```

## ✅ Verifikasi Data
Setelah insert, cek admin panel:
1. Buka `/admin/dashboard` - harus ada statistik
2. Buka `/admin/room` - harus ada 5 kamar
3. Dashboard cards harus menampilkan angka yang benar
