import 'dart:convert';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:counter_7/page/data_budget.dart';
import 'package:counter_7/page/form_budget.dart';
import 'package:counter_7/model/my_watchlist.dart';
import 'package:counter_7/page/detail_watchlist_page.dart';

class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({super.key});

  final String title = "My Watchlist";

  @override
  State<MyWatchlistPage> createState() => _MyWatchlistPageState();
}

class _MyWatchlistPageState extends State<MyWatchlistPage> {
  Future<List<MyWatchlist>> fetchMyWatchlist() async {
    var url = Uri.parse('http://dafi-lab1-pbp.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object MyWatchList
    List<MyWatchlist> myWatchlist = [];

    for (var d in data) {
      if (d != null) {
        myWatchlist.add(MyWatchlist.fromJson(d));
      }
    }

    return myWatchlist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                      builder: (context) => const MyHomePage()),
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
      body: FutureBuilder(
          future: fetchMyWatchlist(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Tidak ada My Watchlist :(",
                      style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => Card(
                            child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailWatchlistPage(
                                      fields: snapshot.data![index].fields),
                                ));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(13),
                                child: Text(
                                  "${snapshot.data![index].fields['title']}",
                                  style: const TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )));
              }
            }
          }),
    );
  }
}
