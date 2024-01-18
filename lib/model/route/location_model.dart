import 'package:common/model/map/map_point.dart';
import 'package:common/model/route/audio_guide_model.dart';
import 'package:common/model/route/image_model.dart';
import 'package:common/model/route/location_status_model.dart';
import 'package:common/model/route/point_info.dart';
import 'package:common/model/route/point_status.dart';
import 'package:common/model/route/point_type.dart';
import 'package:equatable/equatable.dart';

class LocationModel extends Equatable {
  final String id;
  final String name;
  final String address;
  final String description;
  final MapPoint point;
  final AudioGuideModel audioGuide;
  final List<ImageModel> images;
  final String routeId;
  final LocationStatusModel locationStatus;
  final PointType type;

  const LocationModel(
      {this.id = "",
      this.name = "",
      this.address = "",
      this.description =
          "Помните, как в 2019 году гродненцы спасали вековой дуб на Большой Троицкой? С тех пор в этом месте вырос большой и красивый торговый центр, но к чести властей и горожан, величественный дуб сохранили.",
      this.point = const MapPoint(),
      this.audioGuide = const AudioGuideModel(),
      this.images = const [],
      this.routeId = "",
      this.locationStatus = const LocationStatusModel(),
      this.type = PointType.first});

  PointInfo getPointInfo() {
    return PointInfo(locationStatus.isCompleted ? PointStatus.completed : PointStatus.none, type);
  }

  @override
  List<Object?> get props => [id, name, address, description, point, audioGuide, images];

  LocationModel copyWith(
      {String? id,
      String? name,
      String? address,
      String? description,
      MapPoint? point,
      AudioGuideModel? audioGuide,
      List<ImageModel>? images,
      String? routeId,
      LocationStatusModel? locationStatus,
      PointType? type}) {
    return LocationModel(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        point: point ?? this.point,
        audioGuide: audioGuide ?? this.audioGuide,
        images: images ?? this.images,
        routeId: routeId ?? this.routeId,
        locationStatus: locationStatus ?? this.locationStatus,
        type: type ?? this.type);
  }
}
