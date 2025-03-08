import 'package:flutter/material.dart';
import 'package:programming_app/screens/students_screen.dart';
import 'package:programming_app/widgets/Custom_web_container.dart';
import 'package:programming_app/widgets/custom_button.dart';
import 'package:programming_app/widgets/custom_cyber_container.dart';
import 'package:programming_app/widgets/custom_desktop_container.dart';
import 'package:programming_app/widgets/custom_mobile_container.dart';
import 'package:programming_app/widgets/custom_ai_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Image.asset('assets/images/icon.png'),
          ), // Replace with your logo asset ),
        ],
        backgroundColor: Colors.black,
        title: const Text(
          'Learn Programming App',
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
              'Choose The Category :',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            const CustomWebContainer(),
            const CustomMobileContainer(),
            const CustomDesktopContainer(),
            const CustomAiContainer(),
            const CustomCyberContainer(),
            CustomButton(text: 'Show students names', onPressed:(){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentsScreen(),
                ),
              );
            } )

          ]),
        ),
      ),
    );
  }
}

