import 'package:flutter/material.dart';

class catogoreis extends StatelessWidget {
  const catogoreis({
    Key? key,
    required this.icons,
    required this.texts,
  }) : super(key: key);
  final Icon icons;
  final String texts;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 66,
          height: 66,
          decoration: BoxDecoration(
            color: const Color(0XFF318b89),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(
            icons.icon,
            color: Colors.white,
            size: 33,
          ),
        ),
        Text(
          texts,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
