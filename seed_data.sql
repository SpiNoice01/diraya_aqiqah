-- SQL Script untuk mengisi data dummy pada admin panel
-- Diraya Aqiqah Hotel Booking System

-- 1. Insert Amenities (Fasilitas)
INSERT INTO "Amenities" (id, name, "createdAt", "updatedAt") VALUES
('clp1a2b3c4d5e6f7g8h9i0j1', 'WiFi Gratis', NOW(), NOW()),
('clp2a2b3c4d5e6f7g8h9i0j2', 'AC', NOW(), NOW()),
('clp3a2b3c4d5e6f7g8h9i0j3', 'TV LED', NOW(), NOW()),
('clp4a2b3c4d5e6f7g8h9i0j4', 'Kamar Mandi Dalam', NOW(), NOW()),
('clp5a2b3c4d5e6f7g8h9i0j5', 'Mini Bar', NOW(), NOW()),
('clp6a2b3c4d5e6f7g8h9i0j6', 'Balkon', NOW(), NOW()),
('clp7a2b3c4d5e6f7g8h9i0j7', 'Safe Box', NOW(), NOW()),
('clp8a2b3c4d5e6f7g8h9i0j8', 'Room Service 24 Jam', NOW(), NOW());

-- 2. Insert Rooms (Kamar)
INSERT INTO "Room" (id, name, description, image, price, capacity, "createdAt", "updatedAt") VALUES
('clr1a2b3c4d5e6f7g8h9i0j1', 'Deluxe Room', 'Kamar mewah dengan pemandangan kota. Dilengkapi dengan tempat tidur king size, sofa, meja kerja, dan balkon pribadi. Cocok untuk pasangan atau pelancong bisnis.', 'https://images.unsplash.com/photo-1566665797739-1674de7a421a?w=500', 850000, 2, NOW() - INTERVAL '10 days', NOW()),
('clr2a2b3c4d5e6f7g8h9i0j2', 'Superior Room', 'Kamar nyaman dengan fasilitas lengkap. Tempat tidur queen size, area duduk, dan pemandangan taman. Ideal untuk tamu yang mencari kenyamanan dengan harga terjangkau.', 'https://images.unsplash.com/photo-1631049307264-da0ec9d70304?w=500', 650000, 2, NOW() - INTERVAL '8 days', NOW()),
('clr3a2b3c4d5e6f7g8h9i0j3', 'Family Suite', 'Suite keluarga yang luas dengan 2 kamar tidur terpisah. Ruang tamu yang nyaman, area makan, dan fasilitas lengkap untuk keluarga besar. Maksimal 6 orang.', 'https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?w=500', 1200000, 6, NOW() - INTERVAL '6 days', NOW()),
('clr4a2b3c4d5e6f7g8h9i0j4', 'Executive Room', 'Kamar eksekutif dengan fasilitas premium. Tempat tidur king size, area kerja eksklusif, mini bar, dan akses executive lounge. Perfect untuk business traveler.', 'https://images.unsplash.com/photo-1560472354-b33ff0c44a43?w=500', 950000, 2, NOW() - INTERVAL '4 days', NOW()),
('clr5a2b3c4d5e6f7g8h9i0j5', 'Standard Room', 'Kamar standard dengan fasilitas dasar yang nyaman. Tempat tidur double, meja kecil, dan kamar mandi dalam. Pilihan ekonomis dengan kualitas terjamin.', 'https://images.unsplash.com/photo-1551776235-dde6d482980b?w=500', 450000, 2, NOW() - INTERVAL '2 days', NOW());

