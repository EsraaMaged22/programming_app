import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sql extends StatefulWidget {
  const Sql({super.key});
  static const String routeName = '/sql';
  @override
  State<Sql> createState() => _SqlState();
}

class _SqlState extends State<Sql> {
  @override
  final _urlsql = "https://www.w3schools.com/sql/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset('assets/images/database.png'),
          ), // Replace with your logo asset ),
        ],
        backgroundColor: Colors.black,
        title: const Text(
          'Database',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Colors.purple,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: ListView(children: [
            const Text(
              'Choose The language you want learn:',
              style: TextStyle(
                color: Colors.black,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    launchMyUrl(_urlsql);
                  },
                  child: Image.asset(
                    'assets/images/database.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
                const Text(
                  'SQL',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

Future<void> launchMyUrl(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw Exception('Could not launch $url');
  }
}
