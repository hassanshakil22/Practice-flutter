import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_flutter/widgets/tile_Widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isFavourite = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Icon(
            Icons.favorite,
            size: 50,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Like"))
        ]),
      ),
    );

    // return Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.green,
    //       title: const Text("Login"),
    //     ),
    //     body: const Column(
    //       children: [
    //         TileWidget(
    //           name: "hassan",
    //         ),
    //         TileWidget(
    //           name: "ali",
    //         ),
    //         TileWidget(
    //           name: "muhammad",
    //         ),
    //       ],

    //     )
    //     //  const ListTile(
    //   tileColor: Colors.grey,
    //   leading: CircleAvatar(
    //     backgroundColor: Colors.amber,
    //   ),
    //   title: Text("TITLE"),
    //   subtitle: Text("Subtitle"),
    //   trailing: Text("TRAILING"),
    // ),

    // own LIsttile
    //     Container(
    //   padding: EdgeInsets.all(5),
    //   color: Colors.grey,
    //   height: 50,
    //   child: const Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       Row(
    //         children: [
    //           CircleAvatar(
    //             backgroundColor: Colors.blue,
    //           ),
    //           SizedBox(
    //             width: 5,
    //           ),
    //           Text(
    //             "data",
    //             style: TextStyle(fontWeight: FontWeight.bold),
    //           ),
    //         ],
    //       ),
    //       Text("data")
    //     ],
    //   ),
    // )

    // );
    // Image.asset('assets/images/car.jpg'));
  }
}
