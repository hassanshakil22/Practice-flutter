// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  final name;
  const TileWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 1),
      color: Colors.grey,
      height: 60,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.greenAccent,
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
