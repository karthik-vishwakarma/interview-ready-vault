# Garbage Collection: Hard Level

### Q1: Describe the G1 Garbage Collector's "Humongous Objects" problem.
**Answer:** In the G1 collector, the heap is divided into regions. A "Humongous Object" is any object that exceeds **50% of a region's size**. These are allocated in special contiguous regions.
* **The Issue:** They can lead to premature Heap fragmentation and trigger frequent "Full GC" cycles if not managed, as they are traditionally only reclaimed during specific phases.

### Q2: How do you identify a Memory Leak in a Java application?
**Answer:** A memory leak usually manifests as a gradual increase in memory usage (a "sawtooth" pattern in monitoring tools).
* **Tools:** Use `jmap` to trigger a heap dump or `VisualVM`/`JProfiler`.
* **Identification:** Look for objects that are growing in count but are no longer logically reachable by the application business logic.

**Code Snippet (Analyzing with jcmd):**
```bash
# To get a histogram of the heap to see which objects occupy the most space
jcmd <pid> GC.class_histogram
```
[⬅️ Back to Garbage Collection Index](./README.md)