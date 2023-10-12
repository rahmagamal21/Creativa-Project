import 'package:flutter/material.dart';

class ProfileContainer extends StatefulWidget {
  const ProfileContainer(
      {super.key, required this.icon, required this.text, required this.index});
  final String icon;
  final String text;
  final int index;

  @override
  State<ProfileContainer> createState() => _ProfileContainerState();
}

class _ProfileContainerState extends State<ProfileContainer> {
  bool value = false;
  int selectedIndex = 0;
  bool iconTapped = false;
  @override
  Widget build(BuildContext context) {
    showContent(index) {
      setState(() {
        selectedIndex = index;
        iconTapped == true ? iconTapped = false : iconTapped = true;
      });
    }

    var size = MediaQuery.of(context).size;
    return Material(
      elevation: 10,
      child: Container(
        width: size.width * 0.75,
        // height: 65,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 10),
                  child: Image.asset(
                    widget.icon,
                    scale: 9,
                  ),
                ),
                Text(widget.text),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: IconButton(
                    icon: iconTapped && selectedIndex == widget.index
                        ? const Icon(Icons.keyboard_arrow_down_outlined)
                        : const Icon(Icons.navigate_next),
                    onPressed: showContent(widget.index),
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            iconTapped && selectedIndex == widget.index
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                            "notify me whenever new course is published "),
                        Checkbox(
                          value: value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
