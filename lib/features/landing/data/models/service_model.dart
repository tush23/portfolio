class Service {
  final String title;
  final String description;

  Service({
    required this.title,
    required this.description,
  });
  static List<Service> services = [
    Service(
      title: 'Cross-Platform\nDevelopment',
      description: 'Delivering consistent experiences across all devices.',
    ),
    Service(
      title: 'Custom Plugin\nDevelopment',
      description: 'Extending app functionality with tailored plugins.',
    ),
    Service(
      title: 'API Integration\n& Management',
      description: 'Seamlessly connecting your app with external services.',
    ),
    Service(
      title: 'Maintenance &\nSupport',
      description: 'Providing ongoing app maintenance and support.',
    ),
  ];
}