-- 3. Insert Room Amenities (Hubungan Kamar dengan Fasilitas)
INSERT INTO "RoomAmenities" (id, "roomId", "amenitiesId") VALUES
-- Deluxe Room amenities
('clra1a2b3c4d5e6f7g8h9i01', 'clr1a2b3c4d5e6f7g8h9i0j1', 'clp1a2b3c4d5e6f7g8h9i0j1'), -- WiFi
('clra2a2b3c4d5e6f7g8h9i02', 'clr1a2b3c4d5e6f7g8h9i0j1', 'clp2a2b3c4d5e6f7g8h9i0j2'), -- AC
('clra3a2b3c4d5e6f7g8h9i03', 'clr1a2b3c4d5e6f7g8h9i0j1', 'clp3a2b3c4d5e6f7g8h9i0j3'), -- TV LED
('clra4a2b3c4d5e6f7g8h9i04', 'clr1a2b3c4d5e6f7g8h9i0j1', 'clp4a2b3c4d5e6f7g8h9i0j4'), -- Kamar Mandi Dalam
('clra5a2b3c4d5e6f7g8h9i05', 'clr1a2b3c4d5e6f7g8h9i0j1', 'clp5a2b3c4d5e6f7g8h9i0j5'), -- Mini Bar
('clra6a2b3c4d5e6f7g8h9i06', 'clr1a2b3c4d5e6f7g8h9i0j1', 'clp6a2b3c4d5e6f7g8h9i0j6'), -- Balkon

-- Superior Room amenities
('clra7a2b3c4d5e6f7g8h9i07', 'clr2a2b3c4d5e6f7g8h9i0j2', 'clp1a2b3c4d5e6f7g8h9i0j1'), -- WiFi
('clra8a2b3c4d5e6f7g8h9i08', 'clr2a2b3c4d5e6f7g8h9i0j2', 'clp2a2b3c4d5e6f7g8h9i0j2'), -- AC
('clra9a2b3c4d5e6f7g8h9i09', 'clr2a2b3c4d5e6f7g8h9i0j2', 'clp3a2b3c4d5e6f7g8h9i0j3'), -- TV LED
('clra10a2b3c4d5e6f7g8h9i10', 'clr2a2b3c4d5e6f7g8h9i0j2', 'clp4a2b3c4d5e6f7g8h9i0j4'), -- Kamar Mandi Dalam

-- Family Suite amenities
('clra11a2b3c4d5e6f7g8h9i11', 'clr3a2b3c4d5e6f7g8h9i0j3', 'clp1a2b3c4d5e6f7g8h9i0j1'), -- WiFi
('clra12a2b3c4d5e6f7g8h9i12', 'clr3a2b3c4d5e6f7g8h9i0j3', 'clp2a2b3c4d5e6f7g8h9i0j2'), -- AC
('clra13a2b3c4d5e6f7g8h9i13', 'clr3a2b3c4d5e6f7g8h9i0j3', 'clp3a2b3c4d5e6f7g8h9i0j3'), -- TV LED
('clra14a2b3c4d5e6f7g8h9i14', 'clr3a2b3c4d5e6f7g8h9i0j3', 'clp4a2b3c4d5e6f7g8h9i0j4'), -- Kamar Mandi Dalam
('clra15a2b3c4d5e6f7g8h9i15', 'clr3a2b3c4d5e6f7g8h9i0j3', 'clp8a2b3c4d5e6f7g8h9i0j8'), -- Room Service

-- Executive Room amenities
('clra16a2b3c4d5e6f7g8h9i16', 'clr4a2b3c4d5e6f7g8h9i0j4', 'clp1a2b3c4d5e6f7g8h9i0j1'), -- WiFi
('clra17a2b3c4d5e6f7g8h9i17', 'clr4a2b3c4d5e6f7g8h9i0j4', 'clp2a2b3c4d5e6f7g8h9i0j2'), -- AC
('clra18a2b3c4d5e6f7g8h9i18', 'clr4a2b3c4d5e6f7g8h9i0j4', 'clp3a2b3c4d5e6f7g8h9i0j3'), -- TV LED
('clra19a2b3c4d5e6f7g8h9i19', 'clr4a2b3c4d5e6f7g8h9i0j4', 'clp4a2b3c4d5e6f7g8h9i0j4'), -- Kamar Mandi Dalam
('clra20a2b3c4d5e6f7g8h9i20', 'clr4a2b3c4d5e6f7g8h9i0j4', 'clp5a2b3c4d5e6f7g8h9i0j5'), -- Mini Bar
('clra21a2b3c4d5e6f7g8h9i21', 'clr4a2b3c4d5e6f7g8h9i0j4', 'clp7a2b3c4d5e6f7g8h9i0j7'), -- Safe Box

