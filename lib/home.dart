import 'package:flutter/material.dart';
import 'Profile.dart';

import 'music.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Music Player"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  Profile()));
              },
            ),
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                return {'Logout', 'Settings'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
      body: SingleChildScrollView(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Recently Played",
          style: TextStyle(
            fontSize:20.0,
          ),
          ),
          SizedBox(
            height:210.0,
            child:Padding(
              padding:EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder:(context,index)=>Card(
                  child:Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        RaisedButton(onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>MusicScreen()));
                        },
                        color: Colors.purple,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          color: Colors.purple,
                          height: 150.0,
                          width: 150.0,
                          child: Image.network( "https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png"),
                        ),
                        ),
                        Align(
                          alignment:Alignment.center,
                          child:Text(
                            "Arijit",
                          ),
                        )
                      ],
                    ),
                  ),
                ), 
                ),
            ),
          ),
          Text(
            "Weekly Suggestions",
            style: TextStyle(
              fontSize:20.0,
            ),
          ),
            Card(
              child: ListTile(onTap: (){
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MusicScreen()));
              },
              title: Text("Music"),
              subtitle: Text("Music Description"),
              ),
            ),
             Card(
              child: ListTile(onTap: (){
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MusicScreen()));
              },
              title: Text("Music"),
              subtitle: Text("Music Description"),
              ),
            ),
             Card(
              child: ListTile(onTap: (){
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MusicScreen()));
              },
              title: Text("Music"),
              subtitle: Text("Music Description"),
              ),
            ),
             Card(
              child: ListTile(onTap: (){
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MusicScreen()));
              },
              title: Text("Music"),
              subtitle: Text("Music Description"),
              ),
            ),
        ],
      ),
      ),
    );
  }
}

