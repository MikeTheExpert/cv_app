//key object should be the same as hero tag. value should be full app description
Map<String, String> appDetails = {
  'shopKeeper': """ Inventory & File Management System – Workflow Overview

Objective:  
The system was designed to handle both inventory tracking and file management. It provides a versatile solution for applications that require not only text‑based data handling but also multimedia storage, ensuring efficient organization and accessibility.

Core Features:

Database Functions:  
Supports the full range of CRUD operations — retrieving, storing, updating, and deleting records — to manage inventory items effectively.

File Management:  
Extends beyond text data by supporting image file storage and retrieval. This makes the system adaptable for scenarios where documents or multimedia assets need to be linked to inventory records.

Inventory Organization:  
Ensures that items are systematically tracked, with associated documents and images easily accessible for reference or verification.

Technical Considerations:

Data Handling:  
Structured storage of inventory records and associated files ensures consistency and reliability.

Scalability:  
The system design allows for expansion to accommodate larger datasets or additional file types as requirements grow.

User Experience:  
Provides straightforward access to both inventory details and linked files, streamlining workflows for users managing complex datasets.

Innovation:  
By combining traditional inventory tracking with multimedia file management, the system offers a more comprehensive solution than text‑only databases. This integration enhances usability and makes the platform suitable for diverse applications, from retail stock management to digital archives.

Summary:  
The Inventory & File Management System demonstrates how database functionality can be extended to support multimedia assets. It delivers efficient organization, reliable CRUD operations, and easy access to both records and files, making it a robust and adaptable tool for modern data management needs.""",
  'triviaApp': """ Flutter Quiz & Learning App – Workflow Overview

Objective:  
The app was designed to test and educate users on Flutter basics and related terminologies. It serves as both a learning tool and an assessment platform, combining knowledge evaluation with reinforcement.

Core Features:

Quiz Engine:  
Presents questions focused on Flutter fundamentals and terminology, ensuring structured learning and assessment.

Countdown Clock:  
Implements timed assessments to simulate exam conditions and encourage quick recall, adding a layer of challenge.

Navigation Controls:  
Auto next and previous buttons streamline the quiz flow, reducing manual input and improving usability.

Result Display:  
After completion, results are shown with the user’s selected answers, the correct responses, and clear indications of incorrect answers. This feedback loop enhances learning by highlighting failure cases.

Technical Considerations:

State Management:  
Tracks user progress, selected answers, and the timer countdown to ensure smooth functionality.

UI/UX Design:  
Provides intuitive navigation between questions and clear result presentation, making the experience user‑friendly.

Data Handling:  
Quiz questions and answers can be stored locally or fetched dynamically, depending on scalability needs.

Error Handling:  
Feedback mechanisms for failed attempts reinforce correct knowledge and improve the educational value of the app.

Innovation:  
By combining timed quizzes with immediate feedback, the app not only evaluates knowledge but also reinforces learning. This dual approach makes it a practical tool for beginners exploring Flutter, offering both assessment and education in one platform.

Summary:  
The Flutter Quiz & Learning App demonstrates how interactive assessments can be integrated into mobile learning. It highlights key skills in state management, UI/UX design, and data handling, while delivering an innovative solution that supports both testing and teaching of Flutter basics. """,
  'cvApp': """ Mobile Portfolio App – Workflow Overview

Objective:  
The app was designed to showcase a developer’s expertise and introduce innovative approaches to job seeking. It emphasizes performance, scalability, and modern mobile development practices to deliver a responsive and engaging user experience.

Core Features & Architecture:

User Interface (UI/UX):  
A clean, interactive design optimized for mobile devices. The interface highlights projects, skills, and achievements in a visually appealing way.

Database Layer:  
Cloud Firestore or a similar NoSQL database stores portfolio content, project metadata, and user interactions. Real‑time updates ensure that changes are instantly reflected across devices.

File Management:  
Multimedia assets such as images are supported to enrich project showcases and provide recruiters with a more engaging experience.

Innovation Layer:  
Interactive elements like project demos, skill badges, and dynamic content feeds differentiate the app from traditional resumes, making it more immersive and memorable.

Scalability:  
A cloud‑based backend ensures seamless performance across devices and supports future expansion, such as networking features or recruiter dashboards.

Workflow:

Developer uploads portfolio content (projects, skills, media).

Data is stored in Firestore collections and synced in real time.

Users (recruiters, peers) browse, interact, and view detailed project showcases.

Learning Outcomes:  
This project demonstrates how to combine technical robustness with innovative presentation. Key skills include mobile UI/UX design, real‑time database integration, multimedia handling, and scalable architecture planning.

Summary:  
The Mobile Portfolio App provides a modern, mobile‑first solution for professional branding. By integrating cloud services, interactive features, and a responsive design, it offers a powerful alternative to traditional resumes. The result is a secure, scalable, and engaging platform that helps developers stand out in the job‑seeking community. """,
  'bloodDonor': """ Blood Donation Management App – Workflow Overview

Objective:  
The application was designed to manage a userbase that facilitates blood donation requests and approvals. Its primary goal is to provide a secure, scalable, and responsive platform for coordinating donations.

Development Process:

Authentication Layer:  
Firebase Authentication was integrated to handle secure user registration, login, and identity management. This ensures that only verified users can interact with the system, protecting sensitive data and maintaining trust.

Database Layer:  
Cloud Firestore, a NoSQL real‑time database, was used to store and manage donation requests. Firestore supports full CRUD operations (create, read, update, delete) with real‑time synchronization, allowing instant updates across devices. Each request record includes metadata such as requester details, blood type, status (pending or accepted), and timestamps.

Business Logic:  
The app’s logic manages workflows for creating requests, approving or accepting them, and updating their status. This ensures smooth coordination between donors and recipients, with clear tracking of request progress.

Real‑Time Synchronization:  
Firestore’s real‑time capabilities ensure that users immediately see updates when requests are created or accepted. This responsiveness is critical in time‑sensitive scenarios like blood donation.

System Architecture:

Authentication Layer: Manages user sessions and access control.

Database Layer: Firestore collections store user profiles and donation requests.

Business Logic: Handles request creation, acceptance workflows, and status updates.

Real‑Time Sync: Provides live updates across all connected devices.

Learning Outcomes:  
This project demonstrates how Firebase services can be leveraged to build secure, scalable, and efficient applications. Key skills include authentication management, real‑time database integration, CRUD operations, and designing workflows for sensitive, high‑impact use cases.

Summary:  
The Blood Donation Management App provides a secure and efficient platform for coordinating donations. By combining Firebase Authentication with Cloud Firestore, the app achieves strong scalability, minimal backend overhead, and real‑time responsiveness — making it a reliable solution for managing critical health‑related requests. """,
  'todoApp': """ Flutter Hive Local Database App – Workflow Overview

Objective:  
The purpose of this app was to demonstrate how to store, retrieve, edit, and delete simple text data locally using Hive in Flutter. Hive is a lightweight, fast, and efficient database solution that enables offline persistence without the need for complex setup.

Development Process:

Setup:  
The project began by adding the Hive and Hive Flutter dependencies. Hive was initialized in the main function to prepare the app for local storage operations.

Box Creation:  
A Hive box was opened to act as the storage container for text data. This box served as the central repository where all notes and entries were kept.

Data Storage:  
Text entries were saved into the box using key‑value pairs. Each entry was assigned a unique key, making it easy to store and organize multiple notes.

Data Retrieval:  
Stored values were accessed either by their specific key or by retrieving all values in the box. This allowed the app to display existing notes to the user.

Data Editing:  
Existing entries were updated by overwriting the value associated with a given key. This ensured that users could modify their notes without creating duplicates.

Data Deletion:  
Entries were removed either individually by deleting a specific key or collectively by clearing the entire box. This gave users full control over managing their stored data.

UI Integration:  
The stored text was displayed in Flutter widgets such as a ListView. Users could add new notes through text input fields and interact with buttons to save, edit, or delete entries. This created a simple but functional CRUD interface.

Data Flow:  
The workflow followed a straightforward path: User Input → Hive Box → Local Storage → Flutter UI. This ensured smooth interaction between the database layer and the user interface.

Learning Outcomes:  
Through this project, key concepts were reinforced — including local persistence, CRUD operations, lightweight database usage, and Flutter‑Hive integration. The app demonstrated how to build a responsive interface that interacts seamlessly with a local database.

Summary:  
This project showcases the complete cycle of local data management in Flutter using Hive. It highlights the ability to store, retrieve, edit, and delete text data efficiently, while maintaining a clean separation between storage logic and UI presentation. The result is a fast, offline‑capable app that demonstrates practical skills in Flutter database integration.
""",
  'apiRequest': """Flutter API Request App – Workflow Overview

Objective:  
The goal of this app was to demonstrate how to fetch bio-data from the RandomUser API, parse the JSON response, and display the data within a Flutter interface. This project highlights the full cycle of API integration in Flutter.

Development Process:

Setup:  
The project began by adding the necessary HTTP package to handle network requests. Essential Dart packages were imported to enable JSON decoding and asynchronous operations.

Model Creation:  
A User model was defined to represent the structure of the data returned by the API. This model included fields like name, email, and profile picture. A method was implemented to convert JSON data into a Dart object, ensuring seamless data handling.

API Service Layer:  
A dedicated function was created to send a GET request to the RandomUser API. Upon receiving a successful response, the JSON was decoded and mapped to the User model. This abstraction kept the networking logic separate from the UI.

UI Integration:  
The app used FutureBuilder to manage the asynchronous nature of the API call. The UI dynamically responded to different states — showing a loading indicator while waiting, an error message if something went wrong, or rendering the user’s bio-data once successfully fetched.

Data Flow:  
The data journey followed a clear path: API → JSON → Dart Model → Flutter UI. This structure ensured maintainability and clarity in how data moved through the app.

Learning Outcomes:  
Through this build, key Flutter concepts were reinforced — including HTTP request handling, JSON parsing, asynchronous state management, and clean UI binding. The separation of concerns between logic and presentation was a central theme.

Summary:  
This app effectively demonstrates how to integrate external APIs into a Flutter project. It showcases the ability to structure data, manage asynchronous operations, and present information in a user-friendly interface — all while maintaining clean and modular code architecture.""",
};
