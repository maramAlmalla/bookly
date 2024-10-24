import 'package:bookly/features/home/presentation/views/widgets/Custom_icon.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),
          ),
          const Spacer(),
          CustomIcon(
            icon: icon,
          ),
        ],
      ),
    );
  }
}
