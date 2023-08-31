#untuk build app build di folder php/Dockerfile
docker build -t egipermana:php81 -f php/Dockerfile .

#untuk masuk ke salah satu container yang sedang aktif
#tampilkan dahulu list container dengan command
sudo docker compose ps
#docker-php-v1-web-1 adalah container yg sedang aktif untuk cek nginx
sudo docker exec -it docker-php-v1-web-1 sh

#untuk keluar dari bash sh 
exit


#untuk build setelah composer ditambahkan
#bisa juga untuk menjalankan perintah yang ada perintah build di docker-compose.yml
sudo docker compose up --build -d

#untuk menampilkan list file
ls -la


#untuk menghentikan container sedang aktif
sudo docker compose down

#untuk menjalankan docker compse spesifik ke file tertentu
#contoh disini docker-compose-dev.yml
sudo docker compose -f docker-compose-dev.yml up --build -d


#untuk install composer yang telah di definisikan di composer.json
#masuk dulu ke folder app
cd app

#kemudian masukan commnd
composer install --ignore-platform-reqs


#setelah compose terinstall lalu jalankan dump autolod
compose dump-autoload


#setelah autolad tergenerate, jalankan kembali docker pada root folder menggunakan perintah
sudo docker compose -f docker-compose-dev.yml up -d
