import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: _HomePage(),
  ));
}

class _HomePage extends StatelessWidget {
  const _HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Stack(children: <Widget>[
      Image.asset("assets/images/1_home_page.png"),
      const Positioned(
        top: 170,
        left: 60,
        child: Text("Cruise",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            )),
      ),
      const Positioned(
        top: 200,
        right: 70,
        child: Text("Connect",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            )),
      ),
      Positioned(
          bottom: 170,
          left: 130,
          child: ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
            ),
            onPressed: () {
              _loginPage(context);
            },
            child: const Padding(
              padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
              child: Text('Login',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.deepOrange,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          )),
    ])));
  }
}

void _loginPage(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => _LoginPage()));
}

void _BorrowerPage(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => _Borrower()));
}

class _LoginPage extends StatelessWidget {
  const _LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: <Widget>[
          Image.asset("assets/images/2_login.png"),
          const Positioned(
            top: 150,
            left: 80,
            child: Text("Welcome !",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w200,
                )),
          ),
          Positioned(
              bottom: 170,
              left: 130,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.white),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                  child: Text('Go back',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              )),
          Positioned(
              top: 370,
              left: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                onPressed: () {
                  _BorrowerPage(context);
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                  child: Text('Sign In',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              )),
          Positioned(
            top: 240,
            left: 40,
            child: SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  // fontFamily: Font,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Enter Name ',
                  labelStyle: const TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 310,
            left: 40,
            child: SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                style: const TextStyle(
                  fontSize: 25,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

final List<int> _items = List<int>.generate(4, (int index) => index);

class _Borrower extends StatelessWidget {
  const _Borrower({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Welcome !",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color:Colors.red,
              ),
              child: Column(
                children: [
                  Text("Madar Chodna yaar !")
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
