import 'package:common/model/route/audio_duration_model.dart';
import 'package:equatable/equatable.dart';

class AudioGuideModel extends Equatable {
  final String id;
  final String name;
  final double? size;
  final String url;
  final AudioDurationModel duration;

  const AudioGuideModel({this.id = "", this.name = "", this.size, this.duration = const AudioDurationModel(), this.url = ""});

  @override
  List<Object?> get props => [id, name, size, url, duration];
}
