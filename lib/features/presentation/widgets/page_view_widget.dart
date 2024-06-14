import 'package:flutter/material.dart';
import 'package:neobis_flutter_neotour/util/colors/app_colors.dart';
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
    return Column(
      children: [
        SizedBox(
          width: 335,
          height: 254,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: pageController,
                  builder: (ctx, child) {
                    return child!;
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/Rectangle 21 (1).png'),
                    )),
                  ),
                );
              }),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: SmoothPageIndicator(
            controller: pageController,
            count: 5,
            effect: ExpandingDotsEffect(
                expansionFactor: 4,
                dotHeight: 6,
                dotWidth: 6,
                spacing: 4,
                dotColor: AppColors.dotsColor2,
                activeDotColor: AppColors.dotsColor1),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 260),
          child: Text(
            'Recommended',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.black),
          ),
        )
      ],
    );
  }
}
