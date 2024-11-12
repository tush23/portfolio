class Project {
  final String title;
  final String description;
  final String image;

  Project({
    required this.title,
    required this.description,
    required this.image,
  });

  static List<Project> projects = [
    Project(
      title: 'MovieFlix',
      description: 'Online Movies & TV Shows Application',
      image: 'assets/images/movieflix.png',
    ),
    Project(
      title: 'SmartHome Control Interface Redesign',
      description: 'Redesigned the control interface for smart homes.',
      image: 'assets/images/smarthome.png',
    ),
    Project(
      title: 'HealthTracker - Mobile App',
      description: 'A mobile app to track health and fitness.',
      image: 'assets/images/healthtracker.png',
    ),
    Project(
      title: 'TravelHaul - The Best Travelling Assistant',
      description: 'Your ultimate travel companion app.',
      image: 'assets/images/travelhaul.png',
    ),
  ];
}
