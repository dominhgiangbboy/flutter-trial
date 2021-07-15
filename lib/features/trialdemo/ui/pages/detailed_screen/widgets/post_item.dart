import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trialdemo/core/platform/typedef_declaration.dart';
import 'package:trialdemo/features/trialdemo/ui/theme/colors.dart';

class PostItemDetailed extends StatelessWidget {
  final TextStyle _userNameFont = GoogleFonts.roboto(
    fontSize: 14,
    color: MyColor.darkBackground,
    fontWeight: FontWeight.w500,
  );
  PostItemDetailed({
    Key? key,
    this.imgLink: "",
    this.userName: "",
    this.avatar: "",
    this.time: "",
  }) : super(key: key);

  final String imgLink;
  final String userName;
  final String avatar;
  final String time;

  final TextStyle _timeFont = GoogleFonts.roboto(
    fontSize: 12,
    color: MyColor.lightGray,
    fontWeight: FontWeight.w400,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: Get.height / 4,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(avatar),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                    left: 16.0,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: userName,
                      style: _userNameFont,
                      children: <TextSpan>[
                        TextSpan(
                          text: "\n" + time,
                          style: _timeFont,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                )
              ],
            ),
          ),
          Image.network(
            imgLink,
            width: double.infinity,
          ),
          Divider(),
        ],
      ),
    );
  }
}
