import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Thavas"),
              accountEmail: Text("thavas72@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.cyanAccent,
              ),
            ),
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Category"),
              trailing: Icon(Icons.category),
              onTap: () => Navigator.of(context).pushNamed("/category"),
            ),
            ListTile(
              title: Text("About"),
              trailing: Icon(Icons.account_box),
            ),
            ListTile(
              title: Text("Contact"),
              trailing: Icon(Icons.contact_mail),
              onTap: () => Navigator.of(context).pushNamed("/login"),
            ),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text("Sign Up"),
              trailing: Icon(Icons.verified_user),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text("Login"),
              trailing: Icon(Icons.person_pin),
              onTap: () => Navigator.of(context).pushNamed("/login"),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Text(
              "Welcome Navigation App",
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            )
          ],
        ),
      ),
    );
  }
}
