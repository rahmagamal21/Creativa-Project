
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../constants.dart';

var radius = const BorderRadius.all(
  Radius.circular(12),
);

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: radius,
      elevation:5,
      child: SizedBox(
        height:45,
        child: TextFormField(
          decoration: InputDecoration(
             contentPadding: const EdgeInsets.all(5),
             focusedBorder: outlineInputBorder(),
            // hoverColor: Colors.black,
            enabledBorder: outlineInputBorder(),
            hintText: 'Search here',
            hintStyle: const TextStyle(fontWeight:FontWeight.w600),
            prefixIcon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: radius,
    );
  }
}
