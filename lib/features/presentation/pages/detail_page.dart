import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_neotour/features/presentation/pages/main_page.dart';
import 'package:neobis_flutter_neotour/features/presentation/widgets/grid_view_widget.dart';
import 'package:neobis_flutter_neotour/util/colors/app_colors.dart';
import '../widgets/booking_bottom_sheet.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.image,
    required this.name,
    required this.location,
    required this.description,
    required this.photo,
    required this.reviewerName,
    required this.reviewerText,
    required this.tour,
  });

  final String image;
  final String name;
  final String location;
  final String description;
  final String photo;
  final String reviewerName;
  final String reviewerText;
  final Tour tour;

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
                      child: Image.network(
                        image,
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
                  height: 629.h,
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
                          name,
                          style: TextStyle(
                              fontSize: 24.sp, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          location,
                          style: TextStyle(
                              fontSize: 10.sp, fontWeight: FontWeight.w900),
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
                          description,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black),
                        ),
                        SizedBox(height: 22.h),
                        ...List.generate(
                          tour.reviews.length,
                          (int index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.network(
                                        tour.reviews[index]
                                            .normalizedReviewerPhoto,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    tour.reviews[index].reviewerName,
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 14.5.h,
                              ),
                              Text(
                                tour.reviews[index].reviewText,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50.h),
                        SizedBox(
                          height: 50.h,
                          width: 385.w,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.r),
                              ),
                            ),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainPage()));
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
}
