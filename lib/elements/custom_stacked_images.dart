import 'package:flutter/cupertino.dart';
import 'package:glaxit_task/elements/custom_image.dart';
import 'package:glaxit_task/elements/stack_widget.dart';

Widget buildStackedImages() {

  final urlImages = [
    "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg",
    "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg",
    "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg",
    "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg",
  ];

  final items = urlImages.map((urlImage) => customImage(urlImage)).toList();

  return StackedWidgets(
    items: items,

  );
}
