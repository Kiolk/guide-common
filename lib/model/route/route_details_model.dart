import 'package:common/model/map/map_point.dart';
import 'package:common/model/route/audio_duration_model.dart';
import 'package:common/model/route/author_model.dart';
import 'package:common/model/route/image_model.dart';
import 'package:common/model/route/location_model.dart';
import 'package:common/model/route/route_status_model.dart';

///Root model for route
class RouteDetailsModel {
  final String id;
  final String name;
  final String? cover;
  final String description;
  final AudioDurationModel lengthOfRoute;
  final AuthorModel author;
  final List<LocationModel> locations;
  final List<ImageModel> images;
  final RouteStatusModel status;
  final String locale;

  const RouteDetailsModel(
      {this.id = "",
      this.name = "",
      this.cover,
      this.description = "",
      this.lengthOfRoute = const AudioDurationModel(),
      this.author = const AuthorModel(),
      this.locations = const [],
      this.images = const [],
      this.status = const RouteStatusModel(),
      this.locale = "be"});

  List<MapPoint> getMapPoints() {
    return locations.map((location) => MapPoint(coordinates: location.point.coordinates, location: location)).toList();
  }

  RouteDetailsModel copyWith({ RouteStatusModel? status}) {
    return RouteDetailsModel(
        id: id,
        name: name,
        cover: cover,
        lengthOfRoute: lengthOfRoute,
        author: author,
        locations: locations,
        images: images,
        status: status ?? this.status
    );
  }
}
