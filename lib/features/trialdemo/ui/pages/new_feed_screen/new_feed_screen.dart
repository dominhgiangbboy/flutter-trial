import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trialdemo/features/trialdemo/controller/new_feed_screen/new_feed_screen.dart';
import 'package:get/get.dart';
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
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: MyColor.mainTheme,
            splashColor: MyColor.darkBackground,
            child: Icon(Icons.add),
            onPressed: () {
              // TODO: adding user operation
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
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return PostItems(
                        imgLink: "https://picsum.photos/600/400",
                        onComment: () {},
                        onDelete: () {},
                        onEdit: () {},
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
