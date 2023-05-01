# SpeedTypingTest-CapyType

## Anggota Kelompok

1. Furqan Ramadhan (2108107010013)
2. M. Zaki Zamani (2108107010014)
3. Abdul Helmi (2108107010028)
4. Fanul Nastia (2108107010029)
5. Arrijalul Khairi (2108107010037)
6. Elsa Mardhatillah Hariska (2108107010048)
7. Iwansur Sidik (2108107010091)

## Persiapan Menjalankan Program

Masuk ke dalam folder CapyType

```bash
cd CapyType
```

Install semua depedency yang dibutuhkan untuk menjalankan program

```bash
composer install; npm install;
```

membuat environment dan edit .env didalamnya

```bash
cp .env.example .env
```

ganti nama database didalam .env menjadi capytype serta masukkan pasword sesuai device masing-masing.

```bash
DB_DATABASE=capytype
DB_PASSWORD=your_password
```

buatlah database baru bernama capytype didalam http://localhost/phpmyadmin/ atau mysql

```bash
create database capytype;
```

migrate database masing-masing device didalam laravel, serta seed data

```bash
php artisan migrate:refresh
php artisan migrate --seed
```

Menggenerate key

```bash
php artisan key:generate
```

## Menjalankan Web CapyType

Jalankan server laravel

```bash
php artisan serve
```

Jalankan perintah berikut untuk menjalankan server vite

```bash
npm run dev
```

## Warning! Gunakan Conventional Commit setiap melakukan perubahan!

Buka pada browser http://localhost:8000 untuk membuka website.
