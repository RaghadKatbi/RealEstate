class Estate {
  final int id;
  final String type;
  final String purpose;
  final int room;
  final int bathroom;
  final String price;
  final String state;
  final String space;
  final String direction;
  final String license;
  final String floor;
  final String description;
  final int numberShow;
  final String meterPrice;
  final String streetWidth;
  final String location;
  final String features;
  final int neighborhoodId;
  final int userId;
  final String estateImage;
  final String estateVideo;
  final int buildingRank;
  final dynamic status;
  final String createdAt;
  final String updatedAt;
  final Neighborhood neighborhood;

  Estate({
    required this.id,
    required this.type,
    required this.purpose,
    required this.room,
    required this.bathroom,
    required this.price,
    required this.state,
    required this.space,
    required this.direction,
    required this.license,
    required this.floor,
    required this.description,
    required this.numberShow,
    required this.meterPrice,
    required this.streetWidth,
    required this.location,
    required this.features,
    required this.neighborhoodId,
    required this.userId,
    required this.estateImage,
    required this.estateVideo,
    required this.buildingRank,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.neighborhood,
  });

  factory Estate.fromJson(Map<String, dynamic> json) {
    return Estate(
      id: json['id'],
      type: json['type'],
      purpose: json['purpose'],
      room: json['room'],
      bathroom: json['bathroom'],
      price: json['price'],
      state: json['state'],
      space: json['space'],
      direction: json['direction'],
      license: json['license'],
      floor: json['floor'],
      description: json['description'],
      numberShow: json['number_show'],
      meterPrice: json['meter_price'],
      streetWidth: json['street_width'],
      location: json['location'],
      features: json['features'],
      neighborhoodId: json['neighborhood_id'],
      userId: json['user_id'],
      estateImage: json['estate_image'],
      estateVideo: json['estate_video'],
      buildingRank: json['building_rank'],
      status: json['status_'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      neighborhood: Neighborhood.fromJson(json['neighborhood']),
    );
  }
}

class Neighborhood {
  final int id;
  final String name;
  final int regionId;
  final String createdAt;
  final String updatedAt;
  final Region region;

  Neighborhood({
    required this.id,
    required this.name,
    required this.regionId,
    required this.createdAt,
    required this.updatedAt,
    required this.region,
  });

  factory Neighborhood.fromJson(Map<String, dynamic> json) {
    return Neighborhood(
      id: json['id'],
      name: json['name'],
      regionId: json['region_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      region: Region.fromJson(json['region']),
    );
  }
}

class Region {
  final int id;
  final String name;
  final int cityId;
  final String createdAt;
  final String updatedAt;
  final String cityImage;

  Region({
    required this.id,
    required this.name,
    required this.cityId,
    required this.createdAt,
    required this.updatedAt,
    required this.cityImage,
  });

  factory Region.fromJson(Map<String, dynamic> json) {
    return Region(
      id: json['id'],
      name: json['name'],
      cityId: json['city_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      cityImage: json['city_image'],
    );
  }
}
