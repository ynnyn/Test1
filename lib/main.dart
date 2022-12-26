import 'package:flutter/material.dart';
import 'onboarding.dart';
import 'profile.dart';
import 'family.dart';
import 'playlist.dart';
import 'videos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,

      ),
      home: OnBoarding(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/flower_pattern.JPG'), // 배경 이미지
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
      appBar: AppBar(
          title: Text('My Page'),
         centerTitle: true,
        elevation: 0,
        actions: <Widget> [

          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search cart button is clicked');
            },
          ),
        ]
      ),

      drawer: Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
        UserAccountsDrawerHeader(
        currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('assets/me.jpg'),
        backgroundColor: Colors.white,
        radius: 60,
        ),
        accountName: Text('윤새은'),
        accountEmail: Text('yysaeeun@gmail.com'),
        onDetailsPressed:(){
        print('arrow is clicked');
        },
        decoration: BoxDecoration(
        color: Colors.purple[200],
        borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
        )
        )
        ),
        ListTile(
          leading: Icon(Icons.person, color: Colors.grey[700]),
          title: Text('Profile'),
          onTap: () {
            Navigator.push(context,MaterialPageRoute(
                builder:(BuildContext context){
                  return Profile();
                }
            ));
          },
          ),
        ListTile(
          leading: Icon(Icons.family_restroom, color: Colors.grey[700]),
          title: Text('Family'),
          onTap: () {
            Navigator.push(context,MaterialPageRoute(
              builder:(BuildContext context){
                return Family();
              }
            ));
        },
        ),
        ListTile(
          leading: Icon(Icons.queue_music, color: Colors.grey[700]),
          title: Text('Playlist'),
          onTap: () {
            Navigator.push(context,MaterialPageRoute(
              builder:(BuildContext context){
                return Playlist();
              }
            ));
          },
        ),
          // ListTile(
          //   leading: Icon(Icons.video_call, color: Colors.grey[700]),
          //   title: Text('Videos'),
          //   onTap: () {
          //     Navigator.push(context,MaterialPageRoute(
          //         builder:(BuildContext context){
          //           return Videos();
          //         }
          //     ));
          //   },
          // ),
        ListTile(
          trailing: Icon(Icons.add),
          onTap:(){}
          ),
        ],
        ),
      ),
      body: Builder(
        builder: (BuildContext ctx) {
        return Center(
          child: TextButton(
            onPressed:() {
              ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                content: Text('Navigate to profile'),
              ));
              Navigator.push(ctx,MaterialPageRoute(
                builder:(BuildContext context){
                  return Profile();
                }
              ));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepPurple)),
            child: Text('View profile',
            style: TextStyle(color: Colors.white),),
            ),

          );

      },)
    ),);
  }
}
