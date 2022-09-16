import 'package:ex_tests/account.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Account class", () {
    test("account should start with balance zero", () {
      final account = Account();

      expect(account.getBalance(), 0);
    });

    test("should be able to deposit", () {
      final account = Account();
      const double value = 10;

      account.deposit(value);

      expect(account.getBalance(), value);
    });

    test("should not be able to deposit negative value", () {
      final account = Account();

      expect(() => account.deposit(-1), throwsA(isA<Exception>()));
    });

    test("should be able to withdraw", () {
      final account = Account();

      account.deposit(10);
      account.withdraw(3);

      expect(account.getBalance(), 7);
    });

    test("should not be able to withdraw negative value", () {
      final account = Account();

      account.deposit(10);

      expect(() => account.withdraw(-1), throwsA(isA<Exception>()));
    });

    test("should not be able to withdraw if there is not enough balance", () {
      final account = Account();

      account.deposit(10);

      expect(() => account.withdraw(20), throwsA(isA<Exception>()));
    });
  });
}
