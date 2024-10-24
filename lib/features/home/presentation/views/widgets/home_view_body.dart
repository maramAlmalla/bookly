import 'package:bookly/core/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/Custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_items.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(title: 'BOOKLY', icon: FontAwesomeIcons.magnifyingGlass),
        FeaturedBooksListItems(),
        Text('Best Sellers')
      ],
    );
  }
}

class FeaturedBooksListItems extends StatelessWidget {
  const FeaturedBooksListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomListViewItems(),
            );
          }),
    );
  }
}
