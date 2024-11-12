class WorkModel {
  final String companyName;
  final String start;
  final String end;
  final String url;
  final List<String> summary;
  final String desingnation;
  final String location;

  WorkModel(
      {required this.companyName,
      required this.location,
      required this.url,
      required this.start,
      required this.end,
      required this.summary,
      required this.desingnation});

  static List<WorkModel> works = [
    WorkModel(
        companyName: "MILES EDUCATION PRIVATE LIMITED",
        location: "Banglore, India",
        start: "May 2022",
        end: "Present",
        summary: [
          "Orchestrated the development and launch of the Miles CPA app, leading a team of 6+ members. Demonstrated strong mentorship, communication skills, and attention to detail throughout all project phases.",
          "Boosted user engagement by 40% through effective collaboration and constructive feedback, driving innovative feature integration and a creative interface.",
          "Improved team performance by providing guidance and conducting code reviews, resulting in a 20% reduction in errors and a 35% increase in proficiency.",
          "Resolved complex issues by applying practical problem-solving and troubleshooting skills, ensuring the app met high-performance standards and user expectations."
        ],
        url:
            "https://media.licdn.com/dms/image/v2/D560BAQHSsTIvmEC9ag/company-logo_200_200/company-logo_200_200/0/1720682418890/mileseducation_logo?e=2147483647&v=beta&t=f1KiZvlsDM-6jb5XAPK0sxsKRzZoreJjQLCLInWLznc",
        desingnation: "Sr. Flutter Developer & Team Lead"),
    WorkModel(
        companyName: "CBNITES INDIA PRIVATE LIMITED",
        location: "Kolkata, India",
        start: "Jan 2022",
        end: "May 2022",
        summary: [
          "Collaboratively enhanced the application performance and efficiency of Accenture's Doctor-Patient app, reducing processing times by 25% while elevating user satisfaction to the 95th percentile.",
          "Built Video Meeting module for 500+ secure doctor-patient consultations, ensuring healthcare privacy compliance.",
          "Enhanced patient engagement with face-to-face chat. Increased app downloads by 30% and retention by 25%."
        ],
        url: "https://www.topdevelopers.co/upload/20200804131113893354947.jpg",
        desingnation: "Flutter Developer"),
    WorkModel(
        companyName: "SVELTE TECH TECHNOLOGIES",
        location: "Gurugram, India",
        start: "April 2021",
        end: "Jan 2022",
        summary: [
          "Developed a secure chat application for the Government of India using the Flutter framework, ensuring robust security measures and encryption protocols. Enabled secure communication for over 500 government officials.",
          "Created the Ardee School app, a comprehensive mobile application used by over 2,000 students, 150 teachers, and 1,000 parents, featuring multi-role login functionalities for seamless access."
        ],
        url:
            "https://example.com/svelte_logo.png", // Placeholder for company logo URL
        desingnation: "Flutter Developer"),
    WorkModel(
        companyName: "ADS AND URL",
        location: "New Delhi, India",
        start: "October 2020",
        end: "April 2021",
        summary: [
          "Collaborated on diverse app development projects, including a Food Delivery Rider App with live tracking and Google Maps for efficient navigation.",
          "Successfully led the development of a Flutter-based Porter app for Dubai Government. Optimized user experience for 10K+ daily mall patrons, showcasing proven expertise in Flutter framework and agile methodologies.",
          "Built People's Currency POS module, handling 1,000+ transactions daily and significantly improving payment efficiency."
        ],
        url:
            "https://example.com/ads_url_logo.png", // Placeholder for company logo URL
        desingnation: "Flutter Developer"),
    WorkModel(
        companyName: "NUEVO THOUGHTS TECHNOLOGIES",
        location: "Location not specified", // Placeholder
        start: "Internship Period Not Specified",
        end: "Internship Period Not Specified",
        summary: [
          "Developed a face detection module for attendance tracking using OpenCV and ML."
        ],
        url:
            "https://example.com/nuevo_logo.png", // Placeholder for company logo URL
        desingnation: "Flutter Developer (Intern)"),
  ];
}
