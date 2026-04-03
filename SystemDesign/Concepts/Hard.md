# Foundational Concepts: Hard Level

### Q1: What are Read-Heavy vs. Write-Heavy workloads and how do you optimize for them?

**Answer:**

* **Read-Heavy (e.g., Twitter, Search):** Most users consume data rather than creating it.
* **Optimization:** Use aggressive Caching (Redis), Read Replicas (Database), and CDNs.
* **Write-Heavy (e.g., IoT Sensors, Logging):** High volume of incoming data points.
    * **Optimization:** Use Message Queues (Kafka) to buffer writes, LSM-tree based databases (Cassandra), and NoSQL for
      high-speed ingestion.

### Q2: How would you design a system to prevent Duplicate Requests?

**Answer:** This is essentially an **Idempotency** problem.

1. **Idempotency Key:** Client sends a unique UUID in the header (`X-Idempotency-Key`).
2. **Server Check:** The server stores this key in a fast storage (Redis) with a TTL.
3. **Validation:** If a second request arrives with the same key, the server returns the cached response instead of
   processing it again.

### Q3: How would you design a Scalable Authentication System?

**Answer:**

1. **Stateless Auth:** Use **JWT (JSON Web Tokens)** so the server doesn't need to store session state in a DB.
2. **Distributed Sessions:** If state is required, use a centralized Redis store to manage sessions across multiple
   nodes.
3. **SSO/OAuth2:** Offload identity management to providers like Auth0 or Okta for security at scale.

### Q4: How would you handle Millions of Concurrent Users?

**Answer:** This requires a multi-layered approach to prevent any single bottleneck:

1. **Horizontal Scaling:** Use an Auto-scaling Group (ASG) to add more application instances based on CPU/Memory
   metrics.
2. **Load Balancing:** Use a multi-tier LB strategy (DNS Round Robin -> Layer 4 LB -> Layer 7 Application LB).
3. **Connection Management:** Use WebSockets or HTTP/2 for persistent connections, and a high-performance reverse proxy
   like Nginx or HAProxy to handle SSL termination.
4. **Database Decoupling:** Offload reads to Replicas and use an asynchronous Write-Behind pattern to prevent DB
   locking.

### Q5: How would you design a Distributed Cache (Redis-like)?

**Answer:** A distributed cache must handle massive throughput across multiple nodes.

1. **Data Partitioning:** Use **Consistent Hashing** to map keys to specific cache nodes.
2. **Replication:** Use a Leader-Follower model to ensure high availability if a cache node fails.
3. **Eviction Policy:** Implement LRU (Least Recently Used) or LFU (Least Frequently Used) to manage memory.
4. **Consistency:** Choose between Write-Through (updates DB and cache simultaneously) or Write-Around (updates DB,
   invalidates cache).

Features:

* SET key value
* GET key
* TTL support
* Persistence

Tech stack:

* Java / Go / C++

Concepts demonstrated:

* Memory management
* Hashmaps
* Multithreading
* Storage internals

Hiring impact:*****
This separates average students from top engineers.

---
[⬅️ Back to Concepts Index](./README.md)