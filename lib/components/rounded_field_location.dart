import 'package:flutter/material.dart';
import 'package:csaat/components/text_field_container.dart';
import 'package:csaat/constants.dart';

class RoundedInputFieldLocation extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldLocation({
    Key key,
    this.hintText,
    this.icon = Icons.location_on,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
