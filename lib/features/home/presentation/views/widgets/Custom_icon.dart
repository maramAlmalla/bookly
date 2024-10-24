import 'package:bookly/constant.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 43,
        width: 43,
        decoration: BoxDecoration(
          color: KPrimaryColor.withOpacity(.05),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
