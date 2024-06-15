import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_neotour/features/presentation/widgets/page_view_widget.dart';
import 'package:neobis_flutter_neotour/features/presentation/widgets/grid_view_widget.dart';
import 'package:neobis_flutter_neotour/features/presentation/widgets/top_widget.dart';
import 'package:neobis_flutter_neotour/util/colors/app_colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 15,
              top: 36,
              right: 15,
            ),
            child: Column(
              children: [
                TopWidget(),
                SizedBox(height: 28.h),
                PageViewWidget(),
                SizedBox(height: 20.h),
                GridViewWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
