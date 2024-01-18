import 'package:common/model/map/map_point.dart';

class MapModel {
  final List<MapPoint> points;

  const MapModel({this.points = const []});

  MapModel copyWith(List<MapPoint>? points) {
    return MapModel(points: points ?? this.points);
  }
}
