import 'package:flutter/material.dart';
import 'package:navigation_drawer/screen_three.dart';
class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Screen two")),
        backgroundColor: Color(0xff764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Expanded(
           child: ListView.builder(
               itemCount: 100,
               itemBuilder: (context, index){
             return   ListTile(
           
               leading: CircleAvatar(
                 backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.8ETm_4wmfCcKtBUWxuxBewHaLG?rs=1&pid=ImgDetMain'),
               ),
               title: Text("Home"),
               onTap: (){
                 Navigator.pushNamed(context, ScreenTwo.id);
                 // Navigator.pop(context);
               },
             );
           }),
         )
        ],
      ),
    );
  }
}
