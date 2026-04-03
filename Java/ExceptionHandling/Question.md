1. What is the base class for Error and Exception classes in Java?
2. What is a finally block in Java? Output of following
    ```java
    public class FinallyTest {
        public static int testMethod() {
            try {
                System.out.println("In try block");
                return 10;
            } catch (Exception e) {
                System.out.println("In catch block");
                return 20;
            } finally {
                System.out.println("In finally block");
                return 30;
            }
        }
        
        public static void main(String[] args) {
            System.out.println("Result: " + testMethod());
        }
    }    
    ```
3. In Java, what are the differences between a Checked and
   Unchecked? Examples? How would you handle these?
4. Can we create a finally block without creating a catch block? In what
   scenarios, a finally block will not be executed?
5. What is the concept of Exception Propagation?Example by code?
6. When we override a method in a Child class, can we throw an
   additional Exception that is not thrown by the Parent class method?
7. Try with resource? Any changes done in it recently? When to use?