import 'package:flutter/material.dart';
import 'package:test_project/target_widger.dart';

class TargetPage extends StatelessWidget {
  const TargetPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.person,
                  color: Colors.white.withOpacity(0),
                  size: 32,
                ),
                Text(
                  'اهداف پیشنهادی برای شما',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                  size: 32,
                ),
              ],
            ),
          ),
          Row(
            children: [
              TargetWidget(
                imageUrl: 'assets/image/s20.png',
                title: 'خرید گوشی',
                product: 'asdf',
                amount: '(تومان ۳۰.۰۰۰.۰۰۰)',
              ),
              TargetWidget(
                imageUrl: 'assets/image/t.png',
                title: 'خرید گوشی',
                product: 'asdf',
                amount: '(تومان ۳۰.۰۰۰.۰۰۰)',
              ),
            ],
          ),
          Row(
            children: [
              TargetWidget(
                imageUrl: 'assets/image/206.png',
                title: 'خرید گوشی',
                product: 'asdf',
                amount: '(تومان ۳۰.۰۰۰.۰۰۰)',
              ),
              TargetWidget(
                imageUrl: 'assets/image/ps5.png',
                title: 'خرید گوشی',
                product: 'asdf',
                amount: '(تومان ۳۰.۰۰۰.۰۰۰)',
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: Text('')),
              TargetWidget(
                imageUrl: 'assets/image/kish.png',
                title: 'خرید گوشی',
                product: 'asdf',
                amount: '(تومان ۳۰.۰۰۰.۰۰۰)',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
