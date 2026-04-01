# Multithreading: Hard Level


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

[⬅️ Back to Multithreading Index](./README.md)