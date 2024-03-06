import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/app/utils/constants/colors.dart';
import 'package:travel_app/app/utils/constants/image_strings.dart';

class CustomSearchbar extends StatelessWidget {
  const CustomSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: TColors.greyBorder,
            width: 2.w,
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search places',
                  hintStyle: GoogleFonts.roboto(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff888888),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SvgPicture.asset(
              TImages.settingIC,
              fit: BoxFit.cover,
              height: 24.h,
              width: 24.h,
            ),
          ],
        ),
      ),
    );
  }
}
