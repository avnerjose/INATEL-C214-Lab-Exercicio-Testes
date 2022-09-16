import 'dart:math';

class Account {
  final int _number;
  double _balance;

  Account()
      : _balance = 0,
        _number = Random().nextInt(1000);

  int getNumber() => _number;

  double getBalance() => _balance;

  void deposit(double value) {
    if (value < 0) {
      throw Exception("Valor deve ser positivo");
    }

    _balance += value;
  }

  void withdraw(double value) {
    if (value < 0) {
      throw Exception("Valor deve ser positivo");
    } else if (value > _balance) {
      throw Exception("Saldo insuficiente");
    }

    _balance -= value;
  }
}
