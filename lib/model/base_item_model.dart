
import 'package:common/model/event_type.dart';

class BaseItemModel {
  final String id;
  final String title;
  final String cover;

  BaseItemModel(this.id, this.title, this.cover);
}

class EventsItemModel extends BaseItemModel {
  final bool isFree;
  final EventType eventType;

  EventsItemModel(id, title, cover, {this.isFree = false, required this.eventType}) : super(id, title, cover);
}
