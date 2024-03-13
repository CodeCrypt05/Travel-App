import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/app/presentation/home/controllers/home_controller.dart';

class CustomTabsBar extends StatefulWidget {
  const CustomTabsBar({
    super.key,
    required this.homeController,
  });

  final HomeController homeController;

  @override
  State<CustomTabsBar> createState() => _CustomTabsBarState();
}

class _CustomTabsBarState extends State<CustomTabsBar> {
  final List items = [
    "Most Viewed",
    "Nearby",
    "Latest",
    "Popular",
    "Cheapest",
  ];

  @override
  Widget build(BuildContext context) {
    int pos = 0;
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Obx(
          () => GestureDetector(
            onTap: () {
              widget.homeController.position.value = index;
            },
            child: Padding(
              padding: widget.homeController.position.value == index
                  ? EdgeInsets.symmetric(horizontal: 14.w, vertical: 0.h)
                  : EdgeInsets.symmetric(horizontal: 14.w, vertical: 2.h),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 20.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                      color: widget.homeController.position.value == index
                          ? Color.fromARGB(15, 0, 0, 0)
                          : Colors.transparent,
                      offset: Offset(0, 9),
                      blurRadius: 19,
                      blurStyle: BlurStyle.outer,
                    )
                  ],
                  color: widget.homeController.position.value == index
                      ? Colors.black
                      : Color(0xffEDEDED),
                ),
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                alignment: Alignment.center,
                child: Text(
                  items[index],
                  style: GoogleFonts.roboto(
                    color: widget.homeController.position.value == index
                        ? Colors.white
                        : Color(0xffC5C5C5),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
