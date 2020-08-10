import 'dart:async';
import 'package:covid_app/model/slide.dart';
import 'package:covid_app/widgets/slide_item.dart';
import 'package:covid_app/widgets/slidedots.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/splashpages/splash.dart';

class FirstSplash extends StatefulWidget {
  @override
  _FirstSplashState createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
  int _currentPage = 0;
  final PageController _pageController =
      PageController(initialPage: 0);

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 13), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ));
    });
    Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInCirc);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/app_splashscreen.png"),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      PageView.builder(
                        onPageChanged: _onPageChanged,
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        itemCount: slideList.length,
                        itemBuilder: (context, i) => SlideItem(i),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.bottomStart,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 35),
                            child: Row(
                              children: <Widget>[
                                for (int i = 0;
                                    i < slideList.length;
                                    i++)
                                  if (i == _currentPage)
                                    SlideDots(true)
                                  else
                                    SlideDots(false)
                              ],
                            ),
                          )
                        ],
                      )
                    ]),
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  Expanded(
                      child: SizedBox(
                    height: 2.0,
                  )),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ));
                    },
                    child: Text(
                      "SKIP >>>",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
