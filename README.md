# Tourism Website Project

A full-stack tourism management web application developed using Eclipse IDE.  
The website enables users to explore destinations, view travel packages, and submit contact enquiries — backed by a MySQL database for data persistence.

---

## Table of Contents

- [About the Project](#about-the-project)  
- [Features](#features)  
- [Technologies Used](#technologies-used)  
- [Project Structure](#project-structure)  
- [Installation & Setup](#installation--setup)  
- [Usage](#usage)  
- [Future Enhancements](#future-enhancements)  
- [Author](#author)  
- [License](#license)

---

## About the Project  
This project is a full-stack web application built using Eclipse IDE with front-end technologies (HTML, CSS, JavaScript) combined with Java servlets/JSP for the back-end, and MySQL for database.  
It allows users to browse tourist destinations, review travel packages, and book the tours. 
Also allow the admin to add, update, delete and view the tours and hotels, and check the bookings. 
Architected with a modular and responsive design to ensure a good user experience across devices.

---

## 🚀 Features
- Browse a curated list of destinations with key information.  
- View travel packages (package name, description, cost, destination).  
- Contact form for users to submit enquiries or requests.  
- Back-end logic to handle user requests and database operations.  
- MySQL integration for storing packages, destinations, enquiries.  
- Responsive UI design to support mobile and desktop viewing.  
- Built to be extendable for admin functionalities (add/update packages) in future.

---

## 🛠️ Technologies Used  
- **Front-end**: HTML5, CSS3, JavaScript  
- **Back-end**: Java (Servlets/JSP)  
- **Database**: MySQL  
- **IDE**: Eclipse  
- **Web Server / Runtime**: Apache Tomcat (or compatible)  
- **Version Control**: Git & GitHub

---

## 🗂️ Project Structure  
Here is a typical layout of the project:

tourism-website/
├── WebContent/ # web resources (HTML, CSS, JS, images)
│ ├── css/
│ ├── images/
│ ├── js/
│ └── WEB-INF/
│ └── web.xml
├── src/ # Java source code
│ └── com/yourpackage/
│ ├── servlets/
│ ├── dao/
│ └── models/
├── .gitignore
├── README.md
└── … (Eclipse / build config)

