// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: Colors.grey,
      height: 50,
      child: const Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "data",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Spacer(),
          Text("data")
        ],
      ),
    );
  }
}
