# Task User Directory 📱

A Flutter application built using **MVVM architecture** that fetches user data from a public API and displays it in a structured and user-friendly interface.
This project was developed during my internship to practice clean architecture, API integration, and state management in Flutter.

---

## 🚀 Project Overview

The application fetches user data from:

https://jsonplaceholder.typicode.com/users

It displays users in a list format and allows navigation to a detailed screen showing complete user information including address and company details.

---

## 🏗️ Architecture

This project follows **MVVM (Model-View-ViewModel)** architecture.

### 📂 Project Structure

lib/
│
├── model/
│   └── user_model.dart
│
├── services/
│   └── api_service.dart
│
├── viewmodels/
│   └── user_viewmodel.dart
│
├── views/
│   ├── splash_view.dart
│   ├── user_list_view.dart
│   └── user_detail_view.dart
│
├── routes/
│   └── app_router.dart
│
└── main.dart

---

## 🛠️ Tech Stack

- Flutter
- Dart
- Provider (ChangeNotifier)
- Dio (API calls)
- go_router (Navigation)
- Material Design

---

## 📱 Features

- Splash Screen
- Fetch data from REST API using Dio
- Proper MVVM architecture
- State management using Provider
- Loading indicator while fetching data
- Error handling mechanism
- User list screen
- Detailed user information screen
- Clean and responsive UI design

---

## 🔄 App Flow

1. Splash Screen appears
2. API call is made to fetch user data
3. Users are displayed in a ListView
4. On tapping a user, navigation occurs using go_router
5. Detail screen shows:
   - Basic Information
   - Address details
   - Company details

---

## 📸 Screenshots

1. Splash Screen
<img width="502" height="876" alt="image" src="https://github.com/user-attachments/assets/9dee42f8-2607-4a3b-8ffd-42b51a5ea04d" />

2 User List Screen
<img width="502" height="876" alt="image" src="https://github.com/user-attachments/assets/d5cd016b-10af-4450-a847-53ad6fe9f00f" />

3. User Detail Screen

---

## 📦 Installation

1. Clone the repository:
git clone https://github.com/yashp-nimblechapps/Task_User_Directory.git

2. Navigate to the project directory:
cd Task_User_Directory

3. Install dependencies:
flutter pub get

4. Run the application:
flutter run

---

📚  Key Learnings

- Implementing MVVM architecture in Flutter
- Structuring scalable Flutter projects
- API integration using Dio
- Managing application state using Provider
- Handling loading and error states
- Navigation using go_router
- Clean UI structuring with reusable widgets

---

👨‍💻 Author
Developed as part of my internship learning journey.



