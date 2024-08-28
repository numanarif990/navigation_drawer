import 'package:flutter/material.dart';
import 'package:navigation_drawer/screen_three.dart';
import 'package:navigation_drawer/screen_two.dart';

    class HomeScreen extends StatefulWidget {
      static const String id = 'home_screen';
      const HomeScreen({super.key});

      @override
      State<HomeScreen> createState() => _HomeScreenState();
    }

    class _HomeScreenState extends State<HomeScreen> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [

               // DrawerHeader(child: Text("Main Drawer")),
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                   color: Color(0xff764abc)
                  ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.8ETm_4wmfCcKtBUWxuxBewHaLG?rs=1&pid=ImgDetMain'),
                    ),
                    accountName: Text("Numan ch"),
                    accountEmail: Text("nomigjr990@gmail.com")),
                ListTile(

                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: (){
                    Navigator.pushNamed(context, ScreenTwo.id);
                    // Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.mail),
                  title: Text("Mail"),
                  onTap: (){
                    Navigator.pushNamed(context, ScreenThree.id);
                  },
                )
              ],
            )
          ),
          appBar: AppBar(
            title: Center(child: Text("Navigation Bar")),
            backgroundColor: Color(0xff764abc),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                Navigator.pushNamed(context, ScreenTwo.id);
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo()));
              }, child: Center(child: Text("screen 1")))
            ],
          ),
        );
      }
    }
