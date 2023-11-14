import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.green),
        ),
      ),
      home: Center(
        child: Container(
          padding: EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 5),
          alignment: Alignment.center,
          color: Colors.amber[300],
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Sarah',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.lightBlue),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Rawan',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.lightBlue),
                    ),
                  ),
                ],
              ),
              MyImage(),
              MyBtn(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage image = new AssetImage('images/image1.jpg');
    Image myImg = new Image(image: image);
    return Container(
      child: myImg,
    );
  }
}

class MyBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    ElevatedButton btn = ElevatedButton(
      onPressed: () {
        onClick(context);
      },
      child: Text(
        'Start',
        style: TextStyle(color: Colors.white),
      ),
    );
    return Container(
      child: btn,
      margin: EdgeInsets.only(top: 20),
      height: 60,
      width: 300,
    );
  }

  void onClick(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text("Hello "),
      content: Text("Have fun with this game"),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
