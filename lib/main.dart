import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Materialize Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Warna utama
        colorScheme: ColorScheme.light(
          secondary: Colors.amber, // Warna sekunder
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue, // Tombol utama berwarna biru
          textTheme: ButtonTextTheme.primary,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.blue[50], // Warna latar belakang input
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Colors.blue), // Border input
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
