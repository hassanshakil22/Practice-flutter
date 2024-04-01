// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_flutter/about_view.dart';
// import 'package:flutter/widgets.dart';
import 'package:practice_flutter/widgets/tile_Widget.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  List studentsInfo = [
    {
      "name": "hassan",
      "Grp": "Pre-Engineering",
      "RollNo": "031",
      "ispassed": true,
    },
    {
      "name": "Muhammad",
      "Grp": "Pre-Medical",
      "RollNo": "035",
      "ispassed": true,
    },
    {
      "name": "Tauheed",
      "Grp": "Computer",
      "RollNo": "051",
      "ispassed": false,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        itemCount: studentsInfo.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("${studentsInfo[index]["name"]}"),
              tileColor: Colors.yellow,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutView(
                        studentData: studentsInfo[index],
                      ),
                    ));
              },
            ),
          );
        },
      ),
    );
  }
}

// favourite button
// class LoginView extends StatefulWidget {
//   const LoginView({super.key});

//   @override
//   State<LoginView> createState() => _LoginViewState();
// }

// class _LoginViewState extends State<LoginView> {
//   @override
//   Widget build(BuildContext context) {
//     bool isFav = false;

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: const Text("Login"),
//       ),
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           const Icon(
//             Icons.favorite,
//             size: 50,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {});
//               },
//               child: const Text("Like"))
//         ]),
//       ),
//     );

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
