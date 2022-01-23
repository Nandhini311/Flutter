import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

//for hot run to work, the changes made need to be created
//as a stateless widget. stless has build which gets called
//everytime widget is run. only the change is being rebuild, not the whole code
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal, //color of the body
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage("images/nandhini.jpeg"),
              ),
              Text(
                'S Nandhini',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'PROJECT MANAGER',
                style: TextStyle(
                  fontSize: 20.0,
                    color: Colors.teal.shade100,
                    fontFamily: 'SansSourcePro',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                )
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                    thickness: 1.0,
                ),
              ),
              Card(
                //padding: EdgeInsets.all(10.0),
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  //when you add padding widget, you are putting a blanket around the child
                  //that seperates it from the other things around it
                  child: ListTile(
                    leading: Icon(Icons.phone,
                        color: Colors.teal),
                    title: Text('+91 770 7956 503',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SansSourcePro',
                        fontSize: 20.0,
                      ),),
                  ),
                ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.email,
                        color: Colors.teal),
                    title: Text('s311nandhini@gmail.com',
                            style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SansSourcePro',
                          fontSize: 20.0),
                    ),
                  )
                ),
            ],
          )
        ),
      ),
    );
  }
}
