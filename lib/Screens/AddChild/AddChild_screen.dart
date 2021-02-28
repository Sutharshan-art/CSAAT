import 'dart:ui';

import 'package:csaat/Screens/Aboutus/aboutus_screen.dart';
import 'package:csaat/Screens/Dataset/dataset_screen.dart';
import 'package:csaat/Screens/Dmat/dmat_screen.dart';
import 'package:csaat/Screens/Paas/paas_screen.dart';
import 'package:csaat/Screens/feedback/feedback_screen.dart';
import 'package:csaat/Screens/home/home_screen.dart';
import 'package:csaat/Screens/profile/profile_screen.dart';
import 'package:csaat/Screens/settings/settings_screen.dart';
import 'package:csaat/components/RoundedInputFieldNormal.dart';
import 'package:csaat/components/rounded_field_location.dart';
import 'package:csaat/components/rounded_mobile_field.dart';
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
              hintText: "Your Child's FirstName",
              onChanged: (value) {},
            ),
            RoundedInputFieldNormal(
              hintText: "Your Child's LastName",
              onChanged: (value) {},
            ),
            RoundedInputFieldLocation(
              hintText: "Your Location",
              onChanged: (value) {},
            ),
            RoundedInputFieldMobile(
              hintText: "Your Mobile No",
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
