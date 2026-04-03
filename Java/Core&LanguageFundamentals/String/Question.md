1. What is the meaning of Immutable in the context of String class in
   Java?
2. Why a String object is considered immutable in java?
3. How many objects does following code create?
4. How many ways are there in Java to create a String object?
5. How many objects does following code create?
6. What is String interning?
7. Why Java uses String literal concept?
8. What is the basic difference between a String and StringBuffer
   object?
9. How will you create an immutable class in Java?
10. What is the use of toString() method in java ?
11. Arrange the three classes String, StringBuffer and StringBuilder in
    the order of efficiency for String processing operations?
12. Diff between or how many objects are created when
    ```java
    String s=new String("Shiv");
    String s1= "Shiv";
    String s2= "Shiv";
    ```
13. Concept of interning? Output of below program
    ```java
    String s1 = "Java";
    String s2 = "Java";
    String s3 = new String("Java");
    String s4 = s3.intern();
    System.out.println(s1 == s2);
    System.out.println(s1 == s3);
    System.out.println(s1 == s4);
    ```
14. Output of below:
    ```java
    String s = "Hello";
    s.concat("World");
    System.out.println(s);
    ```
15. How many objects
    ```java
    String s1 = "abc";
    String s2 = new String("abc");
    String s3 = s2.toUpperCase();
    ```