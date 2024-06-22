class Tours {
  Tours(
      {required this.name,
      required this.location,
      required this.description,
      required this.thumbnail,
      required this.bookingLimit,
      required this.isOnPromotion,
      required this.region});
  final String name;
  final String location;
  final String description;
  final String thumbnail;
  final int bookingLimit;
  final bool isOnPromotion;
  final String region;

  factory Tours.fromJson(Map<String, dynamic> json) {
    return Tours(
      name: json['name'],
      location: json['location'],
      description: json['description'],
      thumbnail: json['thumbnail'],
      bookingLimit: json['bookingLimit'],
      isOnPromotion: json['isOnPromotion'],
      region: json['region'],
    );
  }
}

class Reviews {
  Reviews(
      {required this.reviewerName,
      required this.reviewerPhoto,
      required this.reviewerText});
  final String reviewerName;
  final String reviewerPhoto;
  final String reviewerText;

  factory Reviews.fromJson(Map<String, dynamic> json) {
    return Reviews(
      reviewerName: json['reviewerName'],
      reviewerPhoto: json['reviewerPhoto'],
      reviewerText: json['reviewerText'],
    );
  }
}
