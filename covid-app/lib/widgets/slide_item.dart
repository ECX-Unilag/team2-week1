import 'package:flutter/material.dart';
import 'package:covid_app/model/slide.dart';



class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                slideList[index].imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 25.0,),
        Text(slideList[index].title.toUpperCase(), style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20.0,),)
      ],
    );
  }
}