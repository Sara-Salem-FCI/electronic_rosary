import 'package:flutter/material.dart';
import '../models/Item_model.dart';
class Item extends StatefulWidget {
  final Zekr item;
  const Item({super.key, required this.item});
  @override
  State<Item> createState() => _ItemState();
}
class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: widget.item.color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              '${widget.item.count}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 200,
            height: 60,
            decoration: BoxDecoration(
              color: widget.item.color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                widget.item.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: widget.item.color,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                setState(() {
                  widget.item.increase();
                });
              }, icon: const Icon(
              Icons.arrow_circle_up_sharp,
              size: 33,
            ),
            ),
          ),
        ),
      ],
    );
  }
}
