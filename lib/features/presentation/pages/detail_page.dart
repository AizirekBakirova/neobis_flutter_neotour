import 'package:flutter/material.dart';
import 'package:neobis_flutter_neotour/util/colors/app_colors.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
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
                          left: 10,
                          bottom: 200,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SizedBox(
                                height: 24,
                                width: 24,
                                child: Image.asset(
                                  'assets/icons/Back Button.png',
                                ),
                              )),
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                              fontSize: 16,
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
              top: 500 / 2,
              child: Container(
                height: 729,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
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
                            fontSize: 24, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        width: 78,
                        height: 14,
                        child: Image.asset('assets/icons/Frame 16 (1).png'),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dignissim eget amet viverra eget fames rhoncus. Eget enim venenatis enim porta egestas malesuada et. Consequat mauris lacus euismod montes.',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black),
                      ),
                      SizedBox(height: 22),
                      Text(
                        'Reviews',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SizedBox(
                              height: 24,
                              width: 24,
                              child:
                                  Image.asset('assets/images/Ellipse 62.png')),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Anonymous',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black)),
                        ],
                      ),
                      SizedBox(
                        height: 14.5,
                      ),
                      Text(
                        'That was such a nice place. The most beautiful place I’ve ever seen. My advice to everyone not to forget to take warm coat',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black),
                      ),
                      SizedBox(
                        height: 26.5,
                      ),
                      Row(
                        children: [
                          SizedBox(
                              height: 24,
                              width: 24,
                              child:
                                  Image.asset('assets/images/Ellipse 62.png')),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Anonymous',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black)),
                        ],
                      ),
                      SizedBox(
                        height: 14.5,
                      ),
                      Text(
                        'That was such a nice place. The most beautiful place I’ve ever seen. My advice to everyone not to forget to take warm coat',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 50,
                        width: 385,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28))),
                            onPressed: () {},
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white),
                            )),
                      )
                    ],
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
