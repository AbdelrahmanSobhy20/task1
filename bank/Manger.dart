import 'Employee.dart';

class Manger extends Employee {
  Manger(super.user, super.id, super.password);
  void bigboss() {
    welcome();
    print("now, you have all access to bank");
  }
}
