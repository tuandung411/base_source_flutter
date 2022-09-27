import 'package:flutter/material.dart';
import 'package:super_app/constant/color.dart';

class BottomBarButtonLight extends StatefulWidget {
  final int id;
  final String buttonTitle;
  final int currentTab;
  final Function click_action;
  final IconData icon;
  BottomBarButtonLight(
      {required this.id,
      required this.buttonTitle,
      required this.currentTab,
      required this.click_action,
      required this.icon,
      //required this.buttonIcon,
      Key? key})
      : super(key: key);
  @override
  State<BottomBarButtonLight> createState() => _BottomBarButtonLightState();
}

class _BottomBarButtonLightState extends State<BottomBarButtonLight> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      minWidth: 94,
      onPressed: () {
        widget.click_action(widget.id);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            size:30,
            widget.icon,
            color: widget.currentTab == widget.id
                ? colorPrimary1
                : colorBlackTypoSub,
          ),
          const SizedBox(height: 8),
          Text(widget.buttonTitle,
              style: TextStyle(
                fontSize: 12,
                color: widget.currentTab == widget.id
                    ? colorPrimary1
                    : colorBlackTypoSub,
              )),
        ],
      ),
    );
  }
}
