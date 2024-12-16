-- TUGAS II SEMESTER 1 KELAS XI TAHUN 2024

-- 1. Buat tabel pegawai dengan field: id integer 11 primary key, nama varchar 100, dan gaji decimal 10,2

CREATE TABLE pegawai (
   id integer(11) primary key,
   nama varchar(100),
   gaji decimal(10,2)
);


-- 2. Insert data ke tabel pegawai 5 record: (1, adam, 3500), (2, sarah, 4020.50), (3, ahmad, 5500), (4, manaf, 2000), (5, aziz, 3000)

INSERT INTO pegawai (id, nama, gaji) 
VALUES (1, 'adam', 3500), (2, 'sarah', 4020.50), (3, 'ahmad', 5500), (4, 'manaf', 2000), (5, 'aziz', 3000);


-- 3. Buat query untuk menampilkan semua data

SELECT * FROM pegawai;


-- 4. Update data gaji Sarah menjadi 4500

UPDATE pegawai SET gaji = 4500 WHERE id = 2;


-- 5. Hapus data Ahmad

DELETE FROM pegawai WHERE id = 3;


-- 6. Buat query untuk menampilkan data gaji di atas 3000

SELECT * FROM pegawai WHERE gaji > 3000;


-- 7. Buat query untuk mencari data pegawai yang huruf depannya A

SELECT * FROM pegawai WHERE nama LIKE 'A%';


-- 8. Buat query untuk mengurutkan data pegawai berdasarkan gaji dari paling kecil ke paling besar

SELECT * FROM pegawai ORDER BY gaji ASC;


-- 9. Buat query untuk menampilkan data gaji di antara 3000 dan 5000

SELECT * FROM pegawai WHERE gaji BETWEEN 3000 AND 5000;


-- 10. Buat query untuk menampilkan semua record data pegawai

SELECT * FROM pegawai;


-- 11. Buat query untuk menampilkan total keseluruhan gaji pegawai

SELECT SUM(gaji) AS totalKeseluruhanGaji FROM pegawai;


-- 12. Buat query untuk menampilkan rata-rata gaji pegawai

SELECT AVG(gaji) AS RataRataGaji FROM pegawai;


-- 13. Buat query untuk menampilkan gaji tertinggi pegawai

SELECT MAX(gaji) AS GajiTertinggi FROM pegawai;


-- 14. Buat tabel departemen dengan field id dan nama departemen

CREATE TABLE departemen (
   id integer(11) primary key,
   nama_departemen varchar(100)
);


-- 15. Insert data ke tabel departemen: (1, 'keuangan'), (2, 'sales')

INSERT INTO departemen (id, nama_departemen) 
VALUES (1, 'keuangan'), (2, 'sales');


-- 16. Ubah tabel pegawai dengan menambahkan field departemenid integer(11)

ALTER TABLE pegawai ADD departemenid integer(11);


-- 17. Update tabel pegawai dengan id 1 hingga 3 dengan departemen id 1

UPDATE pegawai SET departemenid = 1 WHERE id IN (1, 2, 3);


-- 18. Update tabel pegawai dengan id 4 hingga 5 dengan departemen id 2

UPDATE pegawai SET departemenid = 2 WHERE id IN (4, 5);


-- 19. Tampilkan data pegawai: nama, gaji, dan departemen

SELECT p.nama, p.gaji, d.nama_departemen 
FROM pegawai AS p 
JOIN departemen AS d 
ON p.departemenid = d.id;


-- 20. Tampilkan grup per departemen dengan total gaji per departemen

SELECT SUM(p.gaji) AS totalGajiPegawaiPerDepartemen, d.nama_departemen
FROM pegawai AS p 
JOIN departemen AS d 
ON p.departemenid = d.id
GROUP BY d.nama_departemen;