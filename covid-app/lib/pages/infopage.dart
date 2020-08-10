import 'package:flutter/material.dart';
import 'package:covid_app/pages/new.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => NextPage()));
          },
        ),
        title: Text('COVID-19 INFO'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
