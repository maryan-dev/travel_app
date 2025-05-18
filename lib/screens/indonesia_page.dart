import 'package:flutter/material.dart';

class IndonesiaPage extends StatelessWidget {
  IndonesiaPage({Key? key}) : super(key: key);
  final List<Map<String, String>> destinations = [
    {
      'image': "assets/mf1.jpg",
      'title': 'Raja Ampat',
      'location': 'Papua, Indonesia',
      'rating': '5'
    },
    {
      'image': "assets/mf2.jpg",
      'title': 'Borobudur',
      'location': 'Yogyakarta, Indonesia',
      'rating': '4.5'
    },
    {
      'image': "assets/mf4.jpg",
      'title': 'Prambanan',
      'location': 'Yogyakarta, Indonesia',
      'rating': '4.5'
    },
    {
      'image': "assets/mf3.jpg",
      'title': 'Kelingking Beach',
      'location': 'Bali, Indonesia',
      'rating': '5'
    },
    {
      'image': "assets/mf5.jpg",
      'title': 'Labuan Bajo',
      'location': 'NTT, Indonesia',
      'rating': '4.5'
    },
    {
      'image': "assets/mf4.jpg",
      'title': 'Prambanan',
      'location': 'Yogyakarta, Indonesia',
      'rating': '4.5'
    },
    {
      'image': "assets/mf3.jpg",
      'title': 'Kelingking Beach',
      'location': 'Bali, Indonesia',
      'rating': '5'
    },
    {
      'image': "assets/mf5.jpg",
      'title': 'Labuan Bajo',
      'location': 'NTT, Indonesia',
      'rating': '4.5'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_right_alt_sharp,
          size: 30,
          color: Colors.white,
        ),
        title: const Text(
          'Indonesia',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: destinations.length,
        itemBuilder: (context, index) {
          final destination = destinations[index];
          return ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
            leading: SizedBox(
              width: 60,
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  destination['image']!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              destination['title']!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text(
              destination['location']!,
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 30),
                Text(destination['rating']!),
              ],
            ),
          );
        },
      ),
    );
  }
}
