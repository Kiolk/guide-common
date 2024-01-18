import 'package:common/model/route/route_status.dart';

class RouteStatusModel {
  const RouteStatusModel(
      {this.routeId = "",
      this.inProgress = false,
      this.completedLocations = const [],
      this.locations = const [],
      this.lastPlayedLocation = 0,
      this.lastPlayedTime = 0});

  final String routeId;
  final bool inProgress;
  final List<String> completedLocations;
  final List<String> locations;
  final int lastPlayedLocation;
  final int lastPlayedTime;

  RouteStatus getStatus() {
    if (completedLocations.length == locations.length && inProgress) {
      return RouteStatus.completed;
    } else if (inProgress) {
      return RouteStatus.inProgress;
    } else {
      return RouteStatus.none;
    }
  }

  RouteStatusModel copyWith(
      {String? routeId, bool? inProgress, List<String>? completedLocations, List<String>? locations, int? lastPlayedLocation, int? lastPlayedTime}) {
    return RouteStatusModel(
        routeId: routeId ?? this.routeId,
        inProgress: inProgress ?? this.inProgress,
        completedLocations: completedLocations ?? this.completedLocations,
        locations: locations ?? this.locations,
        lastPlayedLocation: lastPlayedLocation ?? this.lastPlayedLocation,
        lastPlayedTime: lastPlayedTime ?? this.lastPlayedTime);
  }
}
