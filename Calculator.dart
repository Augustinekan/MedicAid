import 'dart:math';
class Calculator
{
  Calculator({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI(){
    _bmi = weight/pow(height/100,2);
   return _bmi.toStringAsFixed(1);
  }
  String getResult()
  {
    if(_bmi>=25)
    {
      return"Overweight";
    }
    else if(_bmi>18.5)
    {
      return"Normal";
    }
    else
    {
      return"Underweight";
    }
  }
  String getOpinion()
  {
    if(_bmi>=25)
    {
      return"You have a higher than average body weight. Try to do more exercise.";
    }
    else if(_bmi>18.5)
    {
      return"You have a  normal body weight.";
    }
    else
    {
      return"You have a lower than average body weight.Try to eat more and eat healthy.";
    }
  }
}

