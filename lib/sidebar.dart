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
              tileColor: const Color.fromARGB(255, 249, 64, 255),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const FlutterLayout())));
              },
            ),
            ListTile(
              leading: const Icon(Icons.wallpaper),
              title: const Text('Background Image Navigator Push Named'),
              tileColor: const Color.fromARGB(255, 215, 38, 221),
              onTap: () {
                Navigator.pushNamed(context, '/background-image');
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_list_outlined),
              title: const Text('Todo'),
              tileColor: const Color.fromARGB(255, 248, 59, 255),
              onTap: () {
                Navigator.pushNamed(context, '/todo-screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.map_sharp),
              title: const Text('Maps'),
              tileColor: const Color.fromARGB(255, 175, 36, 180),
              onTap: () {
                Navigator.pushNamed(context, '/maps');
              },
            ),
          ],
        ),
      ),
    );
  }
}