# Admin Access Setup

## Perubahan yang Dibuat

Untuk memudahkan akses admin dalam mode development, telah dibuat modifikasi berikut:

### 1. Tombol Admin Access di Halaman Sign In

Di halaman `/signin` telah ditambahkan tombol **"🔧 Admin Access (Dev Mode)"** yang memungkinkan akses langsung ke dashboard admin tanpa autentikasi Google OAuth.

### 2. Modifikasi Middleware

File `middleware.ts` telah dimodifikasi untuk:
- Mengizinkan akses ke `/admin/*` tanpa autentikasi dalam mode development
- Tetap mempertahankan proteksi di production mode

### 3. Modifikasi Fungsi Data

File `lib/data.ts` telah dimodifikasi untuk:
- Skip auth check pada fungsi `getAmenities()` dan `getReservations()` dalam mode development
- Tetap mempertahankan security check di production mode

## Cara Menggunakan

1. Buka `http://localhost:3000/signin`
2. Klik tombol **"🔧 Admin Access (Dev Mode)"**
3. Anda akan diarahkan ke `/admin/dashboard`

## Fitur Admin yang Tersedia

- **Dashboard** (`/admin/dashboard`): Statistik dan overview
- **Room Management** (`/admin/room`): CRUD operasi kamar
- **Create Room** (`/admin/room/create`): Tambah kamar baru
- **Edit Room** (`/admin/room/edit/[id]`): Edit kamar existing

## Note Penting

⚠️ **Perubahan ini hanya berlaku dalam mode development (`NODE_ENV=development`)**

Di production mode, sistem akan tetap memerlukan:
1. Autentikasi Google OAuth
2. Role "admin" di database

## Untuk Production

Jika ingin deploy ke production, pastikan untuk:
1. Set `NODE_ENV=production`
2. Buat user admin di database dengan role "admin"
3. Gunakan Google OAuth untuk autentikasi
