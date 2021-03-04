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
import 'package:flutter/cupertino.dart';
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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

  final _formKey = GlobalKey<FormState>();
  DateTime _chosenDateTime;
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
          showDialog(
              context: context,
              builder: (BuildContext) {
                return AlertDialog(
                  content: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Title(
                        color: Colors.blue,
                        child: Text(
                          "Your Child's Details",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                      Positioned(
                        right: -40.0,
                        top: -40.0,
                        child: InkResponse(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: CircleAvatar(
                            child: Icon(Icons.close),
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            // Container(
                            //   height: 200,
                            //   child: CupertinoDatePicker(
                            //     mode: CupertinoDatePickerMode.date,
                            //     initialDateTime: DateTime.now(),
                            //     onDateTimeChanged: (val) {
                            //       setState(() {
                            //         _chosenDateTime = val;
                            //       });
                            //     },
                            //   ),
                            // ),
                            SizedBox(height: 50),

                            // TextField(
                            //   decoration: InputDecoration(
                            //     icon: Icon(Icons.calendar_today),
                            //     labelText: 'DOB',
                            //   ),
                            // ),

                            RaisedButton(
                              onPressed: () => _selectDate(context),
                              child: Text(
                                "Select your Child's DOB",
                                style: TextStyle(color: Colors.white),
                              ),
                              color: Colors.blue,
                            ),

                            SizedBox(height: 50),
                            RaisedButton(
                              child: Text("Next"),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext) {
                                      return AlertDialog(
                                        content: Stack(
                                          overflow: Overflow.visible,
                                          children: <Widget>[
                                            Title(
                                              color: Colors.blue,
                                              child: Text(
                                                "Your Child's Details",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                              ),
                                            ),
                                            Positioned(
                                              right: -40.0,
                                              top: -40.0,
                                              child: InkResponse(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: CircleAvatar(
                                                  child: Icon(Icons.close),
                                                  backgroundColor: Colors.red,
                                                ),
                                              ),
                                            ),
                                            Form(
                                              key: _formKey,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  // Container(
                                                  //   height: 200,
                                                  //   child: CupertinoDatePicker(
                                                  //     mode: CupertinoDatePickerMode.date,
                                                  //     initialDateTime: DateTime.now(),
                                                  //     onDateTimeChanged: (val) {
                                                  //       setState(() {
                                                  //         _chosenDateTime = val;
                                                  //       });
                                                  //     },
                                                  //   ),
                                                  // ),
                                                  SizedBox(height: 50),

                                                  // TextField(
                                                  //   decoration: InputDecoration(
                                                  //     icon: Icon(Icons.calendar_today),
                                                  //     labelText: 'DOB',
                                                  //   ),
                                                  // ),

                                                  RaisedButton(
                                                    onPressed: () =>
                                                        _selectDate(context),
                                                    child: Text(
                                                      "Select your Child's DOB",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    color: Colors.blue,
                                                  ),

                                                  SizedBox(height: 50),
                                                  RaisedButton(
                                                    child: Text("Next"),
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) {
                                                            return HomeScreen();
                                                          },
                                                        ),
                                                      );
                                                    },
                                                  )
                                                  // Padding(
                                                  //   padding: const EdgeInsets.all(8.0),
                                                  //   child: RaisedButton(
                                                  //     child: Text("Submitß"),
                                                  //     onPressed: () {
                                                  //       if (_formKey.currentState.validate()) {
                                                  //         _formKey.currentState.save();
                                                  //       }
                                                  //     },
                                                  //   ),
                                                  // )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    });
                              },
                            )
                            // Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: RaisedButton(
                            //     child: Text("Submitß"),
                            //     onPressed: () {
                            //       if (_formKey.currentState.validate()) {
                            //         _formKey.currentState.save();
                            //       }
                            //     },
                            //   ),
                            // )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              });
        },
        icon: Icon(Icons.navigate_next),
        label: Text('Next'),
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
