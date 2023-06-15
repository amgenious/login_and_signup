import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(
          //   height: 50,
          // ),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: const [
                Text(
                  "Pond Settings",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text("Add Pond"),
                SizedBox(
                  height: 5,
                ),
                Text("Edit Pond"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Account Settings",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text("Change Password"),
                SizedBox(
                  height: 5,
                ),
                Text("Logout"),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Help",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
