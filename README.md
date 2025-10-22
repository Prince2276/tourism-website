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

## ⚙️ Installation & Setup  

Follow these steps to run the project locally:

1️⃣ **Clone the repository**  
   ```bash
   git clone https://github.com/Prince2276/tourism-website.git
   cd tourism-website

2️⃣ Import into Eclipse

In Eclipse: File → Import → Existing Projects into Workspace

Select the cloned tourism-website folder

Ensure it builds without errors

3️⃣ Create and configure MySQL database

Create a database (e.g., tourism_db)

CREATE DATABASE tourism_db;


Import any provided SQL schema or create tables for destinations, packages, enquiries, etc.

Update your database connection configuration (JDBC URL, username, password) in your DAO/config file.

4️⃣ Configure server runtime

In Eclipse: Right-click project → Properties → Targeted Runtimes → select your installed Apache Tomcat server

Deploy the project (e.g., via Run on Server)

5️⃣ Access the application

Open a browser and navigate to:
http://localhost:8080/tourism-website

Replace port/context path as configured in your workspace.

🗣️ Usage

Explore the landing page to view destinations and packages.

Click on a travel package to view details (description, cost, destination).

Use the “Contact” or “Enquiry” form to submit your travel interest.

(If implemented) Admin can log in to add or update packages and destination information.

Check the MySQL database to view enquiries and package data.

📋 Future Enhancements

Here are some ideas to improve or extend the project:

User authentication (login / registration) for travellers and admin.

Full booking flow (select package, book, payment integration).

Admin dashboard with analytics (popular destinations, enquiry stats).

Image upload for destinations/packages and dynamic gallery.

Mobile-first UI or move to a front-end framework (React, Angular, Vue).

Deploy it to a cloud hosting platform (AWS, Heroku, Azure) with CI/CD.

👨‍💻 Author

Prince Burnwal
📧 princeburnwal20@gmail.com

🌐 github.com/Prince2276
