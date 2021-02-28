import 'dart:ui';

import 'package:csaat/Screens/Dataset/dataset_screen.dart';
import 'package:csaat/Screens/Dmat/dmat_screen.dart';
import 'package:csaat/Screens/Paas/paas_screen.dart';
import 'package:csaat/Screens/feedback/feedback_screen.dart';
import 'package:csaat/Screens/home/home_screen.dart';
import 'package:csaat/Screens/profile/profile_screen.dart';
import 'package:csaat/Screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

class AboutusScreen extends StatelessWidget {
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
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
          title: Text('      About Us'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50),
            ),
          ),
          actions: <Widget>[],
        ),
      ),
      body: Center(
        child: Text(''),
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
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProfileScreen();
                  },
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.data_usage_sharp),
            title: Text(
              'Datasets',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DatasetScreen();
                  },
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.local_activity),
            title: Text(
              'PAAS',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PaasScreen();
                  },
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text(
              'DMAT',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DmatScreen();
                  },
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingsScreen();
                  },
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text(
              'Feedback',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FeedbackScreen();
                  },
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text(
              'About us',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AboutusScreen();
                  },
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(
              'Logout',
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              ),
            },
          ),
        ],
      ),
    );
  }
}
