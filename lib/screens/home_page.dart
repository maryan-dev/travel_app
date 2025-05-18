// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:travel_app/screens/JapanPage.dart';
import 'package:travel_app/screens/indonesia_page.dart';
import 'package:travel_app/widgets/categores.dart';

import 'package:travel_app/widgets/seach.dart';

import '../widgets/buld.dart';
import 'GreecePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
        ),
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.rocket_launch_outlined,
                  size: 37,
                ),
                label: 'berando',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.area_chart,
                  size: 30,
                ),
                label: 'active',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 30,
                ),
                label: 'profile',
              ),
            ],
            currentIndex: 0,
            selectedItemColor: Colors.teal,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            onTap: (index) {},
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 226, 235, 239),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discover\nDestination",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/ph2.jpg"),
                    radius: 30,
                  ),
                ],
              ),
              Text(
                "find beatiful torist destoin\naffardable picess ",
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(
                height: 14,
              ),
              search_Widget(),
              SizedBox(height: 19),
              Text(
                "Top Destination",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 19),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buld(
                      image: "assets/ph4.png",
                      title: "Indonesia",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => IndonesiaPage()),
                        );
                      },
                    ),
                    buld(
                      image: "assets/ph5.jpeg",
                      title: "Greece",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GreecePage()),
                        );
                      },
                    ),
                    buld(
                      image: "assets/japan.jpg",
                      title: "Japan",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => JapanPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 19),
              Text(
                "Best servise",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 9),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  catogoreis(
                    icons: Icon(
                      Icons.filter_drama_rounded,
                    ),
                    texts: "weather",
                  ),
                  catogoreis(
                    icons: Icon(
                      Icons.flight_takeoff_rounded,
                    ),
                    texts: "flight",
                  ),
                  catogoreis(
                    icons: Icon(
                      Icons.event_seat,
                    ),
                    texts: "evemnts",
                  ),
                  catogoreis(
                    icons: Icon(
                      Icons.pause_presentation_outlined,
                    ),
                    texts: "passport",
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
