import 'OrdinaryEmployee.dart';
import 'Manger.dart';
import 'Supervisor.dart';

abstract class Employee {
  //attributes

  String? user;
  int? _id;
  int? _password;

  // setter & getter
  set id(int id) {
    if (id.toString().length > 14) {
      this._id = id;
    } else
      print("Infalid id");
  }

  int? getid() {
    return _id;
  }

  set password(int password) {
    if (password.toString().length > 8) {
      this._password = password;
    } else
      print("incomplete password");
  }

  int? getpassword() {
    return _password;
  }

  //constructor
  Employee(String user, int id, int password) {
    this.user = user;
    this._id = id;
    this._password = password;
  }

  //methods

  void welcome() {
    print("Hello $user your id is $_id ");
  }
}
