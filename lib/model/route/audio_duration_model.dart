import 'package:equatable/equatable.dart';

class AudioDurationModel extends Equatable {
  final int duration;

  int getHours() {
    int totalMinutes = duration ~/ 60;
    return totalMinutes ~/ 60;
  }

  int getMinutes() {
    int totalMinutes = duration ~/ 60;
    return totalMinutes % 60;
  }

  const AudioDurationModel({this.duration = 0});

  @override
  List<Object?> get props => [duration];
}
