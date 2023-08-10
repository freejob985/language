import 'package:flutter/material.dart';
import 'package:language/models/number.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.number}) : super(key: key);
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffEF9235),
      child: Row(
        children: [
          Container(
              color: Color(0xffFFF6D3), child: Image.asset(number.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  number.enName,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: GestureDetector(
              onTap: () => print("test"),
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
