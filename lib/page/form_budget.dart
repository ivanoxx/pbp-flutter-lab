import 'package:counter_7/page/my_watchlist_page.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/data_budget.dart';
import 'package:flutter/services.dart';

class AddBudgetPage extends StatefulWidget {
  const AddBudgetPage({super.key});

  @override
  State<AddBudgetPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<AddBudgetPage> {
  final _formKey = GlobalKey<FormState>();

  String judulBudget = "";
  String nominal = "";
  String jenis = "";

  List<String> listDropdown = ['Pengeluaran', 'Pemasukan'];

  Card createCard(String judulBudget, String nominal, String jenis) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      judulBudget,
                      style: const TextStyle(fontSize: 20),
                    )
                  ])),
          Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, bottom: 10.0, right: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text(nominal), Text(jenis)])),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman tambah budget
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddBudgetPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman data budget
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DataBudgetPage()),
                );
              },
            ),
            ListTile(
              title: const Text('My Watchlist'),
              onTap: () {
                // Route menu ke halaman My Watchlist
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyWatchlistPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        // Menggunakan padding sebesar 8 pixels
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Contoh: Top-up ml",
                            labelText: "Judul",
                            // Menambahkan circular border agar lebih rapi
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          // Menambahkan behavior saat nama diketik
                          onChanged: (String? value) {
                            setState(() {
                              judulBudget = value!;
                            });
                          },
                          // Menambahkan behavior saat data disimpan
                          onSaved: (String? value) {
                            setState(() {
                              judulBudget = value!;
                            });
                          },
                          // Validator sebagai validasi form
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Judul budget tidak boleh kosong!';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        // Menggunakan padding sebesar 8 pixels
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Contoh: 10000",
                            labelText: "Nominal",
                            prefix: Container(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: const Text(
                                'Rp',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            // Menambahkan circular border agar lebih rapi
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          // Accept only number as input
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          // Menambahkan behavior saat nama diketik
                          onChanged: (String? value) {
                            setState(() {
                              nominal = value!;
                            });
                          },
                          // Menambahkan behavior saat data disimpan
                          onSaved: (String? value) {
                            setState(() {
                              nominal = value!;
                            });
                          },
                          // Validator sebagai validasi form
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Nominal budget tidak boleh kosong!';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        // padding: const EdgeInsets.only(left: 220, right: 220),
                        width: 150,
                        child: DropdownButtonFormField(
                          hint: const Text('Pilih Jenis'),
                          items: listDropdown.map((String items) {
                            return DropdownMenuItem(
                                value: items, child: Text(items));
                          }).toList(),
                          onChanged: (Object? value) {
                            setState(() {
                              jenis = value as String;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Silahkan pilih jenis budget!';
                            }
                            return null;
                          },
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: TextButton(
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                  const Size(80.0, 35.0)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                addedBudget.add(
                                    createCard(judulBudget, nominal, jenis));
                                _formKey.currentState!.reset();
                              }
                            },
                            child: const Text(
                              "Simpan",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
