// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  final List todo;
  final int indexes;
  const TileWidget({super.key, required this.todo, required this.indexes});

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
              const SizedBox(
                width: 5,
              ),
              Text(
                "${todo[indexes]}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
        ],
      ),
    );
  }
}
