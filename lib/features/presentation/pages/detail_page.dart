import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_neotour/features/presentation/pages/main_page.dart';
import 'package:neobis_flutter_neotour/util/colors/app_colors.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(
            left: 0,
            right: 0,
            child: Column(
              children: [
                Stack(children: [
                  Image.asset('assets/images/Rectangle 31.png'),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Row(
                      children: [
                        Positioned(
                          left: 10.w,
                          bottom: 200.h,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: Image.asset(
                                  'assets/icons/Back Button.png',
                                ),
                              )),
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              top: 500.h / 2.h,
              bottom: 20.h,
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
                                  builder: (context) =>
                                      const BookingBottomSheet());
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
              ))
        ]),
      ),
    );
  }
}

class BookingBottomSheet extends StatefulWidget {
  const BookingBottomSheet({super.key});

  @override
  State<BookingBottomSheet> createState() => _BookingBottomSheetState();
}

class _BookingBottomSheetState extends State<BookingBottomSheet> {
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
                        InkWell(
                          onTap: () {
                            if (count < 2) {
                              return;
                            }
                            setState(() {
                              count--;
                            });
                          },
                          child: SizedBox(
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
                        ),
                        SizedBox(width: 18.w),
                        Text(
                          '$count',
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 16.sp),
                        ),
                        SizedBox(width: 18.w),
                        InkWell(
                          onTap: () {
                            if (count > 5) {
                              return;
                            }
                            setState(() {
                              count++;
                            });
                          },
                          child: SizedBox(
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
