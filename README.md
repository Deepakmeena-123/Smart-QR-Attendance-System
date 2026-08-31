# 📚 QR-Based Student Attendance System

A comprehensive Django-based **Student Management and Attendance System** featuring automated QR-code attendance, geolocation verification, time-restricted attendance tokens, and dedicated portals for **Admins, Staff, and Students**.

---

## 🌍 Live Demo

🚀 **[Open QR-Based Student Attendance System](https://smart-qr-attendance-system-az9y.onrender.com)**

> The application is deployed on Render. The live demo may take a few moments to wake up if the service is inactive.

---

## ✨ Key Features

### 👥 User Roles & Portals

#### 🔐 Admin / HOD Portal
- Manage staff members
- Manage students
- Manage courses
- Manage subjects
- Manage academic sessions
- Manage subject allocations
- View overall attendance
- View student results
- Manage system data

#### 👨‍🏫 Staff Portal
- View assigned subjects
- View student lists
- Manage student results
- Generate dynamic QR codes
- Start attendance sessions
- Monitor attendance
- Verify student location
- Manage attendance records

#### 👨‍🎓 Student Portal
- View personal dashboard
- View examination results
- Track personal attendance
- Scan QR codes for attendance
- Securely check in to classes
- Location-based attendance verification
- View academic information
- View attendance history

---

## 📍 Advanced QR Attendance System

### 🔳 Dynamic QR Code Generation
- A unique QR code is generated for each class session.
- Students scan the QR code using their device.
- Attendance is linked to the active classroom session.

### 📍 Geolocation Verification
The system verifies the student's physical location before accepting attendance.

- Student location is captured during attendance.
- Teacher/classroom location is used as the reference point.
- Distance between the student and teacher is calculated.
- Attendance is accepted only when the student is within the allowed radius.

### ⏱️ Time-Restricted Attendance Tokens
- QR codes expire automatically after the configured time.
- Students cannot use an old QR code for a later class.
- Attendance is restricted to the active session.

### 🛡️ Fraud Prevention
- Location accuracy validation
- Distance-based verification
- Time-restricted QR tokens
- Session-based attendance validation
- Prevention of attendance through expired QR codes

---

## 📚 Academic Management

- Academic Sessions
- Courses
- Subjects
- Student records
- Staff records
- Subject allocations
- Examination results
- Attendance records

---

## 🛠️ Technology Stack

### Backend
- Python 3.13
- Django 4.2

### Database
- PostgreSQL for production
- SQLite for local development
- `psycopg`
- `dj-database-url`

### Frontend
- HTML
- CSS
- Bootstrap 4
- AdminLTE
- JavaScript
- Chart.js

### QR, Geolocation & Media
- `qrcode`
- Geopy
- OpenCV
- Pillow
- Geolocation APIs

### Deployment
- Render
- Gunicorn
- Whitenoise
- `render.yaml`
- `Procfile`
- `build.sh`

---

## ⚙️ Installation & Setup

### 1. Clone the Repository

```bash
git clone <repository-url>
cd my_pr_project
```

### 2. Create a Virtual Environment

#### Windows

```bash
python -m venv venv
venv\Scripts\activate
```

#### Linux / macOS

```bash
python -m venv venv
source venv/bin/activate
```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

### 4. Configure Environment Variables

Create a `.env` file if your project requires environment variables.

Example:

```env
SECRET_KEY=your-secret-key
DEBUG=True
DATABASE_URL=your-database-url
```

> ⚠️ Never commit `.env` files, database passwords, API keys, or other private credentials to GitHub.

### 5. Run Database Migrations

```bash
python manage.py makemigrations
python manage.py migrate
```

### 6. Create Superuser

```bash
python manage.py createsuperuser
```

Follow the prompts to enter the username, email, and password.

### 7. Start the Development Server

```bash
python manage.py runserver
```

Open:

```text
http://127.0.0.1:8000
```

---

## 🌐 Production Deployment — Render

This project is pre-configured for deployment on **Render**.

### 🚀 Live Application

**[Open QR-Based Student Attendance System](https://my-pr-project.onrender.com)**

### Deployment Configuration

The project includes:

- `render.yaml`
- `Procfile`
- `build.sh`
- Gunicorn
- Whitenoise
- PostgreSQL support
- `dj-database-url`

### Production Database

Production deployment uses PostgreSQL through the configured database URL.

The application uses:

```text
dj-database-url
```

to connect Django with the production database.

### Build Process

The `build.sh` script is used to:

1. Install dependencies
2. Collect static files
3. Run database migrations
4. Prepare the application for deployment

---

## 📂 Project Structure

```text
my_pr_project/
│
├── student_management_app/
│   ├── migrations/
│   ├── templates/
│   ├── static/
│   ├── views/
│   ├── models.py
│   ├── urls.py
│   └── ...
│
├── student_management_system/
│   ├── settings.py
│   ├── urls.py
│   ├── wsgi.py
│   └── ...
│
├── static/
│   ├── css/
│   ├── js/
│   ├── fonts/
│   └── vendor/
│
├── templates/
│
├── manage.py
├── requirements.txt
├── Procfile
├── render.yaml
├── build.sh
├── .gitignore
└── README.md
```

---

## 🔄 System Workflow

```text
                ┌───────────────────┐
                │     Admin / HOD   │
                └─────────┬─────────┘
                          │
                 Manage Academic Data
                          │
                          ▼
                ┌───────────────────┐
                │   Academic Data   │
                └─────────┬─────────┘
                          │
              ┌───────────┴───────────┐
              │                       │
              ▼                       ▼
       ┌──────────────┐       ┌──────────────┐
       │    Staff     │       │   Students   │
       └──────┬───────┘       └──────┬───────┘
              │                       │
       Generate QR              Scan QR
              │                       │
              └──────────┬────────────┘
                         │
                         ▼
                ┌───────────────────┐
                │ Attendance Check  │
                ├───────────────────┤
                │ QR Token           │
                │ Time Validation    │
                │ Location Check     │
                │ Distance Check     │
                └─────────┬─────────┘
                          │
                          ▼
                ┌───────────────────┐
                │ Attendance Saved  │
                └───────────────────┘
```

---

## 🔐 Security Features

The application includes several mechanisms to make attendance more secure:

- Session-based QR codes
- Expiring attendance tokens
- Geolocation verification
- Distance-based validation
- Location accuracy checking
- Role-based access
- Authentication
- Protected dashboards
- Server-side attendance validation

---

## 📊 Dashboard & Reports

### 🔐 Admin / HOD
- Overall attendance
- Student information
- Staff information
- Courses
- Subjects
- Results

### 👨‍🏫 Staff
- Assigned subjects
- Student lists
- Attendance sessions
- QR generation
- Results management

### 👨‍🎓 Student
- Personal attendance
- Results
- Academic information
- Attendance history

---

## 🎯 Project Objectives

- Reduce manual attendance work.
- Make attendance faster and easier.
- Prevent attendance through expired QR codes.
- Verify the physical location of students.
- Provide dedicated portals for different user roles.
- Centralize student and academic information.
- Provide a scalable web-based attendance solution.

---

## 🚀 Future Improvements

- Mobile application
- Push notifications
- Attendance analytics
- Email notifications
- Advanced anti-spoofing mechanisms
- Face recognition integration
- Automated attendance reports
- Parent/guardian portal
- Real-time attendance monitoring
- Export attendance reports to PDF/Excel

---

## 📸 Screenshots

Add screenshots of the main interfaces here when available.

### Admin Dashboard

![Admin Dashboard](screenshots/admin-dashboard.png)

### Staff Dashboard

![Staff Dashboard](screenshots/staff-dashboard.png)

### Student Dashboard

![Student Dashboard](screenshots/student-dashboard.png)

### QR Attendance

![QR Attendance](screenshots/qr-attendance.png)

---

## 🤝 Contributing

Contributions, suggestions, and improvements are welcome.

### 1. Fork the Repository

Fork this repository on GitHub.

### 2. Create a New Branch

```bash
git checkout -b feature/new-feature
```

### 3. Make Your Changes

Implement your changes and test them locally.

### 4. Commit Your Changes

```bash
git add .
git commit -m "Add new feature"
```

### 5. Push the Branch

```bash
git push origin feature/new-feature
```

### 6. Open a Pull Request

Open a Pull Request on GitHub describing your changes.

---

## ⭐ Support the Project

If you find this project useful or interesting, please consider giving it a ⭐ on GitHub.

**⭐ Star this repository if you like the project!**

**🍴 Fork it and build something with it!**

---

## 👨‍💻 Author

### Deepak Meena

**B.Tech Computer Science & Engineering**

Interested in:

- Software Development
- Full-Stack Development
- Backend Development
- Web Technologies
- Data Structures & Algorithms

### Connect With Me

- **GitHub:** [Deepak Meena](https://github.com/Deepakmeena-123)
- **LinkedIn:** [Connect with me on LinkedIn](https://www.linkedin.com/in/deepak-meena-a28848372/)

---

## 📄 License

This project is open-source and free to use for academic and educational purposes.

---

## ⭐ If You Like This Project

If you found this project useful or interesting:

⭐ **Star the repository**

🍴 **Fork the repository**

🐛 **Report issues**

💡 **Suggest improvements**

Thank you for checking out the **QR-Based Student Attendance System!** 🚀
