# System Design: Medium Level

### Q1: What is Consistent Hashing and why is it used?
**Answer:** Consistent Hashing is a technique used to distribute data across a cluster of nodes in a way that minimizes reshuffling when nodes are added or removed.
* **The Problem:** Standard hashing (`key % n`) requires moving almost all keys when `n` changes.
* **The Solution:** Keys and nodes are mapped to a logical "ring." When a node is removed, only the keys belonging to that specific node move to the next neighbor.

### Q2: Explain the CAP Theorem.
**Answer:** CAP stands for **Consistency**, **Availability**, and **Partition Tolerance**. The theorem states that in a distributed system, you can only guarantee two out of the three during a network partition.
1. **CP (Consistency/Partition):** Ensures all nodes see the same data, but some may be unavailable during a split.
2. **AP (Availability/Partition):** The system remains functional, but some nodes might return stale data.

### Q3: How does a Content Delivery Network (CDN) improve performance?
**Answer:** A CDN is a distributed network of proxy servers located geographically closer to the end-users. It caches static content (images, JS, CSS) at "Edge Locations," reducing latency and decreasing the load on the origin server.

**Comparison Table: Push vs. Pull CDN**
| Type | How it Works | Best For |
| :--- | :--- | :--- |
| **Pull CDN** | Content is grabbed from the server when the first user requests it. | High traffic, small static files. |
| **Push CDN** | You upload content to the CDN manually. | Large files, infrequently updated content. |

---
[⬅️ Back to Concepts Index](./README.md) | [Home 🏠](../../README.md)