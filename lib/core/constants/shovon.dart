import 'package:shovon_resume/core/constants/file_resources.dart';

abstract class Shovon {
  static const String firstName = 'Mahmudur Rahman';
  static const String lastName = 'Shovon';
  static const String fullName = '$firstName $lastName';
  static const String title = 'Software Development Lead';
  static const String description =
      'Dedicated software development leader with a fervent interest in leveraging mobile and web technologies with proven track record of building and leading high-performing teams to deliver innovative solutions. A steadfast believer in the power of long-term goals and purposeful approach.';
  static const String pp = FileResources.shovonPp;
  static const String email = 'online-cv@shovon.info';
  static const String phone = '+8801675646626';
  static const String city = 'Dhaka';
  static const String country = 'Bangladesh';
  static const String location = '$city, $country';
  static const social = ShovonSocial;
  static List<ShovonExperience> experiences = [
    ShovonExperience(
      title: 'Freelance Software Developer',
      startMonth: 'July',
      startYear: 2020,
      responsibilities: [
        "Delivered bunch of custom software solutions based on automation using Python (Selenium, FastAPI, Django), Javascript (Vanilla), Google's Apps Script (Google Sheets, Gmail and Google Forms), Dart (Flutter), SQL (Postgresql), Firebase (Auth, Firestore, cloud messaging, storage), Git (Local and GitHub) and Cloud Platforms (AWS, Digitalocean, Heroku, Contabo, Linode).",
        "Earned Top Rated Badge on Upwork and Level 2 Seller on Fiverr for consistent client satisfaction.",
      ],
    ),
    ShovonExperience(
      title: "Software Engineering Manager",
      startMonth: "November",
      startYear: 2023,
      company: "QueriesAI Inc.",
      endMonth: "November",
      endYear: 2023,
      responsibilities: [
        'Led a multinational team of 13 engineers (Bangladesh, India, Pakistan, Brazil, UAE).',
        'Established and scaled operations in Bangladesh office of 8 Engineers, 1 Admin and 1 Office assistant.',
        'Managed and led the SaaS development with Node (SaaS backend), React (Frontend) and Python (Automation and AI integration).',
        'Gained extensive experience with cloud platforms including AWS (EC2, Lambda, S3), Digitalocean (Droplet, Apps, Postgres Managed Database), Heroku (API), Contabo (Discrete automations) ensuring scalability and reliability of systems.',
      ],
    ),
    ShovonExperience(
      title: "Software Engineer",
      isPartTime: true,
      startMonth: "August",
      startYear: 2022,
      company: "Attorney Raju Mahajan & Associates",
      endMonth: "January",
      endYear: 2023,
      responsibilities: [
        'Created a system for automated National Interest Waiver evaluation from initial application using Google Forms, Sheets API in combination with Apps Script and FastAPI (Python).',
        'Inaugurated a Daily Work Report system for internal team with Django (Python).',
      ],
    ),
    ShovonExperience(
      title: "Software Engineer",
      isPartTime: true,
      startMonth: "November",
      startYear: 2021,
      company: "QueriesAI Inc.",
      endMonth: "November",
      endYear: 2022,
      responsibilities: [
        "Developed and maintained core automation systems using Python and PostgreSQL.",
        "Built and implemented Google AppsScript automation solutions.",
        "Gained practical experience with desktop software automation using Python (OOP, Selenium, PyQt, PySide).",
        "Collaborated with a diverse team of developers across different locations and led by a US tech enthusiast and investor.",
      ],
    ),
    ShovonExperience(
      title: "Subject Matter Expert & Smart Notes Manager",
      startMonth: "August",
      startYear: 2020,
      company: "Shikho Technologies Bangladesh Ltd",
      endMonth: "April",
      endYear: 2021,
      responsibilities: [
        "Bridged the gap between educational content and technical teams, translating educational materials into interactive platforms.",
        "Utilized innovative technologies like KaTex (JS library for Latex), OCR, draw.io (for geometrical shapes drawing) to render high-quality educational materials on the app platform.",
        "Assisted with learning video management and technical infrastructure setup.",
        "Contributed to early study materials designs and sales at the start of the company and contributed to the overall development of the company's digital platform.",
      ],
    ),
    ShovonExperience(
      title: "Resource Pack Creator",
      isPartTime: true,
      startMonth: "January",
      startYear: 2020,
      company: "Shikho Technologies Bangladesh Ltd",
      endMonth: "August",
      endYear: 2020,
      responsibilities: [
        "Contribution to study resource pack creation on SSC General Maths (the subject Shikho started with).",
        "Contribution to overall plans and discussions as per the necessity for a 'probable' emerging startup.",
      ],
    ),
    ShovonExperience(
      title: "Lead Generator",
      isRemote: true,
      startMonth: "November",
      startYear: 2018,
      company: "The Data Incubator (Acquired by Pragmatic Institute)",
      endMonth: "August",
      endYear: 2020,
      responsibilities: [
        "Generated high-quality leads through online research.",
        "Utilized LinkedIn to bring better insights about the leads.",
        "Empowered Python programming knowledge by automating my boring daily repetitive part of the tasks.",
      ],
    ),
  ];
  static const List<String> keyCompetencies = [
    "Automation",
    "AI Integration",
    "Python",
    "API",
    "SaaS",
    "Hybrid Mobile Apps",
    "Team Leadership",
    "Strategic Planning",
    "Cloud Platforms",
    "Team Player",
  ];
  static List<ShovonEducation> educations = [
    ShovonEducation(
      institution: 'University of Dhaka',
      course: 'BSC in Applied Mathematics',
      endingYear: 2019,
      specialAchievements: [
        "Special Program: Scholarship on Actuarial Science Offered by MetLife",
      ],
    ),
    ShovonEducation(
      institution: 'Chittagong Cantonment Public College',
      course: 'Higher Secondary Certificate',
      endingYear: 2013,
    ),
  ];
}

abstract class ShovonSocial {
  static const String linkedinUser = '7shovon7';
  static const String linkedinUrl = 'https://linkedin.com/in/$linkedinUser';
  static const String githubUser = '7shovon7';
  static const String githubUrl = 'https://github.com/$githubUser';
  static const String stackoverflowUser = 'users/16277807';
  static const String stackoverflowUrl =
      'https://stackoverflow.com/$stackoverflowUser';
}

class ShovonExperience {
  final String title;
  final String? company;
  final String startMonth;
  final int startYear;
  final String? endMonth;
  final int? endYear;
  final bool isCurrent;
  final bool isPartTime;
  final bool isRemote;
  final List<String> responsibilities;

  ShovonExperience({
    required this.title,
    this.company,
    required this.startMonth,
    required this.startYear,
    this.endMonth,
    this.endYear,
    this.isPartTime = false,
    this.isRemote = false,
    this.responsibilities = const [],
  }) : isCurrent = isCurrentJob(endMonth, endYear);

  static bool isCurrentJob(String? month, int? year) {
    if (year != null && month != null) return false;
    return true;
  }
}

class ShovonEducation {
  final String institution;
  final String course;
  final int endingYear;
  final List<String> specialAchievements;

  ShovonEducation({
    required this.institution,
    required this.course,
    required this.endingYear,
    this.specialAchievements = const [],
  });
}
