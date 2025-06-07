import 'package:flutter/material.dart';
import 'package:ecommerceapp/pages/cart_page.dart';
import 'package:ecommerceapp/pages/home_page.dart';
import 'package:ecommerceapp/pages/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eCommerce App',
      theme: ThemeData(
        primaryColor: const Color(0xFF737BBA), // Darker purple
        scaffoldBackgroundColor: const Color(0xFFBABCDF), // Light purple
        visualDensity: VisualDensity.adaptivePlatformDensity,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF737BBA), // Button color
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF737BBA), // Accent color
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/cart': (context) => const CartPage(),
      },
    );
  }
}