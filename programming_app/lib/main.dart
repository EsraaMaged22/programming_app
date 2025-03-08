import 'package:flutter/material.dart';
import 'package:programming_app/screens/ai_screen.dart';
import 'package:programming_app/screens/cyber_screen.dart';
import 'package:programming_app/screens/desktop_screen.dart';
import 'package:programming_app/screens/home_screen.dart';
import 'package:programming_app/screens/mobile_screen.dart';
import 'package:programming_app/screens/splash_screen.dart';
import 'package:programming_app/screens/web_screen.dart';
import 'package:programming_app/sub_screens/backend_screen.dart';
import 'package:programming_app/sub_screens/cross_platform.dart';
import 'package:programming_app/sub_screens/frontend_screen.dart';
import 'package:programming_app/sub_screens/native_mobile.dart';
import 'package:programming_app/sub_screens/network_screen.dart';
import 'package:programming_app/sub_screens/sql.dart';

void main() {
  runApp(const ProgrammingApp());
}

class ProgrammingApp extends StatelessWidget {
  const ProgrammingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        WebScreen.routeName: (context) => const WebScreen(),
        MobileScreen.routeName: (context) => const MobileScreen(),
        DesktopScreen.routeName: (context) => const DesktopScreen(),
        AiScreen.routeName: (context) => const AiScreen(),
        CyberScreen.routeName: (context) => const CyberScreen(),
        FrontendScreen.routeName: (context) => const FrontendScreen(),
        BackendScreen.routeName: (context) => const BackendScreen(),
        NativeMobile.routeName: (context) => const NativeMobile(),
        CrossPlatform.routeName: (context) => const CrossPlatform(),
        NetworkScreen.routeName: (context) => const NetworkScreen(),
        Sql.routeName: (context) => const Sql(),
      },
      initialRoute: SplashScreen.routeName,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData.dark(),
    );
  }
}
