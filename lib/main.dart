import 'package:flutter/material.dart';
import 'package:philcst_mobilequeuing/login.dart';
import 'package:philcst_mobilequeuing/request.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(), //Welcome.Get Started
      'first': (context) => const FirstRoute(), //transactions
      '/second': (context) => const SecondRoute(), //registrar office
      '/third': (context) => const ThirdRoute(), //accounting office
    },
  )); //MaterialApp
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "WELCOME TO PhilCST!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Let's make your transactions easy and fast!",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/img.png')),
                  ),
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Get started",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({key}) : super(key: key);

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
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("Transactions"),
            backgroundColor: Colors.purple,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ),
          body: Container(
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                        minWidth: 200,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RequestPage()));
                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "REGISTRAR",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        )),
                    SizedBox(
                      height: 20,
                    ), // ElevatedButton
                    MaterialButton(
                      minWidth: 200,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RequestPage()));
                      },
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "ACCOUNTING",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                  ]),
            ), // Center
          ),
        ),
      ],
    ); // Scaffold
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("REGISTRAR OFFICE"),
        backgroundColor: Colors.purple,
      ), // AppBar
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RequestPage()));
                  },
                  child: const Text('WINDOW 1'),
                ),
              ),
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: const Text('WINDOW 2'),
                ),
              ),
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: const Text('WINDOW 3'),
                ),
              ),
            ],
          ),
        ),
      ), // Center
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: const Text("ACCOUNTING DEPARTMENT"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RequestPage()));
                  },
                  child: const Text('WINDOW 1'),
                ),
              ),
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: const Text('WINDOW 2'),
                ),
              ),
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15)),
                  onPressed: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: const Text('WINDOW 3'),
                ),
              ),
            ],
          ),
        ),
      ), // Center
    );
  }
}
