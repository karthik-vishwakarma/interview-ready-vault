# Foundational Concepts: Easy Level

### Q1: What is High-Level Design (HLD) and how is it different from Low-Level Design (LLD)?

**Answer:** * **HLD (Macro Design):** Focuses on the overall architecture, system components (Load Balancers, Databases,
Services), and how they interact. it defines the "Blue Print" and data flow.

* **LLD (Micro Design):** Focuses on the detailed implementation of components, including class diagrams, method
  signatures, database schemas, and specific algorithms.

### Q2: What is Load Balancing and what are common strategies?

**Answer:** Load balancing is the process of distributing network traffic across multiple servers to ensure no single
server bears too much demand.

* **Round Robin:** Sequential distribution.
* **Least Connections:** Sends traffic to the server with the fewest active sessions.
* **IP Hash:** Uses the client's IP to determine which server receives the request (good for session persistence).

### Q3: What is the CAP Theorem?

**Answer 1:** CAP states that in a distributed system, you can only provide two of the following three guarantees during
a network partition:

1. **Consistency:** Every read receives the most recent write.
2. **Availability:** Every request receives a response (not guaranteed to be the latest).
3. **Partition Tolerance:** The system continues to operate despite network failures between nodes.

**Answer 2:** CAP stands for **Consistency**, **Availability**, and **Partition Tolerance**. The theorem states that in
a distributed system, you can only guarantee two out of the three during a network partition.

1. **CP (Consistency/Partition):** Ensures all nodes see the same data, but some may be unavailable during a split.
2. **AP (Availability/Partition):** The system remains functional, but some nodes might return stale data.

---
[⬅️ Back to System Design Index](README.md)