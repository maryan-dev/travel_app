import 'package:flutter/material.dart';

class GreecePage extends StatefulWidget {
  const GreecePage({Key? key}) : super(key: key);

  @override
  _GreecePageState createState() => _GreecePageState();
}

class _GreecePageState extends State<GreecePage> {
  final List<Map<String, String>> destinations = [
    {
      'image':
          "assets/A_scenic_view_of_Raja_Ampat_Indonesia_featuring_stunning_turquoise_waters_lush_green_islands_and_a_clear_blue_sky_The_foreground_includes_vibrant_coral_reefs_and_exotic_marine_life_inviting_viewers_to_imagine_a_trop.jpeg",
      'title': ' Ampat Greece',
      'location': 'Papua, Greece',
      'rating': '7.5'
    },
    {
      'image':
          "assets/A_picturesque_view_of_Borobudur_Temple_in_Indonesia_surrounded_by_lush_green_fields_and_misty_mountains_The_ancient_stone_structure_is_adorned_with_intricate_carvings_and_stupas_under_a_bright_blue_sky_with_fluffy_w.jpeg",
      'title': 'Borobudur',
      'location': 'Yogyakarta, Greece',
      'rating': '20.5'
    },
    {
      'image': "assets/mf4.jpg",
      'title': 'Prambanan',
      'location': 'Yogyakarta, Greece',
      'rating': '4.5'
    },
    {
      'image': "assets/mf3.jpg",
      'title': 'Kelingking Beach',
      'location': 'Bali, Greece',
      'rating': '9.5'
    },
    {
      'image': "assets/mf5.jpg",
      'title': 'Labuan Bajo',
      'location': 'NTT, Greece',
      'rating': '4.5'
    },
    {
      'image': "assets/mf4.jpg",
      'title': 'Prambanan',
      'location': 'Yogyakarta, Greece',
      'rating': '4.5'
    },
    {
      'image': "assets/mf3.jpg",
      'title': 'Kelingking Beach',
      'location': 'Bali, Greece',
      'rating': '5'
    },
    {
      'image': "assets/mf5.jpg",
      'title': 'Labuan Bajo',
      'location': 'NTT, Greece',
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
          'Greece',
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
