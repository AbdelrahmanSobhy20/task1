import "bank/Account.dart";
import 'bank/Manger.dart';
import 'bank/NewAcoount.dart';
import 'bank/OldAccount.dart';
import 'bank/OrdinaryEmployee.dart';
import 'bank/StudentAccount.dart';
import 'bank/Supervisor.dart';
import 'dart:io';

void main() {
  List<String> typeoflogin = ["Ordinary Employee", "Manager", "Supervisor"];

  List<String> typeofacconts = [
    "Old Account",
    "New Account",
    "Student Account"
  ];

  OldAccount a1 = OldAccount("Ahmed", 12345678, 1000);
  NewAccount a2 = NewAccount("Mahmoud", 87654321, 4500);
  StudentAccount a3 = StudentAccount("Fathy", 789654125, 9566);
  Manger e1 = Manger("Farid", 30001010002582, 69845875);
  Supervisor e2 = Supervisor("Ramy", 30123680753582, 741258963);
  OrdinaryEmployee e3 = OrdinaryEmployee("Mohamed", 32369874522582, 00223366);

  String? login1() {
    print("Choose from this list");
    print(typeoflogin);
    String You = stdin.readLineSync()!;
    if (You == "Manager") {
      e1.bigboss();
    } else if (You == "Ordinary Employee") {
      e3.oe();
    } else if (You == "Supervisor") {
      e2.supervisor();
    } else {
      print("Sorry!! Invalid Order.");
    }
  }

  String? login2() {
    print("Choose from this list");
    print(typeofacconts);
    String acc = stdin.readLineSync()!;
    if (acc == "Old Account") {
      a1.welcome();
      a1.benefits(3);
    } else if (acc == "New Account") {
      a2.welcome();
      a2.withdraw(1000);
    } else if (acc == "Student Account") {
      a3.welcome();
      a3.withdraw(2100);
    } else {
      print("Sorry!! Invalid Order.");
    }
  }

  print("Choose if you are Employee or Customer?!");
  String x = stdin.readLineSync()!;
  if (x == "Employee") {
    print(login1());
  } else if (x == "Customer") {
    print(login2());
  } else {
    print("Sorry!! Invalid Order.");
  }
}
