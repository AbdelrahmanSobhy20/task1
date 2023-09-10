import 'Employee.dart';
import 'dart:io';

class OrdinaryEmployee extends Employee {
  List<String?> types = ["IT", "Cash", "VIP"];
  OrdinaryEmployee(super.user, super.id, super.password);
  void oe() {
    welcome();
    print("please choose your department");
    print(types);
    String X = stdin.readLineSync()!;
  }
}
