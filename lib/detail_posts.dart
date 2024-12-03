import 'package:flutter/material.dart';

class DetailPostPage extends StatelessWidget {
  // Menerima parameter data post
  final String title;
  final String description;
  final String image;

  DetailPostPage({
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor:
            Colors.blueAccent, // Menambahkan warna AppBar yang menarik
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar post dengan efek rounded corner
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  image, // Gambar yang dikirimkan
                  fit: BoxFit.cover,
                  height: 250,
                  width: double.infinity,
                ),
              ),
              SizedBox(height: 16),
              // Judul Post dengan styling lebih menarik
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 12),
              // Deskripsi post dengan padding dan font lebih halus
              Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[800],
                  height: 1.5, // Jarak antar baris
                ),
              ),
              SizedBox(height: 20),
              // Tombol interaksi untuk menambah interaksi pengguna
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Logika like post
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Liked...')),
                      );
                    },
                    icon: Icon(Icons.thumb_up),
                    label: Text('Like'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent, // Warna tombol
                      shape: StadiumBorder(),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Navigasi ke halaman komentar
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Comments...')),
                      );
                    },
                    icon: Icon(Icons.comment),
                    label: Text('Comment'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent, // Warna tombol
                      shape: StadiumBorder(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
