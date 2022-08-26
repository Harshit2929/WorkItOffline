// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'SHG List',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  // Generate some dummy data
  final List<Map<String, dynamic>> _items = List.generate(
      10,
          (index) =>
      {"id": index+1, "title": "Item ${index+1}", "subtitle": "Subtitle ${index+1}"});

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SHG List'),
        ),
        body: ListView(
            children: ListTile.divideTiles(
                color: Colors.deepPurple,
                tiles: _items.map((item) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text(item['id'].toString()),
                  ),
                  title: Text(item['title']),
                  subtitle: Text(item['subtitle']),
                  trailing: IconButton(
                    icon: const Icon(Icons.add_a_photo),
                    onPressed: () {},
                  ),
                ))).toList()
        )
        

    );
  }
}

class User{
  final String id;
  final String title;
  final String subtitle;
  
  const User({
    required this.id,
    required this.title,
    required this.subtitle
  });
   static User fromJson(json) =>   User(
       id: json['id'],
       title: json['title'],
       subtitle: json['subtitle']
   );
}

class MainPage extends StatefulWidget{
    State<MainPage> createState()=>_MainPage();
}

class _MainPage extends State<MainPage> {

  List<User> users = getUsers();

  static List<User> getUsers() {
    const data = [
      {
        "id": 'SHG_id1',
        "title": 'SHG_Title1',
        "subtitle": 'Surat, Gujarat'
      },
      {

        "id": 'SHG_id2',
        "title": 'SHG_Title2',
        "subtitle": 'Delhi'
      },
    ];
    return data.map<User>(User.fromJson).toList();
  }

  @override
  
  Widget build(BuildContext context) {




    body:Center(

      child: buildUsers(users),
    );
    Widget buildUsers(List<User> users) {
       return ListView.builder(
         itemCount: users.length,
         itemBuilder: (context, index) {
           final user = users[index];
           return ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.amber,
               child: Text(user.id.toString()),
             ),
             title: Text(user.title),
             subtitle: Text(user.subtitle),
             trailing: IconButton(
               icon: const Icon(Icons.add_a_photo),
               onPressed: () {},
             ),
           );
         },    //itembuilder

       );

     }     //buildUsers

  }  //build widget
}