import 'package:dio/dio.dart';

class City {
  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;
  String cityImage;

  City({required this.id, required this.name, required this.createdAt, required this.updatedAt, required this.cityImage});

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'],
      name: json['name'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      cityImage: json['city_image'],
    );
  }
  @override
  String toString() {
    return 'City{id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, cityImage: $cityImage}';
  }
  Map<String, dynamic> toJson() => {'name': name, 'pathImage': cityImage};
  final dio = Dio();
  List<City> cities = [];

  Future<List<City>> getCities() async {
    print("+++++++++++++++++++++++++++++++");
    final response = await dio.get('https://proengaqar.com/api/all_cities');
    print(response.statusMessage);
    print(response.data['data']);
    for (var cityData in response.data['data']) {
      cities.add(City.fromJson(cityData));
      print(cities);
    }

    return cities;
  }
}
