import 'package:bookly/core/assets.dart';
import 'package:bookly/core/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/Custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/Featured_List_view_items.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_items.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(title: 'BOOKLY', icon: FontAwesomeIcons.magnifyingGlass),
          FeaturedBooksListItems(),
          Text(
            'Best Sellers',
            style: Styles.titleMedium,
          ),
          BestSellersListViewItems(),
        ],
      ),
    );
  }
}

class BestSellersListViewItems extends StatelessWidget {
  const BestSellersListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.3 / 4,
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
          const Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