-- Standard Room amenities
('clra22a2b3c4d5e6f7g8h9i22', 'clr5a2b3c4d5e6f7g8h9i0j5', 'clp1a2b3c4d5e6f7g8h9i0j1'), -- WiFi
('clra23a2b3c4d5e6f7g8h9i23', 'clr5a2b3c4d5e6f7g8h9i0j5', 'clp2a2b3c4d5e6f7g8h9i0j2'), -- AC
('clra24a2b3c4d5e6f7g8h9i24', 'clr5a2b3c4d5e6f7g8h9i0j5', 'clp4a2b3c4d5e6f7g8h9i0j4'); -- Kamar Mandi Dalam

-- 4. Insert Users (Sample Users)
INSERT INTO "User" (id, name, email, "emailVerified", image, role, phone, "createdAt", "updatedAt") VALUES
('clu1a2b3c4d5e6f7g8h9i0j1', 'Admin Hotel', 'admin@dirayaaqiqah.com', NOW(), 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=100', 'admin', '081234567890', NOW() - INTERVAL '15 days', NOW()),
('clu2a2b3c4d5e6f7g8h9i0j2', 'Budi Santoso', 'budi.santoso@gmail.com', NOW(), 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=100', 'user', '081234567891', NOW() - INTERVAL '12 days', NOW()),
('clu3a2b3c4d5e6f7g8h9i0j3', 'Siti Nurhaliza', 'siti.nurhaliza@gmail.com', NOW(), 'https://images.unsplash.com/photo-1494790108755-2616b612b194?w=100', 'user', '081234567892', NOW() - INTERVAL '10 days', NOW()),
('clu4a2b3c4d5e6f7g8h9i0j4', 'Ahmad Rahman', 'ahmad.rahman@yahoo.com', NOW(), 'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=100', 'user', '081234567893', NOW() - INTERVAL '8 days', NOW()),
('clu5a2b3c4d5e6f7g8h9i0j5', 'Maya Sari', 'maya.sari@hotmail.com', NOW(), 'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?w=100', 'user', '081234567894', NOW() - INTERVAL '6 days', NOW()),
('clu6a2b3c4d5e6f7g8h9i0j6', 'Rudi Hartono', 'rudi.hartono@gmail.com', NOW(), 'https://images.unsplash.com/photo-1519244703995-f4e0f30006d5?w=100', 'user', '081234567895', NOW() - INTERVAL '4 days', NOW());

-- 5. Insert Reservations (Pemesanan)
INSERT INTO "Reservation" (id, "startDate", "endDate", price, "userId", "roomId", "createdAt", "updatedAt") VALUES
('clres1a2b3c4d5e6f7g8h9i01', '2024-12-25', '2024-12-27', 850000, 'clu2a2b3c4d5e6f7g8h9i0j2', 'clr1a2b3c4d5e6f7g8h9i0j1', NOW() - INTERVAL '5 days', NOW()),
('clres2a2b3c4d5e6f7g8h9i02', '2024-12-28', '2024-12-30', 650000, 'clu3a2b3c4d5e6f7g8h9i0j3', 'clr2a2b3c4d5e6f7g8h9i0j2', NOW() - INTERVAL '4 days', NOW()),
('clres3a2b3c4d5e6f7g8h9i03', '2025-01-05', '2025-01-08', 1200000, 'clu4a2b3c4d5e6f7g8h9i0j4', 'clr3a2b3c4d5e6f7g8h9i0j3', NOW() - INTERVAL '3 days', NOW()),
('clres4a2b3c4d5e6f7g8h9i04', '2025-01-10', '2025-01-12', 950000, 'clu5a2b3c4d5e6f7g8h9i0j5', 'clr4a2b3c4d5e6f7g8h9i0j4', NOW() - INTERVAL '2 days', NOW()),
('clres5a2b3c4d5e6f7g8h9i05', '2025-01-15', '2025-01-17', 450000, 'clu6a2b3c4d5e6f7g8h9i0j6', 'clr5a2b3c4d5e6f7g8h9i0j5', NOW() - INTERVAL '1 day', NOW()),
('clres6a2b3c4d5e6f7g8h9i06', '2024-12-20', '2024-12-22', 850000, 'clu2a2b3c4d5e6f7g8h9i0j2', 'clr1a2b3c4d5e6f7g8h9i0j1', NOW() - INTERVAL '7 days', NOW()),
('clres7a2b3c4d5e6f7g8h9i07', '2025-01-20', '2025-01-23', 1200000, 'clu3a2b3c4d5e6f7g8h9i0j3', 'clr3a2b3c4d5e6f7g8h9i0j3', NOW() - INTERVAL '1 day', NOW());

-- 6. Insert Payments (Status Pembayaran)
INSERT INTO "Payment" (id, method, amount, status, "reservationId", "createdAt", "updatedAt") VALUES
('clpay1a2b3c4d5e6f7g8h9i1', 'credit_card', 1700000, 'paid', 'clres1a2b3c4d5e6f7g8h9i01', NOW() - INTERVAL '5 days', NOW()),
('clpay2a2b3c4d5e6f7g8h9i2', 'bank_transfer', 1300000, 'paid', 'clres2a2b3c4d5e6f7g8h9i02', NOW() - INTERVAL '4 days', NOW()),
('clpay3a2b3c4d5e6f7g8h9i3', 'e_wallet', 3600000, 'paid', 'clres3a2b3c4d5e6f7g8h9i03', NOW() - INTERVAL '3 days', NOW()),
('clpay4a2b3c4d5e6f7g8h9i4', 'credit_card', 1900000, 'pending', 'clres4a2b3c4d5e6f7g8h9i04', NOW() - INTERVAL '2 days', NOW()),
('clpay5a2b3c4d5e6f7g8h9i5', 'bank_transfer', 900000, 'unpaid', 'clres5a2b3c4d5e6f7g8h9i05', NOW() - INTERVAL '1 day', NOW()),
('clpay6a2b3c4d5e6f7g8h9i6', 'e_wallet', 1700000, 'paid', 'clres6a2b3c4d5e6f7g8h9i06', NOW() - INTERVAL '7 days', NOW()),
('clpay7a2b3c4d5e6f7g8h9i7', 'credit_card', 3600000, 'failure', 'clres7a2b3c4d5e6f7g8h9i07', NOW() - INTERVAL '1 day', NOW());

-- 7. Insert Contact Messages (Pesan Kontak)
INSERT INTO "Contact" (id, name, email, subject, message, "createdAt", "updatedAt") VALUES
('clcon1a2b3c4d5e6f7g8h9i1', 'John Doe', 'john.doe@gmail.com', 'Pertanyaan Fasilitas Hotel', 'Halo, saya ingin menanyakan fasilitas apa saja yang tersedia di hotel. Apakah ada kolam renang dan gym?', NOW() - INTERVAL '3 days', NOW()),
('clcon2a2b3c4d5e6f7g8h9i2', 'Jane Smith', 'jane.smith@yahoo.com', 'Booking Group', 'Saya ingin melakukan booking untuk group 20 orang. Apakah ada discount khusus untuk group booking?', NOW() - INTERVAL '2 days', NOW()),
('clcon3a2b3c4d5e6f7g8h9i3', 'Ali Akbar', 'ali.akbar@gmail.com', 'Komplain Layanan', 'Saya menginap minggu lalu di kamar 202. Ada masalah dengan AC yang tidak dingin. Mohon follow up.', NOW() - INTERVAL '1 day', NOW()),
('clcon4a2b3c4d5e6f7g8h9i4', 'Lisa Wong', 'lisa.wong@hotmail.com', 'Request Informasi Event', 'Apakah hotel menyediakan paket untuk acara pernikahan? Saya butuh informasi lengkap beserta harganya.', NOW(), NOW());

-- Summary Query untuk melihat data yang telah diinput
-- Uncomment untuk melihat summary data setelah insert

/*
SELECT 'Amenities' as table_name, COUNT(*) as total_records FROM "Amenities"
UNION ALL
SELECT 'Rooms', COUNT(*) FROM "Room"
UNION ALL
SELECT 'RoomAmenities', COUNT(*) FROM "RoomAmenities"
UNION ALL
SELECT 'Users', COUNT(*) FROM "User"
UNION ALL
SELECT 'Reservations', COUNT(*) FROM "Reservation"
UNION ALL
SELECT 'Payments', COUNT(*) FROM "Payment"
UNION ALL
SELECT 'Contacts', COUNT(*) FROM "Contact";
*/
