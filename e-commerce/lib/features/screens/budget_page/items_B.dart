class Items {
  final String month;
  final String moneyIn;
  final String moneyOut;
  final String balance;

  Items({
    required this.month,
    required this.moneyIn,
    required this.moneyOut,
    required this.balance,
  });
}

List<Items> budget = [
  Items(
    month: 'Sept 2021',
    balance: '2,000',
    moneyIn: '30,000',
    moneyOut: '28,000',
  ),
  Items(
    month: 'Aug 2021',
    balance: '46,540',
    moneyIn: '370,000',
    moneyOut: '323,450',
  ),
  Items(
    month: 'jul 2021',
    balance: '21,000',
    moneyIn: '55,000',
    moneyOut: '34,000',
  ),
  Items(
    month: 'june 2021',
    balance: '7,000',
    moneyIn: '60,000',
    moneyOut: '53,000',
  ),
];
