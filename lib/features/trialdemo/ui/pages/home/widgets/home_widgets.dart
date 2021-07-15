import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    Key? key,
    required this.userName,
  }) : super(key: key);
  final String userName;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 100.0,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/img/avatar.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(userName),
            ),
          ],
        ),
      ),
    );
  }
}
