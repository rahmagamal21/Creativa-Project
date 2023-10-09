import 'package:flutter/material.dart';
import '../../../../../constants.dart';

/*class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AlertDialog(
      /*Image.asset(
        'assets/images/course${index + 1}.jpg',
        height: 200,
        fit: BoxFit.cover,
      ),*/
      title: Text(
        courseinfo[index]['Title']!,
        textAlign: TextAlign.center,
      ),
      content: Column(
        children: [
          Container(
            constraints: BoxConstraints(
              maxHeight: size.height * 0.4,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/course${index + 1}.jpg'),
              ),
            ),
          ),
          AutoSizeText(
            courseinfo[index]['Description']!,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, 'CANCEL'),
          child: const Text('CANCEL'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'ENROLL'),
          child: const Text('ENROLL'),
        ),
      ],
    );
  }
}*/

class CourseDetails {
  static Future<dynamic> showAlertDialog(BuildContext context, int index) {
    var size = MediaQuery.of(context).size;
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            courseinfo[index]['Title']!,
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                constraints: BoxConstraints(
                  maxHeight: size.height * 0.4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/course${index + 1}.jpg'),
                  ),
                ),
              ),
              Text(
                courseinfo[index]['Description']!,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, 'CANCEL'),
              child: const Text('CANCEL'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'ENROLL'),
              child: const Text('ENROLL'),
            ),
          ],
        );
      },
    );
  }
}

/*class CourseDetails {
  static Future<dynamic> showAlertDialog(BuildContext context, int index) {
    var size = MediaQuery.of(context).size;
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              courseinfo[index]['Title']!,
              textAlign: TextAlign.center,
            ),
            content: Builder(
              builder: (BuildContext context) {
                return UnconstrainedBox(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          maxHeight: size.height * 0.4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                'assets/images/course${index + 1}.jpg'),
                          ),
                        ),
                      ),
                      AutoSizeText(
                        courseinfo[index]['Description']!,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, 'CANCEL'),
                child: const Text('CANCEL'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, 'ENROLL'),
                child: const Text('ENROLL'),
              ),
            ],
          );
        });
  }
}*/





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
