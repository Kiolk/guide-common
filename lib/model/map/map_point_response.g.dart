// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_point_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapPointResponse _$MapPointResponseFromJson(Map<String, dynamic> json) =>
    MapPointResponse(
      type: json['type'] as String? ?? "",
      coordinates: (json['coordinates'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$MapPointResponseToJson(MapPointResponse instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
