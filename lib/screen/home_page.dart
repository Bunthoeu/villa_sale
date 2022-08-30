import 'package:flutter/material.dart';
import '../widget/best_offer.dart';
import '../widget/categories.dart';
import '../widget/custom_appbar.dart';
import '../widget/recommend_food.dart';
import '../widget/search_input.dart';
import '../widget/welcom_text.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchInput(),
            Categories(),
            RecommendListFoods(),
            BestOffer(),
          ],
        ),
      ),
    );
  }
}
