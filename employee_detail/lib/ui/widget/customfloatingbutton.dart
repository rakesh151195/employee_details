import 'package:flutter/material.dart';

class MyFloatingButton extends StatelessWidget {
  Function()? onTap;
  MyFloatingButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      height: 50.0,
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(10.0), // Adjust the radius for curved edges
        child: Material(
          color: const Color(0xff1DA1F2),
          child: InkWell(
            onTap: onTap,
            child: const Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 25.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
