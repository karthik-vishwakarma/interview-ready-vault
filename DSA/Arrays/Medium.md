# Arrays: Medium Level

### Q1: Group Anagrams

**Problem:** Given an array of strings `strs`, group the anagrams together. You can return the answer in any order.

**Approach:** Use a `HashMap<String, List<String>>`. For each string, sort the characters alphabetically to create a "
key". If two strings are anagrams, their sorted versions will be identical.

**Java Implementation:**

```java
import java.util.*;

public class Solution {
    public List<List<String>> groupAnagrams(String[] strs) {
        if (strs == null || strs.length == 0) return new ArrayList<>();

        Map<String, List<String>> map = new HashMap<>();
        for (String s : strs) {
            char[] ca = s.toCharArray();
            Arrays.sort(ca);
            String key = String.valueOf(ca);

            if (!map.containsKey(key)) {
                map.put(key, new ArrayList<>());
            }
            map.get(key).add(s);
        }
        return new ArrayList<>(map.values());
    }
}
```

**Complexity Analysis:**

* **Time Complexity:** $O(N \cdot K \log K)$ where $N$ is the number of strings and $K$ is the length of the longest
  string.
* **Space Complexity:** $O(N \cdot K)$ to store the results in the map.