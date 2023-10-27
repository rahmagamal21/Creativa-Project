import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class PageStarting extends StatelessWidget {
  const PageStarting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello,',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'Khadiga Gamal',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25,
                color: blue,
              ),
            ),
          ],
        ),
        Image.asset(
          'assets/images/Logo2.png',
          height:80,
          width:80
          ,
        ),
      ],
    );
  }
}
