import 'package:apple_shop/provider/cartProvider.dart';
import 'package:apple_shop/provider/categoryProvider.dart';
import 'package:apple_shop/screens/CartPage.dart';
import 'package:apple_shop/screens/Homepage.dart';
import 'package:apple_shop/screens/checkOutPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => categoryProvider()),
        ChangeNotifierProvider(create: (_) => cartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// grey[900]
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: const HomePage(),
      routes: {
        "\cart": (context) => CartPage(),
        "\checkout": (context) => CheckOut(),
      },
    );
  }
}
