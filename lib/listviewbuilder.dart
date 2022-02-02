import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatefulWidget {
  ListViewBuilderPage({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  final List<String> items = List<String>.generate(20,
   (index) => 'รายการที่ : ${++index}');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Builder Layout'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          var listTile = ListTile(
            leading: const Icon(Icons.bike_scooter),
            title: Text(items[index]),
            subtitle: const Text('ข้อมูลจักรยาน'),
            trailing: const Icon(Icons.notification_add),
            onTap: () {},
          );
          return Card(
            child: listTile,
          );
        }),
    );
  }
}