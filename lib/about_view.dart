import 'package:flutter/material.dart';
// import 'package:practice_flutter/login_view.dart';

class AboutView extends StatelessWidget {
  final Map studentData;
  const AboutView({super.key, required this.studentData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Name --> ${studentData['name']}"),
                Text("Group -->  ${studentData['Grp']}"),
                Text("roll NO --> ${studentData['RollNo']}"),
                Text("Passed --> ${studentData['ispassed']}"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("goBack"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
