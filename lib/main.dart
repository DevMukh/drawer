import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'default.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

// homepage here we can write our code than we can call one by one
var index = 0;

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  final page = [
    Center(
      child: Text('Inbox',style: TextStyle(
        color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
      ),),
    ),
    Center(
      child: Text('Started',style: TextStyle(
          color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
      ),),
    ),
    Center(
      child: Text('sent',style: TextStyle(
          color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
      ),),
    ),
    Center(
      child: Text('Draft',style: TextStyle(
          color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
      ),),
    ),
    Center(
      child: Text('Trash ',style: TextStyle(
          color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
      ),),
    ),
    Center(
      child: Text('Spam',style: TextStyle(
          color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
      ),),
    ),
    Center(
      child: Text('Privacy',style: TextStyle(
          color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold
      ),),
    )
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Drawer Navigation system',style: TextStyle(
          color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: page[index],
      //End drawer is ALSO available
      drawer: Drawer(
        elevation: 40,
        //   backgroundColor: Colors.blueGrey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              //this for header we can add backgroud images like to fit and addd some text here
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/drawer.jpg'),
              )),
              padding: EdgeInsets.all(0),
              child: Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    CircleAvatar(
                      radius: 37,
                      backgroundImage: AssetImage('images/ameer.jpg'),
                    ),
                    SizedBox(
                      height: 13,
                    ),
// here add some icons infront of name
                    Row(
                      children: [
                        Text('DevMukh Here',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        Expanded(child: Container()),
                        //  Icon(FontAwesomeIcons.android),
                        Icon(
                          Icons.draw_sharp,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    ),

                    Text('ameermukhtar998@gmail.com',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Default.draweritemIcon[0],
                      size: 25,
                      //if index ==0 show default selected color blue other wise it will show as black
                      color: index == 0
                          ? Default.drawItemSelectedColor
                          : Default.drawItemColor,
                    ),
                    title: Text(
                      Default.draweritmesText[0],
                      style: TextStyle(
                          color: index == 0
                              ? Default.drawItemSelectedColor
                              : Default.drawItemColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Default.draweritemIcon[1],
                      size: 25,
                      //if index ==0 show default selected color blue other wise it will show as black
                      color: index == 1
                          ? Default.drawItemSelectedColor
                          : Default.drawItemColor,
                    ),
                    title: Text(
                      Default.draweritmesText[1],
                      style: TextStyle(
                          color: index == 1
                              ? Default.drawItemSelectedColor
                              : Default.drawItemColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Default.draweritemIcon[2],
                      size: 25,
                      color: index == 2
                          ? Default.drawItemSelectedColor
                          : Default.drawItemColor,
                    ),
                    title: Text(
                      Default.draweritmesText[2],
                      style: TextStyle(
                          color: index == 2
                              ? Default.drawItemSelectedColor
                              : Default.drawItemColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        index = 3;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Default.draweritemIcon[3],
                      size: 25,
                      color: index == 3
                          ? Default.drawItemSelectedColor
                          : Default.drawItemColor,
                    ),
                    title: Text(
                      Default.draweritmesText[3],
                      style: TextStyle(
                          color: index == 3
                              ? Default.drawItemSelectedColor
                              : Default.drawItemColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        index = 4;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Default.draweritemIcon[4],
                      size: 25,
                      color: index == 4
                          ? Default.drawItemSelectedColor
                          : Default.drawItemColor,
                    ),
                    title: Text(
                      Default.draweritmesText[4],
                      style: TextStyle(
                          color: index == 4
                              ? Default.drawItemSelectedColor
                              : Default.drawItemColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        index = 5;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Default.draweritemIcon[5],
                      size: 25,
                      color: index == 5
                          ? Default.drawItemSelectedColor
                          : Default.drawItemColor,
                    ),
                    title: Text(
                      Default.draweritmesText[5],
                      style: TextStyle(
                          color: index == 5
                              ? Default.drawItemSelectedColor
                              : Default.drawItemColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        index = 6;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Default.draweritemIcon[6],
                      size: 25,
                      color: index == 6
                          ? Default.drawItemSelectedColor
                          : Default.drawItemColor,
                    ),
                    title: Text(
                      Default.draweritmesText[6],
                      style: TextStyle(
                          color: index == 6
                              ? Default.drawItemSelectedColor
                              : Default.drawItemColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
