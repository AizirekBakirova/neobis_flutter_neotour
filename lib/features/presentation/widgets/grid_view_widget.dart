import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:neobis_flutter_neotour/features/presentation/pages/detail_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Tour {
  final String id;
  final String name;
  final String thumbnail;
  final String location;
  final String description;

  Tour({
    required this.id,
    required this.name,
    required this.thumbnail,
    required this.location,
    required this.description,
  });

  factory Tour.fromJson(Map<String, dynamic> json) {
    return Tour(
      id: json['id'],
      name: json['name'],
      thumbnail: json['thumbnail'],
      location: json['location'],
      description: json['description'],
    );
  }
}

class TourProvider with ChangeNotifier {
  List<Tour> _tours = [];

  List<Tour> get tours => _tours;

  Future<void> fetchTours() async {
    final response =
        await http.get(Uri.parse('https://muha-backender.org.kg/list-tours/'));

    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      _tours = jsonData.map((json) => Tour.fromJson(json)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load tours');
    }
  }
}

class GridViewWidget extends StatelessWidget {
  GridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TourProvider>(
      builder: (ctx, tourProvider, _) {
        if (tourProvider.tours.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else {
          return GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 13,
            mainAxisSpacing: 12,
            children: List.generate(
              tourProvider.tours.length,
              (index) {
                final tour = tourProvider.tours[index];
                return GridViewItem(
                  image: tour.thumbnail,
                  text: tour.name,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          image: tour.thumbnail,
                          name: tour.name,
                          location: tour.location,
                          description: tour.description,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          );
        }
      },
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
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                image,
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
                      bottomLeft: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r)),
                  color: Colors.black.withOpacity(0.5),
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
