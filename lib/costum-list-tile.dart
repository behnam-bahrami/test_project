import 'package:flutter/material.dart';

class CostumListTile extends StatelessWidget {
  final String titleList;
  final IconData iconProducts;
  const CostumListTile({Key key, this.titleList, this.iconProducts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 7.0),
                child: Icon(
                  iconProducts,
                  color: Colors.grey,
                ),
              ),
              Text(titleList, style: TextStyle(color: Colors.black, fontSize: 16),),
            ],
          ),
        ],
      ),
    );
  }
}
