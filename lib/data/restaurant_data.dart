import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantData {
  List<Restaurant> getRestaurant() async {
    List<Restaurant> listRestaurant = [];

    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> restaurantData = data['restaurants'];

    for (var restaurantData in restaurantData) {
      Restaurant restaurant = Restaurant.fromMap(restaurantData);
      listRestaurant.add(restaurant);
    }

    return listRestaurant;
  }
}
