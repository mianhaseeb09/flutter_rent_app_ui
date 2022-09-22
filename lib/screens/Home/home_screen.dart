import 'package:flutter/material.dart';
import 'package:flutter_rent_app_ui/widget/best_offer.dart';
import 'package:flutter_rent_app_ui/widget/categories.dart';
import 'package:flutter_rent_app_ui/widget/custom_app_bar.dart';
import 'package:flutter_rent_app_ui/widget/recommended_house.dart';
import 'package:flutter_rent_app_ui/widget/search_input.dart';
import 'package:flutter_rent_app_ui/widget/welcome_text.dart';

import '../../widget/custom_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(),
            const SearchInput(),
            const Categories(),
            const SizedBox(height: 10,),
            const RecommendedHouse(),
            BestOffer(),          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
