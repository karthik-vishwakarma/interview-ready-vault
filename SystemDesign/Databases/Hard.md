# Databases & Storage: Hard Level

### Q1: What is database sharding and when should you use it?
**Answer:** Sharding is a horizontal partitioning technique where data is split across multiple database instances. Use it when a single machine's CPU, Memory, or I/O capacity is exhausted by the sheer volume of data or request throughput.

### Q2: What is the CAP theorem and how does it influence design decisions?
**Answer:** CAP states that in the event of a network partition (**P**), a system must choose between Consistency (**C**) and Availability (**A**).
* **CP Systems:** Prioritize data integrity (e.g., Banking). If a node fails, the system stops accepting writes.
* **AP Systems:** Prioritize uptime (e.g., Social Media). Nodes may return slightly stale data but remain online.

### Q3: What are the trade-offs between SQL and NoSQL in system design?
**Answer:**
* **SQL:** ACID compliance, structured data, complex joins. Best for relational data and transactions.
* **NoSQL:** Flexible schema, horizontal scaling (sharding), eventual consistency. Best for big data, real-time analytics, and rapidly evolving data models.

---
[⬅️ Back to Databases Index](./README.md)