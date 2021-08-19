class Account {
  String firstName;
  String lastName;
  num balance;
  double rewards;
  int trips;

  Account({
    required this.firstName,
    required this.lastName,
    required this.balance,
    required this.rewards,
    required this.trips,
  });

  factory Account.fromJson(dynamic parsedJson) {
    return Account(
      firstName: parsedJson['firstName'] as String,
      lastName: parsedJson['lastName'] as String,
      balance: parsedJson['balance'] as num,
      rewards: parsedJson['rewards'] as double,
      trips: parsedJson['trips'] as int,
    );
  }
}
