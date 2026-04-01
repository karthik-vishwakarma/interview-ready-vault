# Multithreading: Easy Level

### Q1: What is the difference between `synchronized` block and `synchronized` method?
**Answer:** A synchronized method locks the entire object (or class if static), while a synchronized block allows you to lock a specific object or "critical section" of the code. Blocks are generally preferred as they reduce the scope of the lock, improving performance.

**Code Example:**
```java
// Synchronized Block
public void add(int value) {
    synchronized(this) {
        this.count += value;
    }
}
```

### Q2: How does the `volatile` keyword work in Java?
**Answer**: The volatile keyword ensures that the value of a variable is always read from and written to the main memory, rather than being cached in a CPU thread cache. This guarantees visibility across threads.

[⬅️ Back to Multithreading Index](./README.md) | [Next Level: Medium ➡️](./Medium.md)