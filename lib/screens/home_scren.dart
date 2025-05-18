import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_page.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({Key? key}) : super(key: key);

  @override
  _HomeScrenState createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0XFFf1f9fc),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/ph1.png"),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Terval ,enjoye and \n live and new ans \n        full lfe",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "  find beatiful torist destoin\n      affardable picess ",
              style: TextStyle(fontSize: 20, color: Colors.black38),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 310,
              height: 56,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0XFF318b89),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
