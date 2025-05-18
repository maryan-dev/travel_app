import 'package:flutter/material.dart';

class JapanPage extends StatefulWidget {
  const JapanPage({Key? key}) : super(key: key);

  @override
  _JapanPageState createState() => _JapanPageState();
}

class _JapanPageState extends State<JapanPage> {
  final List<Map<String, String>> destinations = [
    {
      'image': "assets/heyt.jpeg",
      'title': ' Ampat',
      'location': 'Papua, Japan',
      'rating': '9.9'
    },
    {
      'image': "assets/mf2.jpg",
      'title': 'Borobudur',
      'location': 'Yogyakarta, Japan',
      'rating': '4.5'
    },
    {
      'image': "assets/mf4.jpg",
      'title': 'Prambanan',
      'location': 'Yogyakarta, Japan',
      'rating': '4.5'
    },
    {
      'image': "assets/mf3.jpg",
      'title': 'Kelingking Beach',
      'location': 'Bali, Japan',
      'rating': '5'
    },
    {
      'image': "assets/mf5.jpg",
      'title': 'Labuan Bajo',
      'location': 'NTT, Japan',
      'rating': '4.5'
    },
    {
      'image': "assets/mf4.jpg",
      'title': 'Prambanan',
      'location': 'Yogyakarta, Japan',
      'rating': '4.0'
    },
    {
      'image': "assets/mf3.jpg",
      'title': 'Kelingking Beach',
      'location': 'Bali, Japan',
      'rating': '5.9'
    },
    {
      'image': "assets/mf5.jpg",
      'title': 'Labuan Bajo',
      'location': 'NTT, Japan',
      'rating': '8.5'
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
          'Japan',
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
