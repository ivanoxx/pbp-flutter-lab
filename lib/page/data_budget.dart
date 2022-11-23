import 'package:counter_7/main.dart';
import 'package:counter_7/page/form_budget.dart';
import 'package:counter_7/page/my_watchlist_page.dart';
import 'package:flutter/material.dart';

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key});

  final String title = "Data Budget";

  @override
  State<DataBudgetPage> createState() => _DataBudgetPageState();
}

List<Widget> addedBudget = [];

class _DataBudgetPageState extends State<DataBudgetPage> {
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
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(5),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: addedBudget,               
              ),
            )),
      ),
    );
  }
}