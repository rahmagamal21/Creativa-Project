import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

import '../../../../../constants.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return GiffyDialog.image(
      Image.asset(
        'assets/images/course${index + 1}.jpg',
        height: 200,
        fit: BoxFit.cover,
      ),
      title: Text(
        courseinfo[index]['Title']!,
        textAlign: TextAlign.center,
      ),
      content: AutoSizeText(
        courseinfo[index]['Description']!,
        textAlign: TextAlign.center,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, 'CANCEL'),
          child: const Text('CANCEL'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('ENROLL'),
        ),
      ],
    );
  }
}

/*class CourseDetails {
  static Future<dynamic> showCourseDetails(BuildContext context, int index) {
    return showDialog(
        context: context,
        builder: (context) {
          return GiffyDialog.image(
            Image.asset(
              'assets/images/course${index + 1}.jpg',
              height: 200,
              fit: BoxFit.cover,
            ),
            title: Text(
              courseinfo[index]['Title']!,
              textAlign: TextAlign.center,
            ),
            content: AutoSizeText(
              courseinfo[index]['Description']!,
              textAlign: TextAlign.center,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, 'CANCEL'),
                child: const Text('CANCEL'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('ENROLL'),
              ),
            ],
          );
        });
  }
}*/
