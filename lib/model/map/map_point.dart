import 'package:equatable/equatable.dart';
import 'package:latlong2/latlong.dart';
import 'package:common/model/route/location_model.dart';

class MapPoint extends Equatable {
  final LocationModel? location;
  final List<double> coordinates;
  final bool isPlaying;

  const MapPoint({this.coordinates = const [], this.location, this.isPlaying = false});

  @override
  List<Object?> get props => [coordinates, location, isPlaying];

  MapPoint copyWith({LocationModel? location, String? type, List<double>? coordinates, bool? isPlaying}) {
    return MapPoint(
        location: location ?? this.location,
        coordinates: coordinates ?? this.coordinates,
        isPlaying: isPlaying ?? this.isPlaying);
  }

  LatLng getCoordinate() {
    return LatLng(coordinates[1], coordinates.first);
  }
}
