import 'package:flutter/material.dart';

class UserData extends StatefulWidget {
  //const UserData({Key? key}) : super(key: key);
  String username;
  String password;
  UserData(this.username,this.password);

  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children:  [
            Text('Username : ${widget.username}'),
            Text('Password : ${widget.password}'),
          ],
        ),
      ),
    );
  }
}
