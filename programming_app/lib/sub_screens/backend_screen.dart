import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BackendScreen extends StatefulWidget {
  const BackendScreen({super.key});
  static const String routeName = '/backend';

  @override
  State<BackendScreen> createState() => _BackendScreenState();
}

class _BackendScreenState extends State<BackendScreen> {
  final _urlphp = "https://www.w3schools.com/php/";
  final _urlcpp = "https://www.w3schools.com/cs/index.php";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset('assets/images/backend.png'),
          ), // Replace with your logo asset ),
        ],
        backgroundColor: Colors.black,
        title: const Text(
          'Backend',
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
                    launchMyUrl(_urlphp);
                  },
                  child: Image.asset(
                    'assets/images/php.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
                const Text(
                  'PHP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    launchMyUrl(_urlcpp);
                  },
                  child: Image.asset(
                    'assets/images/c#.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
                const Text(
                  'C#',
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
