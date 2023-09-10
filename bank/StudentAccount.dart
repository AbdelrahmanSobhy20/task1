import 'Account.dart';

class StudentAccount extends Account {
  StudentAccount(super.user, super._password, super._balance);

  @override
  void welcome() {
    // TODO: implement welcome
    super.welcome();
    print("You can get only 2,000 per day");
  }
}
