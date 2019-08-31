import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLandingPage extends StatefulWidget {
  @override
  _ShimmerLandingPageState createState() => _ShimmerLandingPageState();
}

class _ShimmerLandingPageState extends State<ShimmerLandingPage> {

  dynamic gradient = LinearGradient(
    colors: <Color>[
      Colors.grey[300], Colors.grey[200]
    ]
  );
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _title(),
            _search(),
            _slider(),
            _category(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: _shimmerForText()),
            _rowLearning()
          ],
        ),
      )
    );
  }

  Widget _title(){
    return Shimmer.fromColors(
        baseColor: Colors.grey[200],
        highlightColor: Colors.grey[300],
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical:20.0),
        height: 30.0,
        width: 200.0,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(5.0)
        ),
      ),
    );
  }

  Widget _search(){
    return Shimmer.fromColors(
        baseColor: Colors.grey[200],
        highlightColor: Colors.grey[300],
      child: Container(
        margin: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
        height: 50.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(5.0)
        ),
      ),
    );
  }

  Widget _slider(){
    return Shimmer.fromColors(
        baseColor: Colors.grey[200],
        highlightColor: Colors.grey[300],
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        height: 230.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0)
        ),
      ),
    );
  }

  Widget _category(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical:20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _rowForText(),
          _rowCategoryCard()
        ],
      ),
    );
  }

  Widget _rowForText(){
    return  Container(
      child: Shimmer.fromColors(
          baseColor: Colors.grey[200],
          highlightColor: Colors.grey[300],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _shimmerForText(),
            _shimmerForText(),
          ],
        ),
      ),
    );
  }

  Widget _cardCategory(){
    return Shimmer.fromColors(
        baseColor: Colors.grey[200],
        highlightColor: Colors.grey[300],
      child: Container(
        margin: EdgeInsets.only(right: 10.0, top: 20.0),
        height: 50.0,
        width: 135.0,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0)
        ),
      ),
    );
  }

  Widget _rowCategoryCard(){
    return Container(
      child: Wrap(
        children: <Widget>[
          _cardCategory(),
          _cardCategory(),
          _cardCategory(),
        ],
      ),
    );
  }

  Widget _shimmerForText(){
    return Shimmer.fromColors(
        baseColor: Colors.grey[200],
        highlightColor: Colors.grey[300],
        child: Container(
          height: 20.0,
          width: 130.0,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8.0)
          ),
      ),
    );
  }

  Widget _rowLearning(){
    return Container(
      height: 180.0,
      margin: EdgeInsets.only(left: 20.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          _card(),
          _card(),
          _card(),
        ],
      ),
    );
  }

  Widget _card(){
    return Shimmer.fromColors(
        baseColor: Colors.grey[200],
        highlightColor: Colors.grey[300],
      child: Container(
        width: 180.0,
        height: 200,
        margin: EdgeInsets.only(right: 20.0, top: 20.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8.0)
        ),
      ),
    );
  }
}