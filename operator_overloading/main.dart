import 'coin_stack.dart';

void main() {
  CoinStack coin_1 = CoinStack([1, 2, 5, 8]);
  CoinStack coin_2 = CoinStack([8, 5, 2, 1]);
  CoinStack coin_3 = CoinStack([9, 4, 7, 3]);
  CoinStack coin_4 = CoinStack([6, 11, 0, 12]);
  CoinStack coin_5 = CoinStack([6, 6]);
  CoinStack coin_6 = CoinStack([12]);
  CoinStack coin_7 = CoinStack([1, 2]);
  CoinStack coin_8 = CoinStack([1, 1]);

  print(coin_1 > coin_2);
  print(coin_1 - coin_2);
  print(coin_1 + coin_2);
  print(coin_1.sum);
  print(coin_2.sum);

  print(coin_4 - coin_3);
  print(coin_4 >= coin_3);
  print(coin_5 == coin_6);

  print(coin_7 < coin_1);
  print(coin_5 <= coin_6);
  print(coin_1 - CoinStack([2, 8]));
  print(coin_7 - coin_8);
  print(coin_1);
}
