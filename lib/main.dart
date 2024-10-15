import 'package:ecommerce_app_azka/auth/getstarted-page.dart';
import 'package:flutter/material.dart';
import 'preference/preference.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: AppColor.bgWhite,
        useMaterial3: true,
      ),
      home:  GetStartedPage(),
    );
  }
}
