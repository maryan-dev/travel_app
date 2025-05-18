import 'package:flutter/material.dart';

class search_Widget extends StatelessWidget {
  const search_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(7),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Raja ampat",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                      BorderSide(color: Color.fromARGB(115, 180, 178, 178)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
          ),
        ),
        Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Color(0XFF318b89),
            ),
            child: Icon(
              (Icons.search_sharp),
              color: Colors.white,
              size: 34,
            )),
      ],
    );
  }
}
