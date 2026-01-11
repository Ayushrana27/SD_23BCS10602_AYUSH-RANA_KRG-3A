# URL Shortener System – System Design Project

## 📘 Project Overview
This project focuses on the **design and analysis of a scalable URL Shortener System** that converts long URLs into short, unique URLs while ensuring **high availability, low latency, and scalability**.  
The system also supports advanced features such as **custom aliases, expiration dates, analytics, and user authentication**.

This project is developed as part of the **System Design (23CSH-314)** course.

---

## 👨‍🎓 Student Details
- **Name:** Ayush Rana  
- **UID:** 23BCS10602  
- **Branch:** Computer Science & Engineering  
- **Semester:** 6th  
- **Section/Group:** KRG 3-A  
- **Department:** Computer Science & Engineering  
- **Date of Performance:** 08/01/2026  

---

## 🎯 Aim
To design and analyze a **URL Shortener System** that:
- Converts long URLs into short, unique URLs  
- Ensures **high availability**, **scalability**, and **low latency**  
- Provides fast and reliable redirection  
- Supports optional features like **custom URLs**, **expiration**, and **authentication**

---

## 🎯 Objectives
- Design a collision-free URL shortening mechanism  
- Ensure scalability for handling **millions of users and billions of URLs**  
- Achieve low-latency redirection for better user experience  
- Support advanced features such as:
  - Custom aliases  
  - Link expiration  
  - Analytics  
- Implement secure **user authentication and access control**  

---

## 🛠 Tools & Technologies Used
- **Python** – Backend logic and URL generation  
- **Flask** – RESTful API development  
- **Draw.io** – High-Level Design (HLD) and Low-Level Design (LLD) diagrams  
- **Redis** – Fast in-memory caching and atomic counters  
- **Database (SQL/NoSQL)** – Persistent URL storage  

---

## ⚙️ System Requirements

### A. Functional Requirements
- Generate short URLs from long URLs  
- Support optional **custom short URLs**  
- Allow default and user-defined **expiration dates**  
- Redirect short URLs to original URLs  
- Provide REST APIs for:
  - URL creation  
  - URL redirection  
  - User registration and login  

### B. Non-Functional Requirements
- **Low Latency:** ≤ 200 ms for URL creation & redirection  
- **High Scalability:**  
  - 100M daily active users  
  - 1B shortened URLs  
- **High Availability:** 24×7 uptime  
- **Uniqueness:** No collision in short URLs  
- **Consistency Model:** Eventual Consistency preferred over strict consistency  

---

## 🏗 High Level Design (HLD)
The system follows a **Client–Server–Database architecture**:

1. Client sends request to generate or access a short URL  
2. Server handles business logic and URL generation  
3. Database stores mapping between short URLs and long URLs  
4. During redirection, server fetches the long URL and redirects the user  

---

## 🔍 Low Level Design (LLD)

### Approach 1: Encryption-Based
- Encrypt the long URL to generate a short URL  
- ❌ Not ideal due to variable length and reversibility issues  

### Approach 2: Counter-Based (Preferred)
- Use an **auto-increment counter**  
- Convert counter value to **Base62 encoding**  
- Produces compact, unique short URLs  

⚠️ **Issue:**  
A single counter can become a bottleneck at scale.

---

## 🚀 Scalability Solution
To handle large-scale traffic:

- **Horizontal scaling** of application servers  
- **Load Balancer** using Round Robin algorithm  
- **Redis** used for:
  - Centralized counter  
  - Atomic increments  
  - Fast access  
- **Database** stores final URL mappings  

This design ensures:
- High throughput  
- Fault tolerance  
- Low response time  

---

## 📚 Learning Outcomes
Through this project, I learned:

- How to design a **real-world scalable system**  
- REST API design principles  
- CAP theorem and **eventual consistency**  
- Different URL shortening strategies and trade-offs  
- Importance of caching and load balancing  
- How to design systems for **low latency and high availability**

---

## 📌 Conclusion
This project demonstrates the complete **system design lifecycle** of a URL Shortener, covering architecture, scalability, consistency, and performance considerations.  
It provides a strong foundation for designing large-scale distributed systems used in real-world applications like Bitly and TinyURL.

---
