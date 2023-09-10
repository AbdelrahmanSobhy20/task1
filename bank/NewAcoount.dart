import 'Account.dart';

class NewAccount extends Account {
  NewAccount(super.user, super._password, super._balance);

  void addacc() {
    print("Now you have a new account");
  }
}
