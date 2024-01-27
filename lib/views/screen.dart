import 'package:calculater/widgets/Item.dart';
import 'package:flutter/material.dart';
import '../models/Item_model.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  List<Zekr> azkar = [
    Zekr(color: Colors.redAccent, name: 'سبحان الله'),
    Zekr(color: Colors.green, name: 'الحمد لله')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => Item(item: azkar[index]),
          separatorBuilder: (context, index) => const SizedBox(height: 1,),
          itemCount: azkar.length),
    );
  }
}
