import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animacoes Intro',
      debugShowCheckedModeBanner: false,
      home: LoginApp(),
    );
  }
}

class LoginApp extends StatefulWidget {

  @override
  State<LoginApp> createState() => _LoginApp();
}

class _LoginApp extends State<LoginApp> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2)
    );

    animation = Tween<double>(begin: 0, end: 300).animate(controller);
    animation.addListener(() {
      setState(() {

      });
    });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: animation.value,
        width: animation.value,
        child: FlutterLogo(),
      ),
    );
  }
}
