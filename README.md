# **Lab Flutter PBP - Dafi Nafidz Radhiyya (2106701564)**

* [Lab 7](https://github.com/ivanoxx/pbp-flutter-lab#lab-7)
* [Lab 8](https://github.com/ivanoxx/pbp-flutter-lab#lab-8)

## **Lab 7**

### 1. *Stateful and Stateless Widget*
*Stateful Widget* artinya *widget* tersebut memiliki objek State yang mengandung *fields* yang dapat mempengaruhi tampilannya. Maka dari itu, *stateful widget* dapat berubah ketika pengguna berinteraksi dengannya. 
*Stateless widget* adalah kebalikan dari *stateful widget*. Ketika sudah dibuat, *state* dari *widget* ini tidak dapat diubah.

### 2. *Widget* yang Digunakan
* `Text`
: Menampilkan sebuah *string* dengan *single style*.
* `Icon`
: Menampilkan sebuah ikon.
* `Column`
: Sebuah *widget* yang menampilkan *children*-nya secara vertikal.
* `Row`
: Sebuah *widget* yang menampilkan *children*-nya secara horizontal.
* `Scaffold`
: Menerapkan dasar dari *visual layout* Material Design.
* `AppBar`
: *App bar* dari Material Design
* `Padding`
: Memberi *padding* pada *child* yang diletakkan di dalamnya.
* `FloatingActionButton`
: Membuat tombol yang dapat melakukan sebuah *action*
* `Center`
: Sebuah *widget* yang *child*-nya akan berposisi di tengah.
* `Visibility`
: Menampilkan *child*-nya tergantung dengan nilai *field* `visible`.

### 3. `setState`
Method ini digunakan bila ingin ada perubahan yang terjadi pada tampilan app secara langsung. `setState` akan menginfokan *framework* Flutter bahwa ada sesuatu yang berubah, yang mengakibatkan *method* `build` di-*rerun* sehingga menampilkan perubahan yang terjadi. Pada kasus ini, yang berubah adalah nilai dari variabel `_counter`. Namun yang berubah di tampilan tidak hanya nilai angka saja, karena `_counter` juga mempengaruhi teks yang ditampilkan. Ketika *method* `build` di-*rerun* dan nilai `_counter` sudah berubah, maka teks yang ditampilkan akan sesuai dengan kondisi *ternary* yang diberikan.

### 4. Perbedaan `const` dan `final`
* Setelah pertama kali di-*assign*, variabel `final` tidak dapat diubah nilainya.
* Variabel `const` sebenarnya memiliki sifat yang sama dengan `final`, hanya saja `const` juga menjadikan sebuah variabel menjadi konstan ketika program di-*compile*

### 5. Implementasi
* Menambahkan fungsi `_decrementCounter` yang akan mengurangi nilai vairabel `_counter`.
* Menambahkan tombol yang sama dengan tombol untuk menambah *counter*, hanya saja, fungsi yang dipanggil ketika tombol ditekan adalah `_decrementCounter`. Karena tombol ini digunakan untuk mengurangi *counter*.
* Menambahkan *padding* agar tombol *increment* dan *decrement counter* berada di posisi sesuai dengan yang diinginkan.
* Menambahkan *ternary expression* terhadap teks yang ditampilkan. Teks akan berubah menjadi `Genap` atau `Ganjil` relatif terhadap nilai *counter* setelah salah satu tombol ditekan. 

### 6. Bonus
Menggunakan `Visibility` pada tombol *decrement* dengan nilai `visible` adalah `_counter != 0`. Sehingga, ketika `_counter == 0`, `visible` akan bernilai *false* dan tombol tidak akan disembunyikan. Sebaliknya, ketika `_counter != 0`, `visible` akan bernilai *true* sehingga tombol akan ditampilkan.

## **Lab 8**

### 1. Perbedaan `Navigator.push` dan `Navigator.pushReplacement`
`Navigator.push` menambahkan `Route` ke *top of stack* dari `Navigator`. Kalau `Navigator.pushReplacement`, selain menambahkannya ke *top of stack* juga menghilangkan `Route` yang sebelumnya.

### 2. *Widget* yang Digunakan
* `Text`
: Menampilkan sebuah *string* dengan *single style*.
* `Column`
: Sebuah *widget* yang menampilkan *children*-nya secara vertikal.
* `Row`
: Sebuah *widget* yang menampilkan *children*-nya secara horizontal.
* `Scaffold`
: Menerapkan dasar dari *visual layout* Material Design.
* `AppBar`
: *App bar* dari Material Design
* `Padding`
: Memberi *padding* pada *child* yang diletakkan di dalamnya.
* `Center`
: Sebuah *widget* yang *child*-nya akan berposisi di tengah.
* `Drawer`
: Panel yang berdiri secara horizontal di pinggir `Scaffold` yang menampilkan tautan navigasi dalam aplikasi.
*  `ListTile`
: Sebuah baris yang biasanya mengandung teks dan ikon.
* `Navigator`
: Mengelola *child widgets* menggunakan prinsip *stack*.
* `MaterialPageRoute`
: Rute modal yang menggantikan seluruh layar dengan transisi platform-adaptif.
* `SingleChildScrollView`
: Digunakan agar *child*-nya bisa di-*scroll*.
* `Container`
: *Widget* yang menggabungkan *widget* umum untuk *painting*, *positioning*, dan *sizing*.
* `Card`
: Sebuah panel yang bisa digunakan untuk menampilkan informasi di dalamnya. Memiliki *style* dimana sudutnya sedikit bulat dan terdapat bayangan elevasi.
* `CustomScrollView`
: Kurang lebih sama dengan `SingleChildScrollView` namun lebih fleksibel.
* `SliverFillRemainingFill`
: Sebuah *sliver* yang mengandung sebuah *box child* yang mengisi sisa ruang pada *viewport*.
* `Form`
: *Containter* untuk melakukan *grouping* terhadap beberapa *form field widget*.
* `TextFormField`
: *Field* teks yang bisa digunakan untuk melakukan *input*.
* `InputDecoration`
: Melakukan dekorasi pada sebuah *input field*.
* `DropdownButtonFormField`
: Menu *dropdown*.
* `Expanded`
: Melebarkan *child* dari `Row`, `Column`, atau `Flex` agar mengisi ruang yang masih tersedia.
* `Align`
: Melakukan *aligining* terhadap *child*-nya.
* `TextButton`
: Tombol yang berisi teks.

### 3. Jenis-jenis *event* pada FLutter
* `onPressed`:
Fungsi pada *event* ini akan dijalankan ketika *widget* yang bisa ditekan, ditekan. Contoh: `TextButton`.
* `onPressed`:
Fungsi pada *event* ini akan dijalankan ketika sedang terjadi perubahan pada *widget*. Contoh: Ketika *user* sedang mengetik pada `TextFormField`.
* `onSaved`:
Fungsi pada *event* ini akan dijalankan ketika dilakukan *save* pada sebuah `Form`.

### 4. Cara kerja `Navigator`
`Navigator` menggunakan prinsip *stack* dalam mengganti halaman. Halaman yang ditampilkan adalah yang berada pada *top of stack*.

### 5. Implementasi
* Membuat *form* beserta *input field* yang dinginkan mengacu pada tutorial.
* Data-data yang di-input disimpan kedalam sebuah `List`.
* Data yang disimpan berupa `Card`.
* Tampilkan data pada halaman Data Budget sesuai dengan yang sudah ditambahkan dengan memanfaatkan `List` yang tadi sudah dibuat.