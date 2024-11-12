import 'apis/endpoints.dart';

class Environments {
  static const String PRODUCTION = 'prod';
  static const String QAS = 'QAS';
  static const String DEV = 'dev';
  static const String LOCAL = 'local';
}

class EnvironmentConfig {
  final String name;
  final String api;
  final String websiteUrl;
  final bool isProduction;

  EnvironmentConfig({
    required this.isProduction,
    required this.name,
    required this.api,
    required this.websiteUrl,
  });

  bool get isProd => name == Environments.PRODUCTION;
}

class ConfigEnvironments {
  static const String _currentEnvironment = Environments.PRODUCTION;

  static final List<EnvironmentConfig> _availableEnvironments = [
    EnvironmentConfig(
      name: Environments.DEV,
      isProduction: false,
      websiteUrl: BaseUrl.website,
      api: BaseUrl.api,
    ),
    EnvironmentConfig(
      name: Environments.PRODUCTION,
      isProduction: true,
      websiteUrl: BaseUrl.website,
      api: BaseUrl.api,
    ),
  ];

  static EnvironmentConfig getCurrentEnvironment() {
    return _availableEnvironments
        .firstWhere((env) => env.name == _currentEnvironment);
  }
}

sealed class BaseUrl {
  static String api = "https://api.example.com";
  static String website = "https://api.example.com";
}
