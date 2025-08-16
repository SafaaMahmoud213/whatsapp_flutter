import 'package:flutter/material.dart';
import 'package:whats_app/features/home_screen/presentation/widgets/appbar_text.dart';
import 'package:whats_app/features/home_screen/presentation/widgets/custom_app_bar.dart';
import 'package:whats_app/features/home_screen/presentation/widgets/custom_search.dart';
import 'package:whats_app/features/home_screen/presentation/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 102,
              backgroundColor: Colors.transparent,
              title: CustomAppBar(),
              flexibleSpace: AppbarText(text: "Chats"),
            ),
            SliverAppBar(
              expandedHeight: 60,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13),
                  child: CustomSearch(),
                ),
              ),
            ),

            SliverToBoxAdapter(child: HomeBodyScreen()),
          ],
        ),
      ),
    );
  }
}
