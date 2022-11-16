# **Lab Flutter PBP - Dafi Nafidz Radhiyya (2106701564)**

* [Lab 7](https://github.com/ivanoxx/pbp-flutter-lab#lab-7)
* [Lab 8](https://github.com/ivanoxx/pbp-flutter-lab#lab-8)

## **Lab 7**

### *Stateful and Stateless Widget*
*Stateful Widget* artinya *widget* tersebut memiliki objek State yang mengandung *fields* yang dapat mempengaruhi tampilannya. Maka dari itu, *stateful widget* dapat berubah ketika pengguna berinteraksi dengannya. 
*Stateless widget* adalah kebalikan dari *stateful widget*. Ketika sudah dibuat, *state* dari *widget* ini tidak dapat diubah.

### *Widget* yang Digunakan
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

### `setState`
Method ini digunakan bila ingin ada perubahan yang terjadi pada tampilan app secara langsung. `setState` akan menginfokan *framework* Flutter bahwa ada sesuatu yang berubah, yang mengakibatkan *method* `build` di-*rerun* sehingga menampilkan perubahan yang terjadi. Pada kasus ini, yang berubah adalah nilai dari variabel `_counter`. Namun yang berubah di tampilan tidak hanya nilai angka saja, karena `_counter` juga mempengaruhi teks yang ditampilkan. Ketika *method* `build` di-*rerun* dan nilai `_counter` sudah berubah, maka teks yang ditampilkan akan sesuai dengan kondisi *ternary* yang diberikan.

### Perbedaan `const` dan `final`
* Setelah pertama kali di-*assign*, variabel `final` tidak dapat diubah nilainya.
* Variabel `const` sebenarnya memiliki sifat yang sama dengan `final`, hanya saja `const` juga menjadikan sebuah variabel menjadi konstan ketika program di-*compile*

### Implementasi
1. Menambahkan fungsi `_decrementCounter` yang akan mengurangi nilai vairabel `_counter`.
2. Menambahkan tombol yang sama dengan tombol untuk menambah *counter*, hanya saja, fungsi yang dipanggil ketika tombol ditekan adalah `_decrementCounter`. Karena tombol ini digunakan untuk mengurangi *counter*.
3. Menambahkan *padding* agar tombol *increment* dan *decrement counter* berada di posisi sesuai dengan yang diinginkan.
4. Menambahkan *ternary expression* terhadap teks yang ditampilkan. Teks akan berubah menjadi `Genap` atau `Ganjil` relatif terhadap nilai *counter* setelah salah satu tombol ditekan. 

### Bonus
Menggunakan `Visibility` pada tombol *decrement* dengan nilai `visible` adalah `_counter != 0`. Sehingga, ketika `_counter == 0`, `visible` akan bernilai *false* dan tombol tidak akan disembunyikan. Sebaliknya, ketika `_counter != 0`, `visible` akan bernilai *true* sehingga tombol akan ditampilkan.

## **Lab 8**

### Perbedaan `Navigator.push` dan `Navigator.pushReplacement`
`Navigator.push` menambahkan `Route` ke *top of stack* dari `Navigator`. Kalau `Navigator.pushReplacement`, selain menambahkannya ke *top of stack* juga menghilangkan `Route` yang sebelumnya.

### *Widget* yang Digunakan
1. `Text`
: Menampilkan sebuah *string* dengan *single style*.
2. `Column`
: Sebuah *widget* yang menampilkan *children*-nya secara vertikal.
3. `Row`
: Sebuah *widget* yang menampilkan *children*-nya secara horizontal.
4. `Scaffold`
: Menerapkan dasar dari *visual layout* Material Design.
5. `AppBar`
: *App bar* dari Material Design
6. `Padding`
: Memberi *padding* pada *child* yang diletakkan di dalamnya.
7. `Center`
: Sebuah *widget* yang *child*-nya akan berposisi di tengah.
8. `Drawer`
: Panel yang berdiri secara horizontal di pinggir `Scaffold` yang menampilkan tautan navigasi dalam aplikasi.
9.  `ListTile`
: Sebuah baris yang biasanya mengandung teks dan ikon.
10. `Navigator`
: Mengelola *child widgets* menggunakan prinsip *stack*.
11. `MaterialPageRoute`
: Rute modal yang menggantikan seluruh layar dengan transisi platform-adaptif.
12. `SingleChildScrollView`
: Digunakan agar *child*-nya bisa di-*scroll*.
13. `Container`
: *Widget* yang menggabungkan *widget* umum untuk *painting*, *positioning*, dan *sizing*.
14. `Card`
: Sebuah panel yang bisa digunakan untuk menampilkan informasi di dalamnya. Memiliki *style* dimana sudutnya sedikit bulat dan terdapat bayangan elevasi.
15. `CustomScrollView`
: Kurang lebih sama dengan `SingleChildScrollView` namun lebih fleksibel.
16. `SliverFillRemainingFill`
: Sebuah *sliver* yang mengandung sebuah *box child* yang mengisi sisa ruang pada *viewport*.
17. `Form`
: *Containter* untuk melakukan *grouping* terhadap beberapa *form field widget*.
18. `TextFormField`
: *Field* teks yang bisa digunakan untuk melakukan *input*.
19. `InputDecoration`
: Melakukan dekorasi pada sebuah *input field*.
20. `DropdownButtonFormField`
: Menu *dropdown*.
21. `Expanded`
: Melebarkan *child* dari `Row`, `Column`, atau `Flex` agar mengisi ruang yang masih tersedia.
22. `Align`
: Melakukan *aligining* terhadap *child*-nya.
23. `TextButton`
: Tombol yang berisi teks.

### Jenis-jenis *event* pada FLutter
1. `onPressed`:
Fungsi pada *event* ini akan dijalankan ketika *widget* yang bisa ditekan, ditekan. Contoh: `TextButton`.
2. `onPressed`:
Fungsi pada *event* ini akan dijalankan ketika sedang terjadi perubahan pada *widget*. Contoh: Ketika *user* sedang mengetik pada `TextFormField`.
3. `onSaved`:
Fungsi pada *event* ini akan dijalankan ketika dilakukan *save* pada sebuah `Form`.

### Cara kerja `Navigator`
`Navigator` menggunakan prinsip *stack* dalam mengganti halaman. Halaman yang ditampilkan adalah yang berada pada *top of stack*.

### Implementasi
1. Membuat *form* beserta *input field* yang dinginkan mengacu pada tutorial.
2. Data-data yang di-input disimpan kedalam sebuah `List`.
3. Data yang disimpan berupa `Card`.
4. Tampilkan data pada halaman Data Budget sesuai dengan yang sudah ditambahkan dengan memanfaatkan `List` yang tadi sudah dibuat.