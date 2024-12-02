import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor:
            Theme.of(context).primaryColor, // Menggunakan warna tema utama
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo di tengah
            Center(
              child: Image.asset(
                'assets/images/login.png', // Ganti dengan nama file logo Anda
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor), // Warna teks label
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Dummy login: just navigate to home page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context)
                    .primaryColor, // Menggunakan warna tombol dari tema
                padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal:
                        100), // Mengatur padding agar tombol lebih besar
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 18, // Mengatur ukuran font
                  color: Colors.white, // Mengatur warna teks menjadi putih
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
