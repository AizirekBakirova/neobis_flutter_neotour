import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_neotour/features/presentation/pages/main_page.dart';
import 'package:neobis_flutter_neotour/util/colors/app_colors.dart';

import '../widgets/booking_bottom_sheet.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 150.h,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset(
                        'assets/images/Rectangle 31.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10.w,
                    top: 10.h,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SizedBox(
                            height: 24.h,
                            width: 24.w,
                            child: Image.asset(
                              'assets/icons/Back Button.png',
                            ),
                          ),
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: 729.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36.r),
                    color: AppColors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 24, bottom: 21.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mount Fuji',
                          style: TextStyle(
                              fontSize: 24.sp, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        SizedBox(
                          width: 78.w,
                          height: 14.h,
                          child: Image.asset('assets/icons/Frame 16 (1).png'),
                        ),
                        SizedBox(
                          height: 22.h,
                        ),
                        Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black),
                        ),
                        SizedBox(height: 22.h),
                        Text(
                          'Reviews',
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: Image.asset(
                                    'assets/images/Ellipse 62.png')),
                            const SizedBox(
                              width: 8,
                            ),
                            Text('Anonymous',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black)),
                          ],
                        ),
                        SizedBox(
                          height: 14.5.h,
                        ),
                        Text(
                          'That was such a nice place. The most beautiful place I’ve ever seen. My advice to everyone not to forget to take warm coat',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black),
                        ),
                        SizedBox(
                          height: 26.5.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: Image.asset(
                                    'assets/images/Ellipse 62.png')),
                            const SizedBox(
                              width: 8,
                            ),
                            Text('Anonymous',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black)),
                          ],
                        ),
                        SizedBox(
                          height: 14.5.h,
                        ),
                        Text(
                          'That was such a nice place. The most beautiful place I’ve ever seen. My advice to everyone not to forget to take warm coat',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 50.h,
                          width: 385.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.r))),
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                builder: (context) => BookingBottomSheet(
                                  onSubmit: () => _showDialog(context),
                                ),
                              );
                            },
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          title: SizedBox(
            width: 383.w,
            child: Center(
              child: Text(
                'Your trip has been booked!',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          actions: [
            Center(
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 5,
                minWidth: 303.w,
                height: 50.h,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                // ignore: sort_child_properties_last
                child: const Text(
                  'Ok',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                color: AppColors.primary,
              ),
            ),
          ],
        );
      },
    );
  }
}
