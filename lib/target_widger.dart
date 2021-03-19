import 'package:flutter/material.dart';

class TargetWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String product;
  final String amount;
  const TargetWidget(
      {Key key, this.imageUrl, this.title, this.product, this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 8,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Text(title),
            Text(product),
            Text(amount),
          ],
        ),
      ),
    );
  }
}
