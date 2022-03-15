import 'package:flutter/material.dart';
import 'desc_text.dart';


class BackgroundImage extends StatefulWidget {
  const BackgroundImage({Key? key}) : super(key: key);
  @override
  State<BackgroundImage> createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  bool _isFavorite = true;
  int _isCount = 41;

  void _toggleFavorite(){
    setState(() {
      if (_isFavorite){
        _isCount -= 1;
        _isFavorite = false;
      }else{
        _isCount += 1;
        _isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Exercise 3"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //first layer
          SizedBox(
              height: 250,
              child: Ink.image(
                  image: const AssetImage('assets/images/img 2.jpeg'),
                  fit: BoxFit.cover)),
          //second layer
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Text(
                      "Title",
                       style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Desc",
                       style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: _toggleFavorite,
                      icon: Icon(
                        _isFavorite
                            ? Icons.local_activity
                            : Icons.local_activity_outlined,
                        size: 40,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    Text("$_isCount")
                  ],
                )
              ],
            ),
          ),

          //third layer
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const <Widget>[
                  Icon(
                    Icons.file_copy,
                    color: Colors.blue,
                    size: 20.0,
                  ),
                  DescText(
                    text: "File",
                  )
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                    size: 20.0,
                  ),
                  DescText(
                    text: "Call",
                  )
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    Icons.message,
                    color: Colors.blue,
                    size: 20.0,
                  ),
                  DescText(
                    text: "Message",
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}