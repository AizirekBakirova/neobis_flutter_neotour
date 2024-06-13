import 'package:flutter/material.dart';
import 'package:neobis_flutter_neotour/util/colors/app_colors.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            height: 38,
            width: 139,
            child: Image.asset('assets/images/Discover.png')),
        SizedBox(
          height: 21,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Text(
                'Popular',
                style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Featured',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Most Visited',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Europe',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Asia',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Austraila',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
