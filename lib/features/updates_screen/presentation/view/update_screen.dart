import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app/features/home_screen/presentation/widgets/appbar_text.dart';
import 'package:whats_app/features/home_screen/presentation/widgets/custom_search.dart';
import 'package:whats_app/features/updates_screen/presentation/widgets/custom_text_update.dart';
import 'package:whats_app/features/updates_screen/presentation/widgets/update_body.dart';
import 'package:whats_app/features/updates_screen/presentation/widgets/update_header.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 102,
              backgroundColor: Colors.transparent,
              title: IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.ellipsis),

                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade100,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.zero,
                  fixedSize: Size(20, 20),
                  iconSize: 20,
                ),
              ),
              flexibleSpace: AppbarText(text: "Update"),
            ),
            SliverAppBar(
              expandedHeight: 60,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.only(top: 10, right: 12, left: 12),
                  child: CustomSearch(),
                ),
              ),
            ),

            SliverToBoxAdapter(child: UpdateHeader()),
            SliverToBoxAdapter(child: CustomTextUpdate(text: "Resant Update")),
            SliverToBoxAdapter(child: UpdateBody(colors: Colors.green)),
            SliverToBoxAdapter(child: CustomTextUpdate(text: "Viewed Update")),
            SliverToBoxAdapter(child: UpdateBody(colors: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
