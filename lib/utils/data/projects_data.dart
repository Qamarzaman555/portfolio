import '../../features/model/project_model.dart';

class ProjectsData {
  static final List<Project> projectList = [
    Project(
      'Dosemate Application',
      'Introducing "Dosemate" – a medicine reminder app! Developed during my internship with Coderscave e-learning platform, this Flutter-based app combines the power of Firebase with Stacked state management and MVVM architecture for seamless user experience.With Dosemate, users can effortlessly manage their medicine reminders. Simply log in to store your profile data and set reminders for your medications. Customize reminders by specifying date, time, dosage, and type of medicine. Plus, track your medication intake with ease – mark them as taken or pending.',
      'https://github.com/Qamarzaman555/dosemate',
    ),
    Project(
      'SnapSell, an E-Commerce app',
      'SnapSell is a dynamic Flutter e-commerce app designed with GetX state management and Firebase as the backend. It offers a modern UI/UX with versatile product handling, wishlist, and multi-authentication options. With dynamic theming, animated onboarding screens, and a comprehensive commerce flow, SnapSell ensures a seamless shopping experience. The app\'s feature-first folder structure and reusable widgets enhance code organization and collaboration.',
      'https://github.com/Qamarzaman555/snapsell-eCommerce_app_Getx',
    ),
    Project(
        'Notes Application',
        'A Notes application, a Flutter Android project, that seamlessly adds, removes, updates, and deletes notes, showcasing efficient CRUD operations with Firestore as the backend. It features a sleek and responsive design optimized for various devices, ensuring a smooth user experience. The app leverages Firebase Core, Firebase Auth, Firebase Database, and Cloud Firestore to provide robust real-time data synchronization and secure authentication. ',
        'https://github.com/Qamarzaman555/notes_app'),
    Project(
        'Weather Application',
        'The Weather Application is a Flutter Android app that fetches weather details of various cities from a REST API and presents them in a beautifully designed UI. The app is built using the Flutter Stacked architecture and follows the MVVM pattern to ensure clean and maintainable code. This project demonstrates my proficiency in integrating APIs and developing visually appealing interfaces while adhering to best practices in software architecture.',
        'https://github.com/Qamarzaman555/weather_app_stacked_mvvm'),
  ];
}
