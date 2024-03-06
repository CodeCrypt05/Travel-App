import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/app/modules/home/controllers/home_controller.dart';
import 'package:travel_app/app/utils/constants/image_strings.dart';
import 'package:travel_app/app/widgets/custom_searchbar.dart';
import 'package:travel_app/app/widgets/custom_tabs.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 54.h),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Hi, David',
                    style: GoogleFonts.montserrat(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Image.asset(
                  TImages.profilePic,
                  fit: BoxFit.cover,
                  height: 50.h,
                  width: 50.h,
                )
              ],
            ),
            SizedBox(height: 9.h),
            Text(
              'Explore the world',
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff888888),
              ),
            ),
            SizedBox(height: 38.h),
            const CustomSearchbar(),
            SizedBox(height: 42.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular places",
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2F2F2F),
                  ),
                ),
                Text(
                  "View all",
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff888888),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Container(
              color: Colors.blueAccent,
              width: double.infinity,
              height: 160.h,
              child: CustomTabsBar(),
            ),
          ],
        ),
      ),
    );
  }
}
