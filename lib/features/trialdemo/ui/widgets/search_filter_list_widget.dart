import 'package:flutter/material.dart';
import 'package:trialdemo/features/trialdemo/ui/theme/colors.dart';
import 'package:trialdemo/features/trialdemo/ui/theme/text_styles.dart';

class ListFilter extends StatelessWidget {
  final double fullWidth;
  final List<dynamic> listData;
  ListFilter({
    required this.fullWidth,
    required this.listData,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: fullWidth,
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listData.length,
          itemBuilder: (context, index) {
            var item = listData[index];
            var _itemName = item['name'];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(
                    ColorCode.mainTheme,
                  ),
                  borderRadius: BorderRadius.circular(
                    32,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      _itemName,
                      style: TextStyles.filterTextStyle,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
