import 'package:chamber_app/Utils/constants.dart';
import 'package:chamber_app/components/annoucements.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> annoucementList = [
    {
      'title': "Annoucement 1",
      'subtitle':
          "orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(Icons.person),
                  radius: 32,
                ),
                title: Text("UserName"),
                subtitle: Text("user@email.com"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Members'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Gujrat Chamber',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, top: 12),
              child: Column(
                children: [
                  ...annoucementList.map((index) => AnnoucementCard(
                        title: index['title'],
                        subtitle: index['subtitle'],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            annoucementList.add(annoucementList.first);
            setState(() {});
          },
          child: Icon(Icons.add)),
    );
  }
}
