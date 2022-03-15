import 'package:flutter/material.dart';
import 'package:flutter_app/screen/flutter_layout.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 114, 236),
              ),
              child: Text('Main Menu'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Flutter Layout Navigator Push'),
              tileColor: Color.fromARGB(255, 249, 64, 255),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const FlutterLayout())));
              },
            ),
            ListTile(
              leading: const Icon(Icons.wallpaper),
              title: const Text('Background Image Navigator Push Named'),
              tileColor: Color.fromARGB(255, 215, 38, 221),
              onTap: () {
                Navigator.pushNamed(context, '/background-image');
              },
            ),
          ],
        ),
      ),
    );
  }
}