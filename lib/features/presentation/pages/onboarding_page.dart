import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_neotour/features/presentation/pages/main_page.dart';
import 'package:neobis_flutter_neotour/util/colors/app_colors.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/Rectangle 19.png'),
          SizedBox(
            height: 32.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 86.h,
                    width: 283.w,
                    child: Image.asset(
                      'assets/images/Winter Vacation Trips.png',
                    )),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'Enjoy your winter vacations with warmth',
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black),
                ),
                const Text('and amazing sightseeing on the mountains'),
                const Text('Enjoy the best experience with us!'),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                  width: 177.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()));
                      },
                      child: Row(
                        children: [
                          Text(
                            'Let`s Go!',
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/Group 7.png',
                              scale: 5,
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
