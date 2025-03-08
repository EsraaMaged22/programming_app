import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FrontendScreen extends StatefulWidget {
  const FrontendScreen({super.key});
  static const String routeName = '/frontend';

  @override
  State<FrontendScreen> createState() => _FrontendScreenState();
}

class _FrontendScreenState extends State<FrontendScreen> {
  final _urlhtml = "https://www.w3schools.com/Html/";
  final _urlcss = "https://www.w3schools.com/css/";
  final _urljs = "https://www.w3schools.com/js/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset('assets/images/frontend.png'),
          ), // Replace with your logo asset ),
        ],
        backgroundColor: Colors.black,
        title: const Text(
          'Frontend',
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
                    launchMyUrl(_urlhtml);
                  },
                  child: Image.asset(
                    'assets/images/html.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
                const Text(
                  'HTML',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    launchMyUrl(_urlcss);
                  },
                  child: Image.asset(
                    'assets/images/css.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
                const Text(
                  'CSS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {
                    launchMyUrl(_urljs);
                  },
                  child: Image.asset(
                    'assets/images/js.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
                const Text(
                  'JAVASCRIPT',
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
