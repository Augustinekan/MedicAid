import 'package:color_gram/Appointments.dart';
import 'package:flutter/material.dart';
import 'functions.dart';
import 'Appointments.dart';
import 'Emergency.dart';
import 'bmi.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Color(0xFF0A0E21),
      primaryColor: Color(0xFF0A0E21),
      textTheme: TextTheme(
        body1:  TextStyle(
          color: Colors.white,

        )
      )
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  GestureDetector cont(String item, IconData icon, Function function) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: double.infinity,
          child: Center(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    icon,
                    color: Colors.pink,
                    size: 35,
                  ),
                ),
                Center(
                    child: Text(
                  item,
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ))
              ],
            ),
          ),
          decoration: BoxDecoration(color: Color(0xFF1D1E33)),
        ),
      ),
      onTap: function,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF0A0E21),
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Center(child: Text("HEALTH DASHBOARD")),
          elevation: 20,
        ),
        body: Padding(
          padding: EdgeInsets.all(2),
          child: GridView.count(
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
            crossAxisCount: 2,
            children: <Widget>[
              cont('Prescriptions', Icons.access_alarm, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Prescriptions()));
              }),
              cont("Appointment", Icons.notifications, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Appointments()));
              }),
              cont("Weight", Icons.favorite, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BmiHome()));
              }),
              cont("Hydrate", Icons.invert_colors, () {}),
              cont("Emergency!", Icons.notification_important, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EmergencyButton()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
