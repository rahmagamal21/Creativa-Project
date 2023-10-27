import 'package:flutter/material.dart';
import '../constants.dart';

class NotificationsSettingsElement extends StatefulWidget {
  const NotificationsSettingsElement(
      {super.key,
      required this.size,
      required this.title,
      required this.subTitle,
      required this.checkBox});
  final Size size;
  final String title;
  final String subTitle;
  final bool checkBox;

  @override
  State<NotificationsSettingsElement> createState() =>
      _NotificationsSettingsElementState();
}

class _NotificationsSettingsElementState
    extends State<NotificationsSettingsElement> {
  bool isChecked = false;
  Color? fillColor = blue;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: size.width * 0.75,
                child: Text(
                  widget.subTitle,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          if (widget.checkBox)
            Checkbox(
                side: const BorderSide(width: 1.5),
                checkColor: Colors.white,
                activeColor: blue,
                value: isChecked,
                onChanged: (bool? valueKey) {
                  setState(() {
                    isChecked = valueKey!;
                  });
                })
        ],
      ),
    );
  }
}
