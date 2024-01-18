import 'package:common/model/social_link_type.dart';

class SocialLinkModel {
  final String linkId;
  final String url;
  final SocialLinkType type;

  const SocialLinkModel({required this.linkId, required this.url, required this.type});
}
