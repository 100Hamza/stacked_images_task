import 'package:flutter/material.dart';

class StackedWidgets extends StatelessWidget {
  final List<Widget> items;
  final TextDirection direction;
  final double size;
  final double xShift;
  const StackedWidgets({
    Key? key,
    required this.items,
    this.direction = TextDirection.ltr,
    this.size = 100,
    this.xShift = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allItems = items
        .asMap()
        .map((index, item) {
      final left = size - xShift;

      final value = Container(
        width: size,
        height: size,
        margin: EdgeInsets.only(left: left * index),
        child: index == 3 ? Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.blue,
          ),
          child: Icon(Icons.add),
        ) : item,
      );

      return MapEntry(index, value);
    })
        .values
        .toList();

    return Stack(
      children: allItems.reversed.toList()
    );
  }
}
