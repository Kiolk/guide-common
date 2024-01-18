import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'map_point_response.g.dart';

@JsonSerializable()
class MapPointResponse extends Equatable {
  final String type;
  final List<double> coordinates;

  const MapPointResponse({this.type = "", this.coordinates = const []});

  factory MapPointResponse.fromJson(Map<String, dynamic> json) => _$MapPointResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MapPointResponseToJson(this);

  @override
  List<Object?> get props => [type, coordinates];
}
