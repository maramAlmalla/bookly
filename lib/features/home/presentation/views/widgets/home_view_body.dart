import 'package:bookly/core/assets.dart';
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
        SizedBox(
          height: 20,
        ),
        CustomListViewItems(),
      ],
    );
  }
}

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: AspectRatio(
        aspectRatio: 2.28 / 3,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.black,
              image: const DecorationImage(
                image: AssetImage(AssetsData.book1),
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
