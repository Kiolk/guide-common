import 'package:common/model/route/route_details_model.dart';

class RoutesModel {
  RoutesModel({this.all = const [], this.inProgress = const [], this.completed = const []});

  final List<RouteDetailsModel> all;
  final List<RouteDetailsModel> inProgress;
  final List<RouteDetailsModel> completed;
}
