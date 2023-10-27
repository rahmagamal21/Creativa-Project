import 'package:flutter/material.dart';

import '../Widgets/notification_setting_widget.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> title = [
      'Repeat Interval',
      'Notifications Sound',
      'Play Sound Always',
      'Vibrate always',
      'Title',
      'SubTitle',
    ];
    List<String> subTitle = [
      '60 minutes',
      'choose the notification sound',
      'play sound even in silent mode',
      'vibrate even if vibration mode is not enabled ',
      'course title',
      'course description',
    ];
    List<bool> checkBox = [
      false,
      false,
      true,
      true,
      false,
      false,
    ];
    return SafeArea(
      child: Scaffold(
        //extendBody: true,
        body: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return NotificationsSettingsElement(
                  size: size,
                  title: title[index],
                  subTitle: subTitle[index],
                  checkBox: checkBox[index]);
            },
          ),
        ),
      ),
    );
  }
}
