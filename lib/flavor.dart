enum Flavor { DEV, PROD }

class FlavorValues {
  FlavorValues({required this.baseUrl, required this.baseSubscriptionUrl});

  final String baseUrl;
  final String baseSubscriptionUrl;
}

class FlavorConfig {
  final Flavor flavor;
  final String name;
  final FlavorValues flavorValues;

  static FlavorConfig? _instance;

  factory FlavorConfig({required Flavor flavor, required String name, required FlavorValues flavorValues}) {
    _instance ??= FlavorConfig._internal(flavor, name, flavorValues);
    return _instance!;
  }

  FlavorConfig._internal(this.flavor, this.name, this.flavorValues);

  static FlavorConfig get instance {
    return _instance!;
  }

  bool get isProd => flavor == Flavor.PROD;
}
