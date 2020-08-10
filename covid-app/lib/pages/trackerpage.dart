import 'package:flutter/material.dart';

class Tracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COUNTRIES AFFECTED'),
        centerTitle: true,
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "images/app_splashscreen.png",
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 90.0,
                  right: 90.0,
                ),
                child: RaisedButton(
                  onPressed: null,
                  disabledColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("images/nigeria.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "NIGERIA",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 0.0,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 38.0,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27.0),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: Row(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: null,
                      disabledColor: Colors.orangeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15.0,
                              bottom: 15.0,
                              right: 20.0,
                            ),
                            child: Text(
                              "DEATHS",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15.0,
                              bottom: 15.0,
                              right: 20.0,
                            ),
                            child: Text(
                              '1,234,567',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(height: 0.0),
                    ),
                    RaisedButton(
                      onPressed: null,
                      disabledColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15.0,
                              bottom: 15.0,
                              right: 10.0,
                            ),
                            child: Text(
                              "AFFECTED",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15.0,
                              bottom: 15.0,
                              right: 10.0,
                            ),
                            child: Text(
                              '1,234,567',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              RaisedButton(
                onPressed: null,
                disabledColor: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        bottom: 10.0,
                        right: 10.0,
                      ),
                      child: Text(
                        "RECOVERED",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 15.0,
                        bottom: 15.0,
                        right: 10.0,
                      ),
                      child: Text(
                        '1,234,567',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage("images/chart.jpg")),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
