import 'Employee.dart';
import 'dart:io';

class Supervisor extends Employee {
  Supervisor(super.user, super.id, super.password);
  List<String?> typesOfSupervisor = ["IT", "Cash", "VIP"];
  void supervisor() {
    welcome();
    print("please choose your department");
    print(typesOfSupervisor);
    String sp = stdin.readLineSync()!;
  }
}
