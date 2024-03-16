import 'dart:io';

// Interface definition
abstract class Animal {
  void makeSound();
}

// Base class
class LivingAnimal {
  void bark() {
    print('Barking...');
  }
}

// Class implementing an interface and overriding a method
class Wolf extends LivingAnimal implements Animal {
  @override
  void makeSound() {
    print('Gwuuu! Gwuuu! Gwuuu!');
  }
  
  // Method to demonstrate loop
  void barkMultipleTimes(int count) {
    for (int i = 0; i < count; i++) {
      makeSound();
    }
  }
}

void main() {
  // Creating an instance of Dog class
  Wolf dog = Wolf();

  // Using inherited method
  dog.bark();

  // Using overridden method
  dog.makeSound();

  // Using method demonstrating loop
  print('Barking multiple times:');
  dog.barkMultipleTimes(3);
}