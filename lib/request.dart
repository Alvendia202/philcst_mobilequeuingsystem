import 'package:flutter/material.dart';
import 'package:philcst_mobilequeuing/main.dart';
import 'package:philcst_mobilequeuing/student.dart';

void main() {
  runApp(new MaterialApp(home: new MaterialApp()));
}

class RequestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // <-- STACK AS THE SCAFFOLD PARENT
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/abs.png"), // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor:
              Colors.transparent, // <-- SCAFFOLD WITH TRANSPARENT BG
          appBar: AppBar(
            title: Text("Your Queuing Number"),
            backgroundColor: Colors.purple,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstRoute()));
              },
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  onPressed: () async {
                    final Future<ConfirmAction?> action =
                        await _asyncConfirmDialog(context);
                    print("Confirm Action $action");
                  },
                  child: const Text(
                    "WINDOW 1",
                    style: TextStyle(fontSize: 50.0),
                  ),
                  padding: EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  color: Color.fromARGB(206, 239, 64, 255),
                ),
                new MaterialButton(
                  onPressed: () async {
                    final Future<ConfirmAction?> action =
                        await _asyncConfirmDialog(context);
                    print("Confirm Action $action");
                  },
                  child: const Text(
                    "WINDOW 2",
                    style: TextStyle(fontSize: 50.0),
                  ),
                  padding: EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  color: Color.fromARGB(206, 239, 64, 255),
                ),
                new MaterialButton(
                  onPressed: () async {
                    final Future<ConfirmAction?> action =
                        await _asyncConfirmDialog(context);
                    print("Confirm Action $action");
                  },
                  child: const Text(
                    "WINDOW 3",
                    style: TextStyle(fontSize: 50.0),
                  ),
                  padding: EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  color: Color.fromARGB(206, 239, 64, 255),
                ),
                new MaterialButton(
                  onPressed: () async {
                    final Future<ConfirmAction?> action =
                        await _asyncConfirmDialog(context);
                    print("Confirm Action $action");
                  },
                  child: const Text(
                    "Please read this before you proceed!",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

enum ConfirmAction { Cancel, Submit }

Future<Future<ConfirmAction?>> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Request queuing number'),
        content: const Text('This will provide you queue number'),
        actions: <Widget>[
          MaterialButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RequestPage()));
            },
          ),
          MaterialButton(
            child: const Text('Submit'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Studentpage()));
            },
          )
        ],
      );
    },
  );
}
