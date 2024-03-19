public class Foo {
  public static void main(String[] args) {
    System.out.println("Hello world");

    System.out.println("user.dir = " + System.getProperty("user.dir"));
    System.out.println("java.library.path = " + System.getProperty("java.library.path"));

    System.loadLibrary("awt");

    System.out.println("Goodbye");
  }
}
