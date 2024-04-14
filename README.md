# Lake Ridge Community Hospital Database Design

## Table of Contents
- [Case Overview](#case-overview)
- [Project Requirements](#project-requirements)
- [Specific Tasks and Challenges](#specific-tasks-and-challenges)
- [Formal Introduction to Database Design](#formal-introduction-to-database-design)
  - [Introduction](#introduction)
  - [Mission Statement](#mission-statement)
- [Project Deliverables](#project-deliverables)
  - [Functional & Non-functional Requirements](#functional--non-functional-requirements)
  - [Contextual and Level 1 Data-Flow Diagrams](#contextual-and-level-1-data-flow-diagrams)
  - [3NF Normalized Relational Schema](#3nf-normalized-relational-schema)
  - [Entity Relationship Diagram](#entity-relationship-diagram)
  - [Data Dictionary](#data-dictionary)
  - [SQL CREATE Scripts](#sql-create-scripts)
  - [SQL INSERT Scripts with Example Data](#sql-insert-scripts-with-example-data)
  - [SQL SELECT – Examples of Data Usage](#sql-select--examples-of-data-usage)

---

## Case Overview
- **Objective:** Develop a database design for LRCH.
- **Setting:** Lake Ridge Community Hospital, a not-for-profit short-term stay general hospital in Oshawa.
- **Issues Identified:** Current information systems are batch-oriented and have several deficiencies, such as lack of support for medical staff, paper-based treatment prescriptions, and inflexibility in data updating and management.

## Project Requirements
1. **Group Work:** A team of 4 students collaboratedd.
2. **Requirements Determination:** Engage in activities to fully define the problem. This includes interviewing the Professor (as a stakeholder simulation) and utilizing MS Teams for discussions and openness.
3. **Deliverables:**
   - Develop a formal report containing database design recommendations.
   - Create a development database using SQL Server with sample data.
   - Design SQL queries for various functionalities like Room Utilization, Physician-Patient Details, etc.
   - Considerations for views and stored procedures.
4. **Timelines & Due Dates:** Specific deliverables are due across different weeks, including draft introductions, mission statements, diagrams, SQL scripts, and presentations.

## Specific Tasks and Challenges
- **Data Handling:** Addressing patient record management, billing, and revenue reporting issues.
- **Design Elements:** Creating patient and physician displays and various reports (e.g., Daily Revenue Report, Room Utilization Report).
- **Database Development:** Including tables, relationships, and test data for patients, appointments, treatments, physicians, cost centres, etc.

## Formal Introduction to Database Design

### Introduction
Effective information management is crucial for delivering top-tier patient care in the evolving healthcare sector. Our team is tasked on an essential project with Lake Ridge Community Hospital (LRCH) to overhaul its information systems. LRCH currently grapples with outdated batch-oriented processes and reliance on paper-based prescriptions which pushes them to looking for a transformative database solution.

Implementing a successful data management (database) solution will not only improve the technical functionalities of LRCH, but it will have cascading impacts that will extend towards reduced technical errors, increased security and performance of information systems, and investment in future-proof infrastructure that will be able to handle future patient information with minimal conflict.

Our project focuses on comprehensive database design, introducing efficiency, accuracy, and accessibility to LRCH's data landscape. Through in-depth analysis and strategic planning, we aim to address existing deficiencies, streamline workflows, and pave the way for a modernized and agile information infrastructure.

### Mission Statement
Our mission is to revolutionize healthcare data management at Lake Ridge Community Hospital (LRCH). We share a profound purpose with LRCH—to enhance patient care through modernized information systems. This project aligns with LRCH's commitment to progressive, patient-centric healthcare.

With dedication, we aim to swiftly empower LRCH with an efficient database solution, ensuring rapid access to critical patient data. Our approach is meticulous and designed to excel in healthcare delivery.

This mission statement serves LRCH's leadership, medical staff, and stakeholders, pledging to benefit all organizational groups. It bridges the gap between traditional systems and the future of healthcare, supported by a well-thought-out plan. Our project uniquely aligns with LRCH's operations, providing immeasurable value by enhancing efficiency and patient care.


