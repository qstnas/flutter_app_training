import 'package:flutter/material.dart';
import 'package:flutter_app/sidebar.dart';

class FlutterLayout extends StatelessWidget {
  const FlutterLayout ({ Key? key }) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return Scaffold (
      drawer: const Sidebar(),

      appBar: AppBar(
        title: const Text("Exercise 2")
      ),
      body: Container(
        child: Row (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: <Widget> [
                Icon(Icons.access_alarm, color:Colors.blue,size: 50.0,),
                Text("Alarm")
              ]
            ),
            Column(
              children: <Widget> [
                Icon(Icons.book_outlined, color:Color.fromARGB(255, 176, 55, 39),size: 50.0,),
                Text("Book")
              ]
            ),
            Column(
              children: <Widget> [
                Icon(Icons.mail_outline, color:Colors.purple,size: 50.0,),
                Text("Mail")
              ]
            ),
          ],
        )
      )
    );
  }
}

