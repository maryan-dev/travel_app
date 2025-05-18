// import 'package:flutter/material.dart';

// class BottomNavigation extends StatefulWidget {
//   @override
//   _BottomNavigationState createState() => _BottomNavigationState();
// }

// class _BottomNavigationState extends State<BottomNavigation> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = [
//     Center(child: Text('Home Page')),
//     Center(child: Text('Activity Page')),
//     Center(child: Text('Profile Page')),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Discover Destination'),
//         backgroundColor: Colors.teal,
//       ),
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.teal,
//         unselectedItemColor: Colors.grey,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Beranda',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.explore),
//             label: 'Activity',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
