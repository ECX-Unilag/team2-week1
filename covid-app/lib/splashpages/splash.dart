import 'package:flutter/material.dart';
import 'package:covid_app/pages/new.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "images/app_splashscreen.png",
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "COVID-19 is real.",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Stay Safe",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50.0),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.0, right: 100.0,),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => NextPage())
                      );
                    },
                    disabledColor:  Color.fromRGBO(101, 230, 153, 1.0),
                    color: Color.fromRGBO(101, 230, 153, 1.0),
                    splashColor: Color.fromRGBO(101, 230, 153, 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color:Color.fromRGBO(101, 230, 153, 1.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          "Welcome".toUpperCase(),
                          style: TextStyle(
                            fontSize: 21.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}