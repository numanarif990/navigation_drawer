import 'package:flutter/material.dart';
class ScreenThree extends StatefulWidget {
  static const String id = 'screen_three';
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Navigation Bar")),
        backgroundColor: Color(0xff764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){
            Navigator.pop(context);
            // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
          }, child: Center(child: Text("screen 3")))
        ],
      ),
    );
  }
}
