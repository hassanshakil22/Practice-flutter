import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_flutter/widgets/tile_Widget.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<String> toDoList = ["hassan", "ali", "muhammad"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (BuildContext context, int index) {
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
                          toDoList[index],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              toDoList.removeAt(index);
                              setState(() {});
                            },
                            icon: const Icon(Icons.edit)),
                        IconButton(
                            color: Colors.red,
                            onPressed: () {
                              toDoList[index] = "";
                              setState(() {});
                            },
                            icon: const Icon(Icons.delete)),
                      ],
                    ),
                  ],
                ),
              );
            }));
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
