enum SocialLinkType {
  facebook,
  twitter_x,
  instagram,
  tiktok,
  email,
  other;

  static SocialLinkType getType(String type) {
    switch (type) {
      case "facebook":
        return SocialLinkType.facebook;
      case "twitter_x":
        return SocialLinkType.twitter_x;
      case "instagram":
        return SocialLinkType.instagram;
      case "tiktok":
        return SocialLinkType.tiktok;
      case "email":
        return SocialLinkType.email;
      default:
        return SocialLinkType.other;
    }
  }
}
