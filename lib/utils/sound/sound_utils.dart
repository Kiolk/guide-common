import 'package:common/model/route/audio_duration_model.dart';

import 'package:common/model/route/location_model.dart';

class SoundUtils {
  AudioDurationModel calculateTotalDuration(List<LocationModel> details) {
    if(details.isEmpty) {
      return const AudioDurationModel();
    }
    int totalSeconds = details.map((e) => e.audioGuide.duration.duration).reduce((value, element) => value + element).toInt();

    return AudioDurationModel(duration: totalSeconds);
  }
}
