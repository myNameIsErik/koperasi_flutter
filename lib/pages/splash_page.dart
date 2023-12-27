import 'dart:async';

import 'package:flutter/material.dart';
import 'package:koperasi_flutter/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, '/login'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          width: 153,
          height: 169,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/splash.png'))),
        ),
      ),
    );
  }
}
