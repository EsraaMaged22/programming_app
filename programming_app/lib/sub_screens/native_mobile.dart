import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NativeMobile extends StatefulWidget {
  const NativeMobile({super.key});
  static const String routeName = '/nativemobile';
  @override
  State<NativeMobile> createState() => _NativeMobileState();
}

class _NativeMobileState extends State<NativeMobile> {
  @override
  final _urljava = "https://www.w3schools.com/java/";
  final _urlkotlin = "https://www.w3schools.com/kotlin/";
  final _urlswift =
      "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset('assets/images/mobile.png'),
          ), // Replace with your logo asset ),
        ],
        backgroundColor: Colors.black,
        title: const Text(
          'Native',
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
                    launchMyUrl(_urljava);
                  },
                  child: Image.asset(
                    'assets/images/java.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
                const Text(
                  'Java',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    launchMyUrl(_urlkotlin);
                  },
                  child: Image.asset(
                    'assets/images/kotlin.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
                const Text(
                  'Kotlin',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    launchMyUrl(_urlswift);
                  },
                  child: Image.asset(
                    'assets/images/swift.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
                const Text(
                  'Swift',
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
