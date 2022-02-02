import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Layout'),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
         Text('แสดงรายการเพิ่มเติม'),
         Icon(Icons.favorite),
         ListTile(
           leading: Icon(Icons.photo_camera),
           title: Text('Photo'),
           subtitle: Text('This is Picture'),
           trailing: Icon(Icons.picture_in_picture, color: Colors.purple,),
         ) 
        ],
      ),
    );
  }
}