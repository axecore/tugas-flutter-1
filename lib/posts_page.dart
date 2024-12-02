import 'package:flutter/material.dart';
import 'detail_posts.dart'; // Import halaman detail_posts.dart

class PostsPage extends StatelessWidget {
  final List<Map<String, String>> posts = [
    {
      'title': 'Judul 1',
      'description':
          'Lorem ipsum dolor sit amet. Aut magnam repudiandae et amet voluptatem est fugiat cupiditate. Est veritatis rerum aut quia veniam est galisum aliquam ea reiciendis eaque. ',
      'image': 'assets/images/dummy_post.jpg', // Local asset
    },
    {
      'title': 'Judul 2',
      'description':
          'Lorem ipsum dolor sit amet. Aut magnam repudiandae et amet voluptatem est fugiat cupiditate. Est veritatis rerum aut quia veniam est galisum aliquam ea reiciendis eaque. ',
      'image': 'assets/images/dummy_post.jpg', // Local asset
    },
    {
      'title': 'Judul 3',
      'description':
          'Lorem ipsum dolor sit amet. Aut magnam repudiandae et amet voluptatem est fugiat cupiditate. Est veritatis rerum aut quia veniam est galisum aliquam ea reiciendis eaque. ',
      'image': 'assets/images/dummy_post.jpg', // Local asset
    },
    {
      'title': 'Judul 4',
      'description':
          'Lorem ipsum dolor sit amet. Aut magnam repudiandae et amet voluptatem est fugiat cupiditate. Est veritatis rerum aut quia veniam est galisum aliquam ea reiciendis eaque. ',
      'image': 'assets/images/dummy_post.jpg', // Local asset
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Check if image is a local asset or a network URL
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: post['image']!.startsWith('assets/')
                        ? Image.asset(
                            post['image']!,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          )
                        : Image.network(
                            post['image']!,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                  ),
                  SizedBox(width: 12.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post['title']!,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          post['description']!,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[600],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 12.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigasi ke halaman detail post
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPostPage(
                                    title: post['title']!,
                                    description: post['description']!,
                                    image: post['image']!,
                                  ),
                                ),
                              );
                            },
                            child: Text('Read More'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
