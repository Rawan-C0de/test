import 'package:flutter/material.dart';

import 'layouts/home_screen.dart';

void main() {
  runApp(
      // MaterialApp(
      //   home: Scaffold(
      //     body: myListView(),
      //     appBar: AppBar(backgroundColor: Colors.black),
      //     floatingActionButton: FloatingActionButton(
      //       onPressed: () {},
      //       child: Icon(Icons.add),
      //       tooltip: "add new items",
      //     ),
      //   ),
      // ),
      MaterialApp(
    title: 'stateful widgets',
    home: StudentNames(),
  ));
}

class StudentNames extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StudentNames();
}

class _StudentNames extends State<StudentNames> {
  late String student = '';
  var languages = ['c#', 'Java', 'dart', 'Javascript', 'PHPA'];
  var selecteditem = 'dart';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFul project"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onSubmitted: (String input) {
                setState(() {
                  student = input;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('the student is $student '),
            ),
            DropdownButton(
              items: languages.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selecteditem = value!;
                });
              },
              value: selecteditem,
            ),
          ],
        ),
      ),
    );
  }
}
// class MyFlutterApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       title: 'First App',
//       home: Scaffold(
//         appBar: AppBar(title: Center(child: Text('Hello Flutter'))),
//         body: HomeScreen(),
//       ),
//     );
//   }
// }

// class myListView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView(
//       children: <Widget>[
//         ListTile(
//           leading: Icon(Icons.access_alarm),
//           title: Text("Alarm"),
//           subtitle: Text("nothing but it's an alram"),
//           trailing: Icon(Icons.access_time_filled),
//           onTap: () {
//             showBar(context, 'the content is activated...');
//           },
//         ),
//         ListTile(
//           leading: Icon(Icons.access_alarm),
//           title: Text("Alarm"),
//           subtitle: Text("nothing but it's an alram"),
//           trailing: Icon(Icons.access_time_filled),
//         ),
//         ListTile(
//           leading: Icon(Icons.access_alarm),
//           title: Text("Alarm"),
//           subtitle: Text("nothing but it's an alram"),
//           trailing: Icon(Icons.access_time_filled),
//         )
//       ],
//     );
//     ;
//   }
// }

// void showBar(BuildContext context, String msg) {
//   var bar = SnackBar(
//     content: Text(msg),
//     action: SnackBarAction(label: 'undo',onPressed: (){}),
//   );
//   ScaffoldMessenger.of(context).showSnackBar(bar);
// }
