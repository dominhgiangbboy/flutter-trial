import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:trialdemo/features/trialdemo/controller/new_feed_screen/new_feed_screen.dart';
import 'package:get/get.dart';
import 'package:trialdemo/features/trialdemo/data/models/post_info_model.dart';
import 'package:trialdemo/features/trialdemo/ui/pages/new_feed_screen/widgets/post_widget.dart';
import 'package:trialdemo/features/trialdemo/ui/theme/colors.dart';

class NewFeedScreen extends GetWidget<NewFeedScreenController> {
  @override
  Widget build(BuildContext context) {
    final TextStyle _welcomeFont = GoogleFonts.montserrat(
      fontSize: 16,
      color: MyColor.darkBackground,
      fontWeight: FontWeight.w500,
    );

    return SafeArea(
      child: Obx(
        () => LoadingOverlay(
          isLoading: controller.isLoading,
          child: Scaffold(
              floatingActionButton: FloatingActionButton(
                backgroundColor: MyColor.mainTheme,
                splashColor: MyColor.darkBackground,
                child: Icon(Icons.add),
                onPressed: () {
                  controller.addPost();
                },
              ),
              body: SizedBox.expand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 32.0,
                        left: 16.0,
                      ),
                      child: Text(
                        controller.welcomeText,
                        style: _welcomeFont,
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: controller.postsList.length,
                        itemBuilder: (context, index) {
                          PostInfoModel postItem = controller.postsList[index];
                          return PostItems(
                            userName: "User" + postItem.userid.toString(),
                            avatar: postItem.avatar,
                            time: postItem.createdAt,
                            post: postItem.post,
                            imgLink: postItem.img,
                            onComment: () {
                              controller.detailedScreenRoute(index);
                            },
                            onDelete: () {
                              controller.deleteConfirmation(postItem.id);
                            },
                            onEdit: () {
                              controller.inputScreenRoute(index);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
