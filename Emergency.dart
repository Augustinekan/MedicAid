import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class EmergencyButton extends StatefulWidget {
  @override
  _EmergencyButtonState createState() => _EmergencyButtonState();
}

class _EmergencyButtonState extends State<EmergencyButton> {
  Color  buttonColor =Colors.green;
  Color bg=Colors.white;
  double size = 70;
  String number = "0718308733";
  String mess ="Send Alert !";
  IconData myIcon =Icons.notifications_none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(backgroundColor: Colors.pink[900],),
      backgroundColor: bg,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 100,),
          Center(child: Text(mess,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),)),
          SizedBox(height: 80,),
          Center(child: Text("0741716292",style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),)),
          SizedBox(height: 80,),
IconButton(
  onPressed: (){
    void sendText (String number)
    {
      launch("sms :$number");
    }
    sendText(number);

  },
  icon: Icon(myIcon,size: size,color: buttonColor,),
)
        ],
      ),
    );
  }
}

