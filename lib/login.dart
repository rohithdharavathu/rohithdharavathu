import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.lightBlue,
          unselectedItemColor: Colors.blueGrey,
          selectedLabelStyle: TextStyle( fontWeight: FontWeight.w600, color: Colors.lightBlueAccent),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.message_rounded),
                label: "Messages"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_outline_rounded),
                label: "Groups"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.call_split_rounded),
                label: "Calls"
            )
          ]),

    );
  }
}
