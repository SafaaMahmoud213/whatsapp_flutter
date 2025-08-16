import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whats_app/core/constant/app_images.dart';
import 'package:whats_app/core/constant/custom_text_style.dart';
import 'package:whats_app/core/utils/app_navigation.dart';
import 'package:whats_app/core/utils/extension_sizedbox.dart';
import 'package:whats_app/features/chat_screen/presentation/view/chat1_screen.dart';
import 'package:whats_app/features/chat_screen/presentation/view/chat2_screen.dart';

// ignore: must_be_immutable
class HomeBodyScreen extends StatelessWidget {
  HomeBodyScreen({super.key});

  bool isRead = true;
  List<String> name = [
    "Safaa Mahmoud",
    "Rehab Megahed",
    "Azza Salah",
    "Samia Ahmed",
    "Shams Ashraf",
    "Safaa Mahmoud",
    "Rehab Megahed",
    "Azza Salah",
    "Samia Ahmed",
    "Shams Ashraf",
    "Safaa Mahmoud",
    "Rehab Megahed",
    "Azza Salah",
    "Samia Ahmed",
    "Shams Ashraf",
    "Safaa Mahmoud",
    "Rehab Megahed",
    "Azza Salah",
    "Samia Ahmed",
    "Shams Ashraf",
  ];
  List<String> subTitle = [
    "Hi How Are YOU",
    "Call Me Now",
    "Are You Here",
    "I'm fine ",
    "Bro I have ..",
    "Hi How Are YOU",
    "Call Me Now",
    "Are You Here",
    "I'm fine ",
    "Bro I have ..",
    "Hi How Are YOU",
    "Call Me Now",
    "Are You Here",
    "I'm fine ",
    "Bro I have ..",
    "Hi How Are YOU",
    "Call Me Now",
    "Are You Here",
    "I'm fine ",
    "Bro I have ..",
  ];
  List<String> image = [
    AppImages.person2,
    AppImages.person1,

    AppImages.person3,
    AppImages.person4,
    AppImages.person1,
    AppImages.person2,
    AppImages.person3,
    AppImages.person4,
    AppImages.person1,
    AppImages.person2,
    AppImages.person3,
    AppImages.person4,
    AppImages.person1,
    AppImages.person2,
    AppImages.person3,
    AppImages.person4,
    AppImages.person1,
    AppImages.person2,
    AppImages.person3,
    AppImages.person4,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: name.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            index == 0
                ? AppNavigator().push(page: Chat2Screen())
                : AppNavigator().push(page: Chat1Screen());
          },
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(image[index])),
            subtitle: Row(
              children: [
                Icon(
                  Icons.done_all_outlined,
                  size: 16,

                  color:
                      (index == 1 ||
                              index == 3 ||
                              index == 7 ||
                              index == 5 ||
                              index == 9 ||
                              index == 17 ||
                              index == 18)
                          ? Colors.blue
                          : null,
                ),
                20.wi,
                Text(
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  softWrap: true,
                  subTitle[index],
                  style: CustomTextStyle.text12boldgrey,
                ),
              ],
            ),
            title: Text(
              name[index],
              style: CustomTextStyle.text20boldblack.copyWith(fontSize: 15.sp),
            ),
            trailing: Column(
              children: [
                Text("10:15 PM"),
                10.hi,
                index == 2 ||
                        index == 4 ||
                        index == 8 ||
                        index == 6 ||
                        index == 9 ||
                        index == 10
                    ? CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                      child: Center(
                        child: Text(
                          "2",
                          style: CustomTextStyle.text12boldgrey.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                    : SizedBox.shrink(),
              ],
            ),
          ),
        );
      },
    );
  }
}
