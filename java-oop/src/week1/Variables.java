// Day 2 — Primitive types
// Covers: int, double, boolean, String, char
public class Variables {
    public static void main(String[] args) {

        // ❎ variable = A reusable container for a value.
        //                          A variable behaves as if it was the value it contains.

        // 🟥 Primitive = simple value stored directly in memory (stack)
        // 🟦 Reference = memory address (stack) that points to the (heap)

        // 🟥 Primitive vs 🟦 Reference
        //    ---------                      ---------
        //    int                           string
        //    double                    array
        //    char                        object
        //    boolean

        int age = 0;
        int year = 2026;

        double salary = 5.00;

        char gender = 'M';
        char grade = 'F';

        boolean isStudent = false;

        if(isStudent){
            System.out.println("Student is a student");
        }
        else{
            System.out.println("Student is not a student");
        }

        String name = "John";


        System.out.println("Age: " + age);
        System.out.print("The year is " + year);
    }
}
