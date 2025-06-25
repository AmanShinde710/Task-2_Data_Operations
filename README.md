This task demonstrates basic SQL operations — creating tables, inserting data, handling nulls, updating records, and deleting records — using a **Student-Course-Enrollment** schema.

## 🛠 Tools Used

- SQL (Structure Query Language)
- SQLiteStudio
- GitHub (portfolio)

🧱 Schema Design

### 🧍‍♂️ Students Table
| Field      | Type         |
|------------|--------------|
| StudentID  | INT          |
| Name       | VARCHAR(100) |
| Email      | VARCHAR(150) |
| Age        | INT          |
| Gender     | VARCHAR(5)   |
| City       | VARCHAR(50)  |

### 📚 Courses Table
| Field      | Type         |
|------------|--------------|
| CourseID   | INT          |
| CourseName | VARCHAR(50)  |
| Credits    | INT          |

### 📋 Enrollments Table
| Field        | Type         |
|--------------|--------------|
| EnrollmentID | INT          |
| StudentID    | INT          |
| CourseID     | INT          |
| EnrollDate   | DATE         |
| Grade        | STRING       |
