import 'Account.dart';

class OldAccount extends Account {
  OldAccount(super.user, super._password, super._balance);

  void removeacc() {
    print("You deleted this account");
  }
}
