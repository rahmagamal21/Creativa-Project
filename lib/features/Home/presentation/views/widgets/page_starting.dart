import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class PageStarting extends StatelessWidget {
  const PageStarting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        right: 30,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          const Spacer(),
          Image.asset(
            'assets/images/side icon1.PNG',
            height: 40,
            width: 40,
          ),
        ],
      ),
    );
  }
}
