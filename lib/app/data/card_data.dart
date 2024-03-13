import 'package:travel_app/app/model/card_model.dart';
import 'package:travel_app/app/utils/constants/image_strings.dart';

List<CardModel> card_data_list = [
  CardModel(
    bannerImage: TImages.mountFuji,
    placeName: "Mount Fuji",
    cityName: "Tokyo",
    countryName: "Japan",
    rating: 4.8,
    isFavourite: false,
  ),
  CardModel(
      bannerImage: TImages.grandCanyon,
      placeName: "Grand Canyon",
      cityName: "Arizona",
      countryName: "USA",
      rating: 4.9,
      isFavourite: false),
  CardModel(
    bannerImage: TImages.eiffelTower,
    placeName: "Eiffel Tower",
    cityName: "Paris",
    countryName: "France",
    rating: 4.7,
    isFavourite: false,
  ),
  CardModel(
    bannerImage: TImages.petra,
    placeName: "Petra",
    cityName: "Ma'an Governorate",
    countryName: "Jordan",
    rating: 4.7,
    isFavourite: false,
  ),
  CardModel(
      bannerImage: TImages.redRocks,
      placeName: "Red rocks",
      cityName: "Moab",
      countryName: "United State",
      rating: 4.9,
      isFavourite: false)
];
