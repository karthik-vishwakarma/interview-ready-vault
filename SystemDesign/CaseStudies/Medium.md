# Case Studies: Medium Level

### Q1: How would you design a Search Autocomplete system?

**Answer:**

1. **Data Structure:** Use a **Trie (Prefix Tree)** to store strings.
2. **Optimization:** Store the "top k" most searched terms at each Trie node to avoid full traversals.
3. **Scaling:** Use a MapReduce job to update the Trie daily/weekly based on search logs.

### Q2: How would you design a Scalable Leaderboard (e.g., Gaming)?

**Answer:**

1. **Tech Stack:** **Redis Sorted Sets (ZSET)** are perfect for this.
2. **Logic:** `ZADD` to update scores and `ZRANGE` to get the top players in $O(\log N)$ time.
3. **Partitioning:** For millions of users, shard the ZSET by game ID or region.

### Q3: How would you design a Real-time Collaborative Editor (Google Docs)?

**Answer:** 1. **Conflict Resolution:** **Operational Transformation (OT)** or **Conflict-free Replicated Data Types (
CRDTs)**.

2. **Communication:** WebSockets for real-time state synchronization.
3. **Storage:** Use a specialized database like a Time-series or Log-structured storage to track every character change.

### Q4: How would you approach designing a system when requirements are ambiguous?

**Answer:**

1. **Clarify:** Ask about DAU (Daily Active Users), Read/Write ratio, and Data Retention.
2. **Define Scope:** Determine "Must-have" vs "Nice-to-have" features.
3. **NFRs:** Define Non-Functional Requirements (Latency vs Consistency vs Availability).

**Code Block Example (Handling Ambiguity):**

```text
Interview Question: "Design a News Feed."
My Clarification: 
- Is it global or local?
- What is the expected RPS (Requests Per Second)?
- Do we support media (video/images) or just text?
```

---
[⬅️ Back to Case Studies Index](./README.md) | [Home 🏠](../../README.md)