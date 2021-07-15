import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:trialdemo/features/trialdemo/data/datasoures/user_info_local_data_source.dart';
import 'package:trialdemo/features/trialdemo/ui/pages/home/widgets/home_widgets.dart';
import 'package:trialdemo/features/trialdemo/ui/theme/colors.dart';
import '../../../controller/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    String _welcomeText = "Welcome to DEMO TRIAL APP";
    String _subTitleText = "Please select your active user";
    final double _fontSize = 18;
    final double _fontSizeSubtitle = 14;
    final FontWeight _fontWeightBold = FontWeight.w700;

    /// Main build
    return Obx(
      () => LoadingOverlay(
        isLoading: controller.isLoading,
        child: SafeArea(
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              backgroundColor: MyColor.mainTheme,
              onPressed: () {
                controller.addUser();
              },
            ),
            body: SizedBox.expand(
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height / 10,
                  ),
                  Container(
                    //Welcome text
                    child: Text(
                      _welcomeText,
                      style: GoogleFonts.montserrat(
                        fontSize: _fontSize,
                        color: MyColor.mainTheme,
                        fontWeight: _fontWeightBold,
                      ),
                    ),
                  ),
                  Container(
                    //Welcome text
                    child: Text(
                      _subTitleText,
                      style: GoogleFonts.montserrat(
                        fontSize: _fontSizeSubtitle,
                        color: MyColor.darkBackground,
                      ),
                    ),
                  ),
                  Obx(
                    () => (Expanded(
                      child: ListView.builder(
                        itemCount: controller.usersList.length,
                        itemBuilder: (context, index) {
                          var itemUser = controller.usersList[index];
                          return GestureDetector(
                            onTap: () {
                              controller.routeToUserScreen(index);
                            },
                            child: UserAvatar(
                              userName: itemUser.name,
                              imgLink: itemUser.avatar,
                            ),
                          );
                        },
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
