import 'package:common/model/social_link_model.dart';

class AuthorModel {
  final String id;
  final String name;
  final String email;
  final String avatarUrl;

  //TODO need to add this field to model
  final String aboutAuthor;
  final String position;
  final int experience;
  final String workPlace;
  final List<String> phone;
  final List<SocialLinkModel> socialNetworks;

  const AuthorModel({
    this.id = "",
    this.name = "",
    this.email = "",
    this.avatarUrl = "",
    this.position = "",
    this.aboutAuthor = "",
    this.experience = 0,
    this.workPlace = "",
    this.phone = const [],
    this.socialNetworks = const [],
  });

  Map<String, String> getSocialLinks() {
    final map = <String, String>{};
    for (var element in socialNetworks) {
      map.putIfAbsent(element.type.name, () => element.url);
    }

    return map;
  }
}
