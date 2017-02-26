package com.example;

public class Test {

    public static void main(String[] args) {
        if (args.length > 0) {
            System.out.println("Printing arguments:");
            for (int i = 0; i < args.length; ++i) {
                System.out.printf("  %02d. %s\n", i + 1, args[i]);
            }
            System.out.println("Done!");
        } else {
            System.out.println("No arguments given...");
        }
    }

}
