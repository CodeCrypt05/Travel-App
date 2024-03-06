import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabsBar extends StatelessWidget {
  CustomTabsBar({super.key});

  final List items = ["Most Viewed", "Nearby", "Latest"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 40.h,
            width: 60.w,
            color: Colors.black,
            alignment: Alignment.center,
            child: Text(
              items[index],
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          );
        });
  }
}
