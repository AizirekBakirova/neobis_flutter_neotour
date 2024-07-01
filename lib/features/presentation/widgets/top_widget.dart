import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_neotour/features/presentation/widgets/grid_view_widget.dart';
import 'package:neobis_flutter_neotour/util/colors/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TopWidget extends StatefulWidget {
  TopWidget({
    super.key,
  });

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  String selectedCategory = 'Popular';

  @override
  void initState() {
    super.initState();
    Provider.of<TourProvider>(context, listen: false).fetchTours();
  }

  void onCategorySelected(String category) {
    setState(() {
      selectedCategory = category;
    });
    Provider.of<TourProvider>(context, listen: false).fetchTours();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            height: 38.h,
            width: 139.w,
            child: Image.asset('assets/images/Discover.png')),
        const SizedBox(
          height: 21,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () => onCategorySelected('Popular'),
                child: Text(
                  'Popular',
                  style: TextStyle(
                      color: selectedCategory == 'Popular'
                          ? Colors.blue
                          : AppColors.primary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () => onCategorySelected('Featured'),
                child: Text(
                  'Featured',
                  style: TextStyle(
                      color: selectedCategory == 'Featured'
                          ? Colors.blue
                          : AppColors.primary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () => onCategorySelected('Most Visited'),
                child: Text(
                  'Most Visited',
                  style: TextStyle(
                      color: selectedCategory == 'Most Visited'
                          ? Colors.blue
                          : AppColors.primary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () => onCategorySelected('Europe'),
                child: Text(
                  'Europe',
                  style: TextStyle(
                      color: selectedCategory == 'Europe'
                          ? Colors.blue
                          : AppColors.primary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () => onCategorySelected('Asia'),
                child: Text(
                  'Asia',
                  style: TextStyle(
                      color: selectedCategory == 'Asia'
                          ? Colors.blue
                          : AppColors.primary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
