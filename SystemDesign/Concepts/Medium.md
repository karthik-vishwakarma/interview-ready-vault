# Foundational Concepts: Medium Level

### Q3: What is caching and where should you place cache in a distributed system?

**Answer:** Caching stores copies of data in high-speed storage (RAM) to reduce latency.

* **Client-side:** Browser or App cache.
* **CDN:** For static content at the edge.
* **Load Balancer:** To cache popular responses.
* **Application Level:** Local in-memory cache (Guava/Ehcache).
* **Distributed Cache:** External stores like Redis or Memcached.

### Q4: What is rate limiting and how would you implement it?

**Answer:** Rate limiting controls the rate of traffic sent or received by a network interface or service to prevent
abuse.

* **Algorithms:** Token Bucket, Leaky Bucket, Fixed Window Counter, Sliding Window Log.

**Configuration Example (Token Bucket Logic):**

```yaml
rate-limiter:
  replenishRate: 10
  burstCapacity: 20
```

### Q5: What is Consistent Hashing and why is it used?

**Answer:** Consistent Hashing is a technique used to distribute data across a cluster of nodes in a way that minimizes
reshuffling when nodes are added or removed.

* **The Problem:** Standard hashing (`key % n`) requires moving almost all keys when `n` changes.
* **The Solution:** Keys and nodes are mapped to a logical "ring." When a node is removed, only the keys belonging to
  that specific node move to the next neighbor.

### Q6: How does a Content Delivery Network (CDN) improve performance?

**Answer:** A CDN is a distributed network of proxy servers located geographically closer to the end-users. It caches
static content (images, JS, CSS) at "Edge Locations," reducing latency and decreasing the load on the origin server.

**Comparison Table: Push vs. Pull CDN**

| Type         | How it Works                                                        | Best For                                   |
|:-------------|:--------------------------------------------------------------------|:-------------------------------------------|
| **Pull CDN** | Content is grabbed from the server when the first user requests it. | High traffic, small static files.          |
| **Push CDN** | You upload content to the CDN manually.                             | Large files, infrequently updated content. |

### Q7: What is an API Gateway and why is it used in microservices?

**Answer:** An API Gateway is a server that acts as an API front-end, receiving API requests, enforcing throttling and
security policies, passing requests to the back-end service, and then passing the response back to the requester.

* **Benefits:** Centralizes authentication, rate limiting, request routing, and protocol translation (e.g., HTTP to
  gRPC).

### Q8: What is the Circuit Breaker pattern and why is it important?

**Answer:** In a distributed system, a service might fail or hang. A Circuit Breaker prevents a network or service
failure from cascading to other services.

* **States:**
    1. **Closed:** Requests pass through normally.
    2. **Open:** Requests fail immediately without hitting the sub-service.
    3. **Half-Open:** Allows a few requests to see if the sub-service has recovered.

### Q9: What is Service Discovery and how does it work?

**Answer:** In microservices, instances are dynamic (IPs change). Service Discovery is a mechanism where a service
registers itself with a **Service Registry** (like Eureka or Consul) so other services can find it.

### Q10: How would you design a Notification System?

**Answer:**

1. **Components:** Notification Service, Third-party Providers (Twilio, Firebase, SendGrid), and a Message
   Queue.

2. **Workflow:** The service receives a request, validates it, and pushes it to a queue (Kafka/RabbitMQ) to decouple the
   sending logic from the application. This ensures high availability and retries if a provider is down.

**Code Snippet (Simple Notification Interface):**

```java
public interface NotificationProvider {
    void send(User user, String message);
}
```

---
[⬅️ Back to Concepts Index](README.md) | [Home 🏠](../README.md)