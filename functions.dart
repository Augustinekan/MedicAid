import 'package:flutter/material.dart';

class Prescriptions extends StatefulWidget {
  @override
  _PrescriptionsState createState() => _PrescriptionsState();
}

class _PrescriptionsState extends State<Prescriptions> {
  String dropdownValue ="Pills";
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[900],
          title: Text("My Prescriptions"),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              title: Text("Select the type of medication"),
              trailing: DropdownButton<String>(
                value: dropdownValue,
                  items:<String>["Pills","EyeDrops","Injection","Emulsions","Liquid"].map<DropdownMenuItem<String>>(
                          (String value)
                      {
                        return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value));
                      }
                  ).toList(),
                  onChanged:(String newValue)
                  {
                    setState(() {
                      dropdownValue =newValue;
                    });
                  }
              ),
            ),
            ListTile(
              title: Text("Amount of "+dropdownValue,style: TextStyle(fontSize: 30)),
              trailing:Container(
                width: 100,
                color: Colors.pink[50],
                child: TextField(
                    keyboardType:TextInputType.number,
                    onChanged: null
                ),
              ),

            ),

            ListTile(
              title: Text("Times per Day:",style: TextStyle(fontSize: 30)),
              trailing:Container(
                width: 100,
                color: Colors.pink[50],
                child: TextField(
                    keyboardType:TextInputType.number,
                    onChanged: null
                ),
              ),

            ),

            OutlineButton(
              onPressed:(){},
              child: Text("Add Medication"),
            )
          ],
        ),
      ),
    );
  }
}
