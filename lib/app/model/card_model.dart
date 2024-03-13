class CardModel {
  final String? bannerImage;
  final String? placeName;
  final String? cityName;
  final String countryName;
  final double? rating;
  final bool? isFavourite;

  CardModel({
    required this.bannerImage,
    required this.placeName,
    required this.cityName,
    required this.countryName,
    required this.rating,
    required this.isFavourite,
  });
}
