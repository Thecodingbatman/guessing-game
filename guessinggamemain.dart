import 'dart:math';
import 'dart:io';
void main(){
    print("Welcome to the guessing game!");
    print("Try to guess the number between 1 and 20");
    print("You have 5 attempts to guess the number correctly");
     var random = Random();
     int numberToGuess = random.nextInt(20) + 1;
     int attempts = 5;
     bool guessedCorrectly = false;
     while (attempts > 0 && !guessedCorrectly) {
        print("Enter your guess:");
        int userGuess = int.parse(stdin.readLineSync()!.trim());
        if (userGuess == numberToGuess) {
            guessedCorrectly = true;
            print("Congratulations! You've guessed the number!");
            if (attempts == 5) {
                print("Amazing! You guessed it on your first try!");
            } else {
                print("You guessed it in ${5 - attempts + 1} attempts!");
            }
        } else if (userGuess > 20) {
            print("Please enter a number between 1 and 20.");
        } else if (userGuess < numberToGuess) {
            print("Too low! Try again.");
        } else {
            print("Too high! Try again.");
        }

        if (!guessedCorrectly) {
            attempts--;
            if (attempts == 0) {
                print("Sorry, you've run out of attempts. The number was $numberToGuess.");
            }
        }
    }
}