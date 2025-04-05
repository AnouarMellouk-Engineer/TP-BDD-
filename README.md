# TP-BDD-
# 🧮 Mathematics Olympiad - Tournament Management (SQL Project)

## 📚 Description

This project is a relational database developed to manage the **National Mathematics Olympiad Tournament** in Algeria. It is designed to organize data about student participants, schools, events, and their results.

## 🎯 Objectives

- Learn and practice SQL
- Design and manipulate relational databases
- Write and execute queries for data analysis

## 🗂️ Database Structure

The database includes the following entities:

- **Tournament**: `(idTournoi, name, year)`
- **Wilaya**: `(idWilaya, name)`
- **High School (Lycee)**: `(idLycee, name, idWilaya)`
- **Student (Eleve)**: `(idEleve, name, surname, birth_date, email, level, specialty, idLycee)`
- **Exam (Epreuve)**: `(idEpreuve, type, exam_date, idTournoi)`
- **Score**: `(idEleve, idEpreuve, points)`

### Integrity Constraints
- Primary keys
- Foreign keys
- Domain constraints (e.g., level, specialty, exam type)

## 🧪 Sample Data

The `.sql` files in this project include sample data for all tables:

- 4 tournament editions
- 10 wilayas (regions)
- 11 high schools
- 11 students
- 9 exams (3 per edition)
- Scores of students for each exam

## 📌 SQL Queries

The project also includes several queries to extract and analyze data, such as:

1. List of participants in the 2024 edition
2. Participant rankings based on average scores
3. Identify the winner of the 2024 edition
4. Top 3 high schools
5. Students with an average > 80
6. Wilaya with the most participants
7. Average scores per wilaya
8. Average scores by level and specialty
9. Delete tournaments with no participants
10. Update exam dates for the 2024 tournament

## 🛠️ Tools Used

- **MySQL**
- Tool: *MySQL Workbench*
