import 'Account.dart';
import 'Employee.dart';
import 'dart:io';

class Bank {
  List<Account> Accounts = [];
  List<Employee> Employees = [];
  List<String> typeoflogin = [
    "Ordinary Employee",
    "Account",
    "Manager",
    "Supervisor"
  ];

// methods
  void addAccount(Account news) {
    Accounts.add(news);
    news.welcome();
  }

  void deleteAccount(Account remove) {
    Accounts.remove(remove);
    remove.welcome();
  }

  /*if (You == "Ordinary Employee") {
      ordinaryEmployee();
    } else if (You == "Supervisor") {
      Supervisor();
    } else if (You == "Manager") {
      bigboss();
    }*/
}
