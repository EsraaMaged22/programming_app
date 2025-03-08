import 'package:flutter/material.dart';
import 'package:programming_app/widgets/custom_backend.dart';
import 'package:programming_app/widgets/custom_frontend.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  static const String routeName = '/web';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset('assets/images/web.png'),
          ), // Replace with your logo asset ),
        ],
        backgroundColor: Colors.black,
        title: const Text(
          'Web Development',
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
          child: ListView(children: const [
            Text(
              'Choose The Web Branch :',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomFrontend(),
            CustomBackend(),
          ]),
        ),
      ),
    );
  }
}
