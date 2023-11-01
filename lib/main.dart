import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:app/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget _homePage = Splash();

  @override
  void initState() {
    super.initState();
    // Delayed execution
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _homePage = LoginScreen();
      });
    });
    // Set the initial page to the Splash widget
    _homePage = const Splash();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS Pemrograman Mobile',
      theme: ThemeData(),
      home: _homePage, // Removed const as it is set in initState
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF451952),
        child: Column(
          children: [
            const Expanded(
                child: Center(
              child: Image(
                image: AssetImage('images/bird.png'),
              ),
            )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  LoadingAnimationWidget.beat(
                    color: Color(0xFF46C2CB),
                    size: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'UTS',
                    style: TextStyle(
                      color: Color(0xFF03C988),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const Text(
                    'Pemrograman Mobile',
                    style: TextStyle(
                      color: Color(0xFF008170),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


