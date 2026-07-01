// Day 4 — Methods
// Covers: void methods, return types, parameters, calling methods
public class Methods {
    public static void main(String[] args) {

        // method is a block of reusable code that is executed when called ()

        String name = "Bro";
        int hover = 25;

        double result = cube(3);
        System.out.println(result);

        String fullName =  getFullName("Sponge", "Javars");
        System.out.println(fullName);

        int age = 12;

        if(ageCheck(age)){
            System.out.println("You are old enough");
        }
        else{
            System.out.println("You are not old enough");
        }
    }
    static void happyBirthday(String name, int age){
        System.out.println("Happy Birthday to you!");
        System.out.printf("Happy Birthday dead you %s!\n", name);
        System.out.printf("You are %d years old!\n", age);
        System.out.println("Happy Birthday to you!\n");
    }

    static double square(double number){
        return number * number;
    }
    static double cube(double number){
        return number * number * number;
    }
    static String getFullName(String first, String last){
        return first + " " + last;
    }
    static boolean ageCheck(int age){
        return age >= 18;
    }
}
