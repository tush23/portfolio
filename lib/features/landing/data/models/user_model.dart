class UserModel {
  final String name;
  final String mobile;
  final String email;
  final String desingnation;
  final String firmware;
  final String summary;
  final List<String> keyPoints;
  final String location;
  final String education;
  final List<Skill> skills;

  UserModel({
    required this.name,
    required this.mobile,
    required this.email,
    required this.education,
    required this.summary,
    required this.skills,
    required this.keyPoints,
    required this.desingnation,
    required this.firmware,
    required this.location,
  });

  static UserModel user = UserModel(
      name: "Tushar Dubey",
      mobile: "+918384091874",
      email: "tushardubey.work@gmail.com",
      summary:
          "Results-driven Sr. Flutter Developer with over 4+ years of experience in developing a wide range of applications, including e-commerce platforms, e-learning systems, and AI integrations. Proven expertise in architectural design and clean coding practices, coupled with strong team leadership skills. Adept at understanding business requirements and delivering effective problem-solving solutions.",
      firmware: "Flutter Developer",
      keyPoints: [
        "Diverse Project Experience: Developed applications across various domains, including e-commerce and e-learning.",
        "Architectural Expertise: Designed and implemented custom architectures to meet specific project needs."
            "Team Leadership: Led teams of 6+ developers, promoting collaboration and mentoring.",
        "Business Acumen: Skilled in translating business requirements into technical solutions.",
        "Testing Proficiency: Experienced in unit testing, integration testing, and widget testing to ensure robust and reliable application performance.",
        "Problem-Solving Skills: Identified challenges and implemented innovative solutions for timely project delivery."
      ],
      desingnation: "Software Engineer",
      location: "Banglore, India",
      skills: Skill.skills,
      education:
          "Bachlor of Technologies (B-Tech) Computer Science and Engineering (CSE)");
}

class Skill {
  final String name;
  final String icon;

  Skill({required this.name, required this.icon});

  static List<Skill> skills = [
    Skill(name: "Flutter", icon: "https://img.icons8.com/color/48/flutter.png"),
    Skill(name: "Dart", icon: "https://img.icons8.com/color/48/dart.png"),
    Skill(name: "Rest API", icon: "https://img.icons8.com/color/48/api.png"),
    Skill(name: "BLoC", icon: "https://img.icons8.com/color/48/blockchain.png"),
    Skill(name: "Git", icon: "https://img.icons8.com/color/48/git.png"),
    Skill(
        name: "Gen-AI Integration",
        icon: "https://img.icons8.com/color/48/artificial-intelligence.png"),
    Skill(
        name: "Azure",
        icon:
            "https://static-00.iconduck.com/assets.00/azure-icon-2048x2048-6tt08spf.png"),
    Skill(
        name: "Responsible",
        icon: "https://cdn-icons-png.freepik.com/512/6679/6679650.png"),
    Skill(
        name: "Software Engineering",
        icon: "https://cdn-icons-png.freepik.com/256/5313/5313913.png"),
    Skill(
        name: "iOS",
        icon: "https://img.icons8.com/?size=512&id=20821&format=png"),
    Skill(
        name: "Design Pattern",
        icon: "https://cdn-icons-png.flaticon.com/512/5755/5755133.png"),
    Skill(
        name: "Agile Methodology",
        icon: "https://cdn-icons-png.flaticon.com/512/3967/3967015.png"),
    Skill(
        name: "Problem-Solving Skills",
        icon: "https://cdn-icons-png.flaticon.com/512/8123/8123826.png"),
    Skill(
        name: "Native Applications",
        icon:
            "https://miro.medium.com/v2/resize:fit:539/1*iALgh5jwHMVFS5IiIfC_0A.png"),
    Skill(
        name: "AWS",
        icon: "https://img.icons8.com/color/48/amazon-web-services.png"),
    Skill(
        name: "Innovative",
        icon: "https://img.icons8.com/color/48/innovation.png"),
    Skill(
        name: "Competitive Advantage",
        icon: "https://cdn-icons-png.flaticon.com/512/6157/6157038.png"),
    Skill(
        name: "Mobile App Development",
        icon: "https://cdn-icons-png.flaticon.com/512/5738/5738031.png"),
    Skill(
        name: "Technical Skills",
        icon: "https://cdn-icons-png.flaticon.com/512/10438/10438228.png"),
    Skill(
        name: "Leadership",
        icon: "https://img.icons8.com/color/48/leadership.png"),
    Skill(name: "GraphQL", icon: "https://img.icons8.com/color/48/graphql.png"),
    Skill(
        name: "Unit Testing",
        icon:
            "https://d33wubrfki0l68.cloudfront.net/8799d3d96f30abdd871f8c358205824a76c115b8/12ea4/static/60dea3023bc9e92544ef06c5d8f1a76b/ccc41/cog-circle.png"),
    Skill(
        name: "Automated Pipelines",
        icon: "https://cdn-icons-png.freepik.com/256/12219/12219573.png"),
    Skill(
        name: "Integration Testing",
        icon: "https://cdn-icons-png.flaticon.com/512/7457/7457895.png"),
    Skill(
        name: "Firebase", icon: "https://img.icons8.com/color/48/firebase.png"),
    Skill(
        name: "Clean Architecture",
        icon:
            "https://miro.medium.com/v2/resize:fit:1200/1*VhRdBj1kXY3fwXDEDxoykg.png"),
    Skill(
        name: "SOLID",
        icon:
            "https://miro.medium.com/v2/resize:fit:1191/1*pzSz20jgRj0wqfS_8h0FLQ.png"),
    Skill(
        name: "Debugging",
        icon: "https://cdn-icons-png.flaticon.com/512/1465/1465581.png"),
    Skill(
        name: "Android",
        icon: "https://cdn-icons-png.flaticon.com/512/183/183315.png"),
    Skill(name: "Kotlin", icon: "https://img.icons8.com/color/48/kotlin.png"),
    Skill(
        name: "Android Studio",
        icon: "https://img.icons8.com/color/48/android-studio.png"),
    Skill(
        name: "Gradle",
        icon:
            "https://miro.medium.com/v2/resize:fit:543/1*7G-HT69TsP2okikRlwMIvA.png"),
    Skill(
        name: "Android SDK",
        icon: "https://cdn-icons-png.flaticon.com/512/5969/5969042.png"),
    Skill(
        name: "UI/UX",
        icon: "https://cdn-icons-png.flaticon.com/512/8448/8448634.png"),
    Skill(
        name: "Material Design",
        icon:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Google_Material_Design_Logo.svg/1024px-Google_Material_Design_Logo.svg.png"),
    Skill(
        name: "Databases",
        icon: "https://img.icons8.com/color/48/database.png"),
    Skill(
        name: "App Architecture",
        icon: "https://cdn-icons-png.flaticon.com/512/5270/5270902.png"),
    Skill(
        name: "Persuasive",
        icon: "https://cdn-icons-png.flaticon.com/512/6449/6449324.png"),
    Skill(
        name: "Analytical Skills",
        icon: "https://cdn-icons-png.flaticon.com/512/7524/7524484.png"),
    Skill(
        name: "Creativity",
        icon: "https://cdn-icons-png.flaticon.com/512/1969/1969499.png"),
    Skill(
        name: "Communication Skills",
        icon: "https://img.icons8.com/color/48/communication.png"),
    Skill(
        name: "Innovation",
        icon: "https://img.icons8.com/color/48/innovation.png")
  ];
}
