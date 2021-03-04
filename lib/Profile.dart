import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(backgroundColor: Colors.green,
        title: Text("Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Padding(padding: EdgeInsets.fromLTRB(0,10,0,10),
                  child: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    "assets/download.png",
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Details",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding:
                    EdgeInsets.only(top: 50, right: 10, left: 10, bottom: 10),
                child: TextField(
                  readOnly: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your name',
                    // helperText: "Enter your username",
                    icon: Icon(Icons.account_circle),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:"Subscription Expiry Date : 2021/08/20",
                      // helperText: "Enter your password",
                      icon: Icon(Icons.lock)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

