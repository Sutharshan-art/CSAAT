import 'dart:ui';

import 'package:csaat/components/RoundedInputFieldNormal.dart';
import 'package:csaat/components/rounded_input_field.dart';
import 'package:flutter/material.dart';

class AddChildScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: Text('            ADD A CHILD'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          actions: <Widget>[],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(''),
            Image.asset(
              'assets/images/childadd.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            RoundedInputFieldNormal(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: Text('Add a Child'),
        icon: Icon(Icons.child_care_sharp),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: Text(
                'Peter Paul',
                style:
                    TextStyle(color: Colors.white, fontSize: 25, height: 6.5),
              ),
              decoration: BoxDecoration(
                color: Colors.blue[900],

                // image: DecorationImage(
                //     fit: BoxFit.fill,
                //    // image: AssetImage('assets/images/auti.png')
                //     )
              ),
              curve: Curves.easeInCirc),
          ListTile(
            leading: Icon(Icons.input),
            title: Text(
              'Welcome',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.data_usage_sharp),
            title: Text(
              'Datasets',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.local_activity),
            title: Text(
              'PAAS',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text(
              'DMAT',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text(
              'Feedback',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              'Logout',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
