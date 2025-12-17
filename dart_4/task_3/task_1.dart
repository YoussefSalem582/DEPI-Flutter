// 1) (Encapsulation) : Write a class named BankAccount with one
// private property _balance. There is one getter balance to read
// the value of the property. There are methods deposit   (عادبا)and
// withdraw ( بحس) to update the value of the _balance.

//  Enter amount of deposite : 1000
// Balance after deposit: 1000

// Enter amount of withdraw : 500
// Balance after withdraw: 500

import 'dart:io';

class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && _balance >= amount) {
      _balance -= amount;
    }
  }
}

void main() {
  BankAccount account = BankAccount();

  stdout.write("Enter amount of deposite : ");
  double? depositAmount = double.tryParse(stdin.readLineSync() ?? "");
  if (depositAmount != null) {
    account.deposit(depositAmount);
    print("Balance after deposit: ${account.balance}");
  }

  stdout.write("\nEnter amount of withdraw : ");
  double? withdrawAmount = double.tryParse(stdin.readLineSync() ?? "");
  if (withdrawAmount != null) {
    account.withdraw(withdrawAmount);
    print("Balance after withdraw: ${account.balance}");
  }
}
