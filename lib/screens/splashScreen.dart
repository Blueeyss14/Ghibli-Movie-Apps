import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ghibli_movie4/pages/homePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => HomePage(),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 36, 39),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Image.asset(
              "images/Logos/studioGhibli_logo.png",
              color: Colors.white,
              height: 120,
            ),
          ),
        ),
      ),
    );
  }
}
