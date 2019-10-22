import 'package:color_gram/constantsfile.dart';
import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconContent({this.icon,this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label,style: kLabelTextStyle,)
      ],
    );
  }
}

class MyCont extends StatelessWidget {
  MyCont({@required this.mycolor, this.cardChild,this.myFunction});
  final Color mycolor;
  final Widget cardChild;
  Function myFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){myFunction();} ,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: mycolor),
        child: cardChild,
      ),
    );
  }
}

class MyColumn extends StatefulWidget {
  @override
  _MyColumnState createState() => _MyColumnState();
}

class _MyColumnState extends State<MyColumn> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class CalculateButton extends StatelessWidget {
  CalculateButton({@required this.buttonText ,@required this.onTap});
  final Function onTap;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.pressAction});

  final IconData icon;

  final Function pressAction;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: pressAction,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    );
  }
}
