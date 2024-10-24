import 'package:bookly/features/home/presentation/views/widgets/Custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(title: 'BOOKLY', icon: FontAwesomeIcons.magnifyingGlass),
      ],
    );
  }
}