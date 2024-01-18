import 'package:common/model/route/audio_guide_model.dart';

class PlayListModel {
  const PlayListModel({this.guides = const [], this.completed = const []});

  final List<AudioGuideModel> guides;
  final List<String> completed;

  bool isGuideCompleted(AudioGuideModel guide) {
    return completed.contains(guide.id);
  }
}
