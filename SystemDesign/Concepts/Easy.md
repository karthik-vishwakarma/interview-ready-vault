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

### Q4: What is a Message Queue and when should you use asynchronous communication?

**Answer:** A Message Queue is a form of asynchronous service-to-service communication used in serverless and
microservices architectures.

* **When to use:** Use it for time-consuming tasks (e.g., image processing), to decouple services, and to smooth out
  traffic spikes (load leveling).
* **Benefits:** Improved system reliability and scalability.

### Q5: What are Idempotent APIs and why are they important?

**Answer:** An idempotent API is one where multiple identical requests have the same effect as a single request.

* **Importance:** In distributed systems, network failures lead to retries. Without idempotency, a retry on a "
  Pay $10" request could result in a $20 charge.

### Q6: What is Backpressure and how do you handle it?

**Answer:** Backpressure occurs when a data producer outpaces a data consumer, leading to buffer overflows.

* **Handling:**
    1. **Drop:** Discard new messages.
    2. **Buffer:** Queue messages (until memory runs out).
    3. **Control:** The consumer signals the producer to slow down.

### Q7: What is Observability and how do you design for monitoring?

**Answer:** Observability is the ability to measure the internal state of a system by examining its outputs.

* **The Three Pillars:**
    1. **Metrics:** Aggregated data (CPU, Latency).
    2. **Logging:** Detailed events (Errors, User actions).
    3. **Tracing:** Path of a request across microservices.

### Q8: What is Distributed Locking and when is it required?

**Answer:** A mechanism to ensure that only one process in a distributed system can access a shared resource at a time.

* **Requirement:** Essential for preventing race conditions in tasks like scheduled jobs or inventory updates across
  multiple server instances.

### Q9: How would you design a System for High Availability (HA)?

**Answer:** HA is achieved by removing single points of failure.

* **Redundancy:** Multi-AZ (Availability Zone) deployments.
* **Failover:** Health checks and automatic leader election (Zookeeper/Etcd).
* **Replication:** Keep data synchronized across nodes.

---
[⬅️ Back to System Design Index](README.md)