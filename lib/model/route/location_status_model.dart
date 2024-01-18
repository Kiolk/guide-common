class LocationStatusModel {
  const LocationStatusModel({this.locationId = "", this.isCompleted = false});

  final String locationId;
  final bool isCompleted;

  LocationStatusModel copyWith({String? locationId, bool? isCompleted}) {
    return LocationStatusModel(locationId: locationId ?? this.locationId, isCompleted: isCompleted ?? this.isCompleted);
  }
}
