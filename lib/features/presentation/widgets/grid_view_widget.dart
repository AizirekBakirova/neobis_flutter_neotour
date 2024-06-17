import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neobis_flutter_neotour/features/presentation/pages/detail_page.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 13,
      mainAxisSpacing: 12,
      children: [
        GridViewItem(
          image: 'assets/images/Rectangle 3 (4).png',
          text: 'Greenough, Montana',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailPage(),
              ),
            );
          },
        ),
        const GridViewItem(
          image: 'assets/images/Rectangle 3 (5).png',
          text: 'Razek`s House',
        ),
        const GridViewItem(
          image: 'assets/images/Rectangle 3 (6).png',
          text: 'Alta, Norway',
        ),
        const GridViewItem(
          image: 'assets/images/Rectangle 3 (7).png',
          text: 'Guilin, China',
        ),
      ],
    );
  }
}

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.image,
    required this.text,
    this.onTap,
  });

  final String image;
  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              colorBlendMode: BlendMode.darken,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r)),
                  color: Colors.black.withOpacity(0.4),
                ),
                height: 50.h,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
