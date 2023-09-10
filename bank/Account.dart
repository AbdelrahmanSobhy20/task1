abstract class Account {
  //attributes

  String? user;
  int? _balance;
  int? _password;

  // setter & getter
  set balance(int balnce) {
    this._balance = balnce;
  }

  int? getbalance() {
    return _balance;
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
  Account(String user, int password, int balance) {
    this.user = user;
    this._balance = balance;
    this._password = password;
  }

  //methods

  void welcome() {
    print("Hello $user your balance is $_balance");
  }

  void benefits(int benefit) {
    _balance = (_balance! * benefit) + _balance!;
    print("Your benefit is $benefit and the total balance is $_balance");
  }

  void withdraw(int withdraw) {
    if (_balance! >= withdraw)
      _balance = _balance! - withdraw;
    else
      print("Your balance is not enough. Try again!!");
  }
}
