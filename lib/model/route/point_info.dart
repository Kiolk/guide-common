import 'package:common/model/route/point_status.dart';
import 'package:common/model/route/point_type.dart';

class PointInfo {
  PointInfo(this.status, this.type);

  final PointStatus status;
  final PointType type;
}
