import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trialdemo/core/platform/typedef_declaration.dart';
import 'package:trialdemo/features/trialdemo/ui/theme/colors.dart';

class PostItems extends StatelessWidget {
  final TextStyle _userNameFont = GoogleFonts.roboto(
    fontSize: 14,
    color: MyColor.darkBackground,
    fontWeight: FontWeight.w500,
  );
  PostItems({
    Key? key,
    this.imgLink: "",
    required this.onEdit,
    required this.onComment,
    required this.onDelete,
  }) : super(key: key);

  final String imgLink;
  final CallBack onEdit;
  final CallBack onComment;
  final CallBack onDelete;
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
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/img/avatar.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'User 1',
                      style: _userNameFont,
                      children: <TextSpan>[
                        TextSpan(
                          text: '\n2 days ago',
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: onEdit,
                  icon: Icon(
                    Icons.edit,
                  ),
                ),
                IconButton(
                  onPressed: onComment,
                  icon: Icon(
                    Icons.comment,
                  ),
                ),
                IconButton(
                  onPressed: onDelete,
                  icon: Icon(
                    Icons.delete,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
