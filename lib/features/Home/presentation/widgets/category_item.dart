import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.indexing,
    required this.index,
  });

  final int indexing;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        categories[index],
        style: index == indexing
            ? TextStyle(
                fontWeight: FontWeight.bold,
                shadows: const [
                  Shadow(
                      color: Color.fromARGB(255, 248, 175, 67),
                      offset: Offset(0, -5))
                ],
                color:Colors.transparent,
                decoration: TextDecoration.underline,
                decorationColor: amber,
                decorationThickness: 2,
              )
            :  const TextStyle(
                fontWeight: FontWeight.w600,
                shadows: [
                  Shadow(color:Colors.grey, offset: const Offset(0, -5))
                ],
                color: Colors.transparent,
              ),
      ),
    );
  }
}
