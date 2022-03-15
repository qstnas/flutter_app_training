import 'package:flutter/material.dart';

class DescText extends StatelessWidget {
  final String? text;
  const DescText({
    Key? key, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("$text",style: const TextStyle(color : Color.fromARGB(255, 122, 101, 14),fontSize: 20));
  }
}