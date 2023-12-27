import 'package:flutter/material.dart';
import 'package:koperasi_flutter/pages/login.dart';
import 'package:koperasi_flutter/pages/register.dart';
import 'package:koperasi_flutter/pages/splash_page.dart';
import 'package:provider/provider.dart';
import 'package:koperasi_flutter/providers/auth_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AuthProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/login': (context) => const LoginPage(),
          '/register': (context) => const RegisterPage(),
        },
      ),
    );
  }
}
