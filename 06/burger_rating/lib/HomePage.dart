import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Burger Rating"),),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Image.network('https://sifu.unileversolutions.com/image/en-MY/recipe-topvisual/2/1260-709/chicken-satay-pizza-50271460.jpg'),
            SizedBox(
              height: 15.0,
            ),
            RatingBar(
              maxRating: 5,
              emptyIcon: Icons.star_border,
              filledIcon: Icons.star,
              halfFilledIcon: Icons.star_half,
              isHalfAllowed: true,
              onRatingChanged: (rating)=>print(rating),
            )
          ],
        ),
      ),
    );
  }
}