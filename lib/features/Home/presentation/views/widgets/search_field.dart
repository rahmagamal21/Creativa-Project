import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var radius = const BorderRadius.all(
  Radius.circular(8),
);

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: radius,
      elevation: 8,
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: outlineInputBorder(),
          // hoverColor: Colors.black,
          enabledBorder: outlineInputBorder(),
          hintText: 'Search here',
          prefixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
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
