import 'package:flutter/material.dart';

import 'userData.dart';

String username='';
String password='';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text field and button"),
        leading: const Icon(Icons.menu),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
              boxShadow:[
                BoxShadow(
                  color: Colors.red.withOpacity(1),
                  spreadRadius: 2,
                  offset: const Offset(0, 3),
                  blurRadius: 1,
                ),
              ]

          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children:  [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('User details'),
                ),
                 TextField(
                   style: const TextStyle(
                     color: Colors.tealAccent
                   ),
                  onChanged: (user){
                    username = user;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Enter your username',
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 30),
                  child: TextField(
                    onChanged: (pass){
                      password = pass;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Enter your password'
                    ),
                  ),
                ),

                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.white10,
                  child: const Text('Sign In'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return UserData(username,password);
                    }));
                  },
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => const SecondRoute()),
// );