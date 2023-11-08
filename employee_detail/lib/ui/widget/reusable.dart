import 'package:flutter/material.dart';

class ReusableStringIpo extends StatelessWidget {
  const ReusableStringIpo({
    Key? key,
    required this.searchedString,
    required this.selected,
    required this.onTap,
  }) : super(key: key);

  final bool selected;
  final String searchedString;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return GestureDetector(
      onTap: onTap as Function(),
      child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent, width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(20) //
                ),
          ),
          child: Text(
            searchedString,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
          )),
    );
  }
}
