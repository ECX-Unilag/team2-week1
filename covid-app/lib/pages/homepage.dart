import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  _showModal(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        )),
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "08027710083",
                    style: TextStyle(
                      fontFamily: "heebo",
                      fontSize: 22.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton(
                          onPressed: null,
                          disabledColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(25.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                  size: 33.0,
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  "CALL",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19.0,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(width: 0.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton(
                          onPressed: null,
                          disabledColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(25.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.content_copy,
                                    color: Colors.white, size: 33.0),
                                SizedBox(width: 5.0),
                                Text(
                                  "COPY",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19.0),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  _showSecMoodal(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30.0),
                TextField(
                  maxLines: 15,
                  minLines: 10,
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Send us a message',
                    hintStyle: TextStyle(fontSize: 17.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                RaisedButton(
                  onPressed: null,
                  disabledColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "SEND MESSAGE",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 Info App'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    "images/app_disp.png",
                  ),
                ),
              ),
              accountName: Text('Ejiofor Olisaemeka'),
              accountEmail: Text('olisehemek37@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.brown,
                child: Text('E'),
              ),
            ),
            ListTile(
              title: Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, bottom: 40.0),
                child: Text('Info'),
              ),
              leading: Icon(
                Icons.info,
                color: Color.fromRGBO(76, 20, 168, 1.0),
                size: 45.0,
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 40.0,
                ),
                child: Text('Like App'),
              ),
              leading: Icon(
                Icons.thumb_up,
                color: Color.fromRGBO(76, 20, 168, 1.0),
                size: 45.0,
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 40.0,
                ),
                child: Text('About Developers'),
              ),
              leading: Icon(
                Icons.laptop_chromebook,
                color: Color.fromRGBO(76, 20, 168, 1.0),
                size: 45.0,
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 40.0,
                ),
                child: Text('Share'),
              ),
              leading: Icon(
                Icons.share,
                color: Color.fromRGBO(76, 20, 168, 1.0),
                size: 45.0,
              ),
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 40.0,
                ),
                child: Text('Exit App'),
              ),
              leading: Icon(
                Icons.exit_to_app,
                color: Color.fromRGBO(76, 20, 168, 1.0),
                size: 45.0,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/app_disp.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(33.0),
                    bottomRight: Radius.circular(33.0),
                  )),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "COVID-19",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(height: 0.0),
                      ),
                      RaisedButton(
                        onPressed: null,
                        disabledColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(18.0)),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 15,
                              backgroundImage:
                                  AssetImage("images/nigeria.png"),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text("NIGERIA",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Are you feeling sick?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        width: 0.0,
                      ))
                    ],
                  ),
                  Text(
                    "If you're feeling sick or showing any symptoms please calls us or send us a message. Stay Safe",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                          onPressed: () {
                            _showModal(context);
                          },
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(23.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "CALL NOW",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0),
                            ),
                          )),
                      Expanded(
                          child: SizedBox(
                        width: 0.0,
                      )),
                      RaisedButton(
                          onPressed: () {
                            _showSecMoodal(context);
                          },
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(23.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "SEND SMS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            new Container(
              padding: EdgeInsets.only(top: 15.0),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 22.0,
                  right: 22.0,
                  bottom: 20.0,
                ),
                child: Container(
                  padding: EdgeInsets.all(11.0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(239, 18, 18, 0.1),
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "What is Covid-19?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: 0.0,
                            ),
                          ),
                          IconButton(
                            iconSize: 30.0,
                            icon: Icon(Icons.keyboard_arrow_down),
                            onPressed: null,
                          ),
                        ],
                      ),
                      Text(
                        "If you feel sick or show any signs and symptoms please send us a text message or call us according to your location.Stay safe",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            new Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "PREVENTIVE MEASURES",
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 8.0,
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 98,
                              height: 120,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "images/wash.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Wash your hands".toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 98,
                              height: 120,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "images/stay.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Stay at home".toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: 98,
                              height: 120,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    "images/facemask.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Wear facemasks".toUpperCase(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
