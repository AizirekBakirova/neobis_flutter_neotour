// class Tour {
//   Tour(
//       {required this.id,
//       required this.createdDate,
//       required this.updatedDate,
//       required this.category,
//       required this.reviews,
//       required this.name,
//       required this.location,
//       required this.description,
//       required this.thumbnail,
//       required this.bookingLimit,
//       required this.isOnPromotion,
//       required this.region});
//   final String id;
//   final String name;
//   final String location;
//   final String description;
//   final String thumbnail;
//   final int bookingLimit;
//   final String createdDate;
//   final String updatedDate;
//   final bool isOnPromotion;
//   final String region;
//   final List<int> category;
//   final List<Reviews> reviews;

//   factory Tour.fromJson(Map<String, dynamic> json) {
//     var list = json['reviews'] as List;
//     List<Reviews> reviewList = list.map((i) => Reviews.fromJson(i)).toList();

//     return Tour(
//       id: json['id'],
//       name: json['name'],
//       location: json['location'],
//       description: json['description'],
//       thumbnail: json['thumbnail'],
//       bookingLimit: json['booking_limit'],
//       createdDate: json['created_date'],
//       updatedDate: json['updated_date'],
//       isOnPromotion: json['is_on_promotion'],
//       region: json['region'],
//       category: List<int>.from(json['category']),
//       reviews: reviewList,
//     );
//   }
// }

// class Reviews {
//   Reviews(
//       {required this.reviewerName,
//       required this.reviewerPhoto,
//       required this.reviewerText});
//   final String reviewerName;
//   final String reviewerPhoto;
//   final String reviewerText;

//   factory Reviews.fromJson(Map<String, dynamic> json) {
//     return Reviews(
//       reviewerName: json['reviewerName'],
//       reviewerPhoto: json['reviewerPhoto'],
//       reviewerText: json['reviewerText'],
//     );
//   }
// }
