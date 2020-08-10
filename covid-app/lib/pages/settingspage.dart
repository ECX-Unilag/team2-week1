import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SETTINGS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 40.0,
          right: 40.0,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_none,
                color: Color.fromRGBO(70, 56, 168, 1.0),
                size: 55.0,
              ),
              title: Text(
                "App Notifications",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
              child: Center(
                child: Divider(),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_outline,
                color: Color.fromRGBO(70, 56, 168, 1.0),
                size: 55.0,
              ),
              title: Text(
                "Profile Settings",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
              child: Center(
                child: Divider(),
              ),
            ),
            ListTile(
              leading: Image(
                height: 55.0,
                width: 55.0,
                image: AssetImage("images/covid.png"),
              ),
              title: Text(
                "Report A Case",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
