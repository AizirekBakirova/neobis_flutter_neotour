import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../../../util/colors/app_colors.dart';

class BookingBottomSheet extends StatefulWidget {
  BookingBottomSheet({
=======

import '../../../util/colors/app_colors.dart';

class BookingBottomSheet extends StatefulWidget {
  const BookingBottomSheet({
>>>>>>> b604ba90847c3c87c842769f374ec996348ba272
    super.key,
    this.onSubmit,
  });

  final VoidCallback? onSubmit;

  @override
  State<BookingBottomSheet> createState() => _BookingBottomSheetState();
}

class _BookingBottomSheetState extends State<BookingBottomSheet> {
<<<<<<< HEAD
  int count = 1;

  final _numberController = TextEditingController();
  final _commentController = TextEditingController();
  final phoneMaskFormatter = MaskTextInputFormatter(
    mask: '### ### ###',
    filter: {"#": RegExp(r'[0-9]')},
  );
  bool get isFormValid =>
      _numberController.text.isNotEmpty && _commentController.text.isNotEmpty;

  @override
  void initState() {
    _numberController.addListener(() {
      setState(() {});
    });
    _commentController.addListener(() {
      setState(() {});
    });
    super.initState();
  }
=======
  int count = 0;
>>>>>>> b604ba90847c3c87c842769f374ec996348ba272

  final _numberController = TextEditingController();
  final _commentController = TextEditingController();

  bool get isFormValid =>
      _numberController.text.isNotEmpty && _commentController.text.isNotEmpty;

  @override
  void initState() {
    _numberController.addListener(() {
      setState(() {});
    });
    _commentController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.5.h,
        maxChildSize: 0.9,
        minChildSize: 0.3,
        builder: (context, scrollController) {
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
<<<<<<< HEAD
                        inputFormatters: [phoneMaskFormatter],
                        keyboardType: TextInputType.number,
=======
>>>>>>> b604ba90847c3c87c842769f374ec996348ba272
                        controller: _numberController,
                        decoration: InputDecoration(
                            prefixIcon: GestureDetector(
                              onTap: () {},
                              child: DropdownButton<String>(
<<<<<<< HEAD
                                items: <String>[
                                  '+996',
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/icons/Frame 86 (1).png',
                                          scale: 3.h,
                                        ),
                                      ],
=======
                                items: <String>['+996', '+7', '+1']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Image.asset(
                                      'assets/icons/Frame 86.png',
                                      scale: 3.h,
>>>>>>> b604ba90847c3c87c842769f374ec996348ba272
                                    ),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                            ),
                            prefixText: '+996 ',
                            hintText: '_ _ _   _ _ _   _ _ _',
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
                        controller: _commentController,
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
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
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
<<<<<<< HEAD
                                  color: count == 1
                                      ? Color(0xffB4B0DA)
                                      : Color(0xff897CFF)),
=======
                                  color: const Color(0xff897CFF)),
>>>>>>> b604ba90847c3c87c842769f374ec996348ba272
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
<<<<<<< HEAD
                                  color: count == 6
                                      ? Color(0xffB4B0DA)
                                      : Color(0xff897CFF)),
=======
                                  color: const Color(0xff897CFF)),
>>>>>>> b604ba90847c3c87c842769f374ec996348ba272
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
                            backgroundColor: isFormValid
                                ? AppColors.primary
                                : Color(0xffB4B0DA),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.r))),
                        onPressed: isFormValid ? widget.onSubmit : null,
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
