import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_neotour/util/colors/app_colors.dart';

class BookingBottomSheet extends StatelessWidget {
  BookingBottomSheet({super.key});
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.5.h,
        maxChildSize: 0.9,
        minChildSize: 0.3,
        builder: (context, scrollConroller) {
          return SingleChildScrollView(
            child: Container(
              height: 505.h,
              width: 415.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28.r),
                      topRight: Radius.circular(28.r)),
                  color: AppColors.white),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Info',
                          style: TextStyle(
                              fontSize: 24.sp, fontWeight: FontWeight.w700),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            size: 24.h,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Text(
                      'To submit an application for a tour reservation, you need to fill in your information and select the number of people for the reservation',
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 33.h),
                    Text(
                      'Phone number',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff888888)),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 50.h,
                      width: 375.w,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Image.asset(
                              'assets/icons/Frame 86.png',
                              scale: 3.h,
                            ),
                            hintText: '+996 _ _ _   _ _ _   _ _ _',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.r),
                                borderSide:
                                    const BorderSide(color: Colors.grey))),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Commentaries to trip',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff888888)),
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 50.h,
                      width: 375.w,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Write your wishes to trip...',
                            hintStyle: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff888888)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100.r),
                                borderSide:
                                    const BorderSide(color: Colors.grey))),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      'Number of people',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff888888)),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        SizedBox(
                          height: 36.h,
                          width: 29.w,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.5.r),
                                color: const Color(0xff897CFF)),
                            child: const Center(
                                child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                          ),
                        ),
                        SizedBox(width: 18.w),
                        Text(
                          '5',
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 16.sp),
                        ),
                        SizedBox(width: 18.w),
                        SizedBox(
                          height: 36.h,
                          width: 29.w,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13.5.r),
                                color: const Color(0xff897CFF)),
                            child: const Center(
                                child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                          ),
                        ),
                        SizedBox(width: 20.w),
                        SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: Image.asset('assets/icons/uil_user.png'),
                        ),
                        SizedBox(width: 7.w),
                        Text(
                          '$count People',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 50.h,
                      width: 385.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffB4B0DA),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.r))),
                        onPressed: () {
                          _showDialog(context);
                        },
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
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
                Navigator.of(context).pop();
              },
              color: AppColors.primary,
              child: const Text(
                'Ok',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      );
    },
  );
}
