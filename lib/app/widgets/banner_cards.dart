import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app/data/card_data.dart';

class BannerCards extends StatelessWidget {
  const BannerCards({super.key});

  @override
  Widget build(BuildContext context) {
    int pos = 0;
    return ListView.builder(
      itemCount: card_data_list.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // widget.homeController.position.value = index;
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 2.h),
            child: Container(
              width: 188.w,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, right: 18.w),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 20,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(16.w, 130.h, 16.w, 10.h),
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
