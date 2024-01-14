import 'dart:ui';

class Zekr{
  String name;
  int count =0;
  Color color;
  Zekr({required this.color,required this.name});
  increase(){
    count++;
  }
}