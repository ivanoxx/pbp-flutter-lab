# **Lab 7 - Dafi Nafidz Radhiyya (2106701564)**

## *Stateful and Stateless Widget*
*Stateful Widget* artinya *widget* tersebut memiliki objek State yang mengandung *fields* yang dapat mempengaruhi tampilannya. Maka dari itu, *stateful widget* dapat berubah ketika pengguna berinteraksi dengannya. 
*Stateless widget* adalah kebalikan dari *stateful widget*. Ketika sudah dibuat, *state* dari *widget* ini tidak dapat diubah.

## *Widget* yang Digunakan
1. `Text`
: Menampilkan sebuah *string* dengan *single style*.
2. `Icon`
: Menampilkan sebuah ikon.
3. `Column`
: Sebuah *widget* yang menampilkan *children*-nya secara vertikal.
4. `Row`
: Sebuah *widget* yang menampilkan *children*-nya secara horizontal.
5. `Scaffold`
: Menerapkan dasar dari *visual layout* Material Design.
6. `AppBar`
: *App bar* dari Material Design
7. `Padding`
: Memberi *padding* pada *child* yang diletakkan di dalamnya.
8. `FloatingActionButton`
: Membuat tombol yang dapat melakukan sebuah *action*
9. `Center`
: Sebuah *widget* yang *child*-nya akan berposisi di tengah.
10. `Visibility`
: Menampilkan *child*-nya tergantung dengan nilai *field* `visible`.

## `setState`
Method ini digunakan bila ingin ada perubahan yang terjadi pada tampilan app secara langsung. `setState` akan menginfokan *framework* Flutter bahwa ada sesuatu yang berubah, yang mengakibatkan *method* `build` di-*rerun* sehingga menampilkan perubahan yang terjadi. Pada kasus ini, yang berubah adalah nilai dari variabel `_counter`. Namun yang berubah di tampilan tidak hanya nilai angka saja, karena `_counter` juga mempengaruhi teks yang ditampilkan. Ketika *method* `build` di-*rerun* dan nilai `_counter` sudah berubah, maka teks yang ditampilkan akan sesuai dengan kondisi *ternary* yang diberikan.

## Perbedaan `const` dan `final`
* Setelah pertama kali di-*assign*, variabel `final` tidak dapat diubah nilainya.
* Variabel `const` sebenarnya memiliki sifat yang sama dengan `final`, hanya saja `const` juga menjadikan sebuah variabel menjadi konstan ketika program di-*compile*

## Implementasi
1. Menambahkan fungsi `_decrementCounter` yang akan mengurangi nilai vairabel `_counter`.
2. Menambahkan tombol yang sama dengan tombol untuk menambah *counter*, hanya saja, fungsi yang dipanggil ketika tombol ditekan adalah `_decrementCounter`. Karena tombol ini digunakan untuk mengurangi *counter*.
3. Menambahkan *padding* agar tombol *increment* dan *decrement counter* berada di posisi sesuai dengan yang diinginkan.
4. Menambahkan *ternary expression* terhadap teks yang ditampilkan. Teks akan berubah menjadi `Genap` atau `Ganjil` relatif terhadap nilai *counter* setelah salah satu tombol ditekan. 

## Bonus
Menggunakan `Visibility` pada tombol *decrement* dengan nilai `visible` adalah `_counter != 0`. Sehingga, ketika `_counter == 0`, `visible` akan bernilai *false* dan tombol tidak akan disembunyikan. Sebaliknya, ketika `_counter != 0`, `visible` akan bernilai *true* sehingga tombol akan ditampilkan.
