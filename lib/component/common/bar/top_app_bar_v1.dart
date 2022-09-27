// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:super_app/constant/color.dart';

class TopAppBarV1 extends StatelessWidget implements PreferredSizeWidget 
{
  final String title;

  const TopAppBarV1
  ({
    required this.title, 
    Key? key
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(48);

  @override
  Widget build(BuildContext context) 
  {
    return PreferredSize
    (
      preferredSize: const Size(double.infinity, 48),
      child: AppBar
      (
        titleSpacing: 16,
        title: Text
        (
          title,
          style: TextStyle
          (
            fontSize: 16,
          ),
        ),
        backgroundColor: colorPrimary1,
        elevation: 0,
        actions: 
        [
          IconButton
          (
            onPressed: () {},
            padding: EdgeInsets.fromLTRB(10, 8, 0, 8),
            icon: Icon
            (
              Icons.search,
              size: 24,
            ),
          ),
          IconButton
          (
            onPressed: () {},
            padding: EdgeInsets.fromLTRB(0, 8, 16, 8),
            icon: Icon
            (
              Icons.person,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
