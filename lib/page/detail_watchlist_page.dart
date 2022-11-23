import 'package:counter_7/main.dart';
import 'package:counter_7/page/data_budget.dart';
import 'package:counter_7/page/form_budget.dart';
import 'package:counter_7/page/my_watchlist_page.dart';
import 'package:flutter/material.dart';

class DetailWatchlistPage extends StatefulWidget {
  const DetailWatchlistPage({super.key, required this.fields});

  final Map<String, dynamic> fields;
  final String title = "Detail";

  @override
  State<DetailWatchlistPage> createState() => _DetailWatchlistPageState();
}

class _DetailWatchlistPageState extends State<DetailWatchlistPage> {
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
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
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
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15, top: 10),
                          child: Text(
                            widget.fields["title"],
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                const TextSpan(
                                    text: 'Release Date: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: widget.fields["release_date"]),
                              ],
                            ),
                          ),
                        )),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                const TextSpan(
                                    text: 'Rating: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: "${widget.fields['rating']}/10"),
                              ],
                            ),
                          ),
                        )),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                const TextSpan(
                                    text: 'Release Date: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: widget.fields["release_date"]),
                              ],
                            ),
                          ),
                        )),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                const TextSpan(
                                    text: 'Status: ',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: widget.fields["watched"] == "Yes"
                                        ? "watched"
                                        : "unwatched"),
                              ],
                            ),
                          ),
                        )),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, top: 5),
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                const TextSpan(
                                    text: 'Review:\n',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: widget.fields["review"]),
                              ],
                            ),
                          ),
                        )),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: TextButton(
                          style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all(
                                const Size.fromHeight(45)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MyWatchlistPage()),
                            );
                          },
                          child: const Text(
                            "Back",
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
    );
  }
}
