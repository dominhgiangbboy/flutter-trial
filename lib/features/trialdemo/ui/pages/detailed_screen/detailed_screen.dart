import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trialdemo/features/trialdemo/controller/detailed_screen/detailed_screen.dart';
import 'package:trialdemo/features/trialdemo/ui/pages/detailed_screen/widgets/post_item.dart';
import 'package:trialdemo/features/trialdemo/ui/widgets/text_form_widget.dart';
import '../../theme/colors.dart';
import 'package:get/get.dart';

class DetailedScreen extends GetWidget<DetailedScreenController> {
  @override
  Widget build(BuildContext context) {
    final TextStyle _userNameFont = GoogleFonts.roboto(
      fontSize: 14,
      color: MyColor.darkBackground,
      fontWeight: FontWeight.w500,
    );
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: Container(
          color: Color(
            ColorCode.whiteBackground,
          ),
          child: Column(
            children: [
              PostItemDetailed(
                imgLink: controller.thisPost.img,
                avatar: controller.thisPost.avatar,
                time: controller.thisPost.createdAt,
                userName: "User " + controller.thisPost.userid.toString(),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: controller.commentsList.length,
                  itemBuilder: (context, index) {
                    var _itemComment = controller.commentsList[index];
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                _itemComment.avatar,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth: Get.width / 2,
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 16,
                                    top: 8,
                                    bottom: 8,
                                    right: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(ColorCode.lightBackground),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _itemComment.userName,
                                        style: _userNameFont,
                                      ),
                                      Text(_itemComment.comment),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Divider(),
              Container(
                height: 80,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FormTextField(
                          isObscure: false,
                          onTextChanged: (value) {
                            print(value);
                          },
                          focusNode: FocusNode(),
                          controller: new TextEditingController(),
                          hintText: 'Insert comments here',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.send,
                        color: MyColor.mainTheme,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
