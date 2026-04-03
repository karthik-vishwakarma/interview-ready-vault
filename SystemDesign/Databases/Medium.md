# Databases & Storage: Medium Level

### Q1: What is Database Sharding and when should you use it?
**Answer:** Sharding is horizontal partitioning. You should use it when:
1. A single database node cannot handle the write throughput.
2. The dataset is too large to fit on a single storage unit.
3. Network bandwidth of a single node is a bottleneck.

### Q2: What is Replication and how does it improve availability?
**Answer:** Replication is the process of storing the same data on multiple nodes.
* **Availability:** If the primary node fails, a replica can be promoted to primary, ensuring the system stays online.
* **Read Scalability:** Read requests can be distributed across multiple replicas.

### Q3: What is Eventual Consistency and where is it acceptable?
**Answer:** Eventual consistency guarantees that if no new updates are made to a data item, eventually all accesses to that item will return the last updated value.
* **Acceptable Use Cases:** Social media "Likes," view counts on YouTube, or profile picture updates where immediate global consistency isn't mission-critical.

---
[⬅️ Back to Databases Index](./README.md)