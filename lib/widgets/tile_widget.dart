// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  final name;
  const TileWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: Colors.grey,
      height: 50,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "$name",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Spacer(),
          const Text("data")
        ],
      ),
    );
  }
}
