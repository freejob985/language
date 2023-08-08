import 'package:flutter/material.dart';
import 'package:language/components/Category.dart';

class HomePage extends StatelessWidget {
  const HomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          appBar: AppBar(
            title: Text('APP first222222222'),
          ),
          body: Column(
            children: [
              Category(
                text: "Numbers",
                color: Color(0xffEF9235),
              ),
              Category(
                text: "FamilyMembers",
                color: Color(0xff558B37),
              ),
              Category(
                text: "Colors",
                color: Color(0xff79359F),
              ),
              Category(
                text: "Phrases",
                color: Color(0xff50ADC7),
              )
            ],
          )),
    );
  }
}
