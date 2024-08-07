import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/styles.dart';
import 'custom_app_bar.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers:
      [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              //FeaturedBooksHorizontalListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text('Best Seller', style: AppStyles.textStyle18,),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),

        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
           // child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}

