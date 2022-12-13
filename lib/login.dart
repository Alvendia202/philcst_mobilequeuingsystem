import 'package:flutter/material.dart';
import 'package:philcst_mobilequeuing/admin.dart';
//import 'package:philcst_mobilequeuing/student.dart';
import 'package:philcst_mobilequeuing/main.dart';

class LoginPage extends StatelessWidget {
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
            title: Text("PhilCST Queuing Application"),
            backgroundColor: Colors.purple,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Please log in, using your student/employee id number!",
                        style: TextStyle(fontSize: 15, color: Colors.black87),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Column(
                          children: <Widget>[
                            makeInput(label: "username"),
                            makeInput(label: "password", obscureText: true),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Log in as:",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: <Widget>[
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              // ignore: deprecated_member_use
                              primary: Color.fromARGB(
                                  255, 108, 34, 121), // background
                              // ignore: deprecated_member_use
                              onPrimary: Colors.white,
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                              ), // foreground
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FirstRoute()));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Student'), // <-- Text
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  // <-- Icon
                                  Icons.school,
                                  size: 40.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: <Widget>[
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  // ignore: deprecated_member_use
                                  primary: Color.fromARGB(
                                      255, 108, 34, 121), // background
                                  // ignore: deprecated_member_use
                                  onPrimary: Colors.white,
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                  ), // foreground// foreground
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Adminpage()));
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text('Admin'), // <-- Text
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      // <-- Icon
                                      Icons.work,
                                      size: 40.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
