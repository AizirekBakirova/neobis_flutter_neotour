import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_neotour/features/presentation/pages/detail_page.dart';
import 'package:neobis_flutter_neotour/features/presentation/widgets/grid_view_widget.dart';
import 'package:neobis_flutter_neotour/util/colors/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({
    super.key,
  });

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TourProvider>(
      builder: (context, tourProvider, _) {
        final viewedTours = tourProvider.viewedTours;
        return Column(
          children: [
            SizedBox(
              width: 335.w,
              height: 254.h,
              child: PageView.builder(
                  controller: pageController,
                  itemCount: viewedTours.length,
                  itemBuilder: (context, index) {
                    final tour = viewedTours[index];
                    return AnimatedBuilder(
                      animation: pageController,
                      builder: (context, child) {
                        return child!;
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  image: tour.thumbnail,
                                  name: tour.name,
                                  location: tour.location,
                                  description: tour.description,
                                  photo: tour.reviews.isNotEmpty
                                      ? tour.reviews[0].reviewerPhoto
                                      : '',
                                  reviewerName: tour.reviews.isNotEmpty
                                      ? tour.reviews[0].reviewerName
                                      : '',
                                  reviewerText: tour.reviews.isNotEmpty
                                      ? tour.reviews[0].reviewText
                                      : '',
                                ),
                              ),
                            );
                          },
                          child: Center(
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30.r),
                                  child: Image.network(
                                    tour.thumbnail,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                    colorBlendMode: BlendMode.darken,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30.r),
                                          bottomRight: Radius.circular(30.r)),
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    height: 50.h,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 15),
                                      child: Text(
                                        tour.name,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: SmoothPageIndicator(
                controller: pageController,
                count: viewedTours.length,
                effect: const ExpandingDotsEffect(
                    expansionFactor: 4,
                    dotHeight: 6,
                    dotWidth: 6,
                    spacing: 4,
                    dotColor: AppColors.dotsColor2,
                    activeDotColor: AppColors.dotsColor1),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                'Recommended',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black),
              ),
            )
          ],
        );
      },
    );
  }
}
