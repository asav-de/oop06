class CoinStack {
  CoinStack(List<int> coins) : coinList = List.of(coins);

  final List<int> coinList;

  CoinStack operator +(CoinStack other) {
    return CoinStack(this.coinList + other.coinList);
  }

  CoinStack? operator -(CoinStack other) {
    List<int> coinListCopy = List.of(coinList);
    for (final coin in other.coinList) {
      if (!coinListCopy.remove(coin)) {
        return null;
      }
    }
    return CoinStack(coinListCopy);
  }

  bool operator >(CoinStack other) {
    return this.sum > other.sum;
  }

  bool operator <(CoinStack other) {
    return this.sum < other.sum;
  }

  bool operator >=(CoinStack other) {
    return this.sum >= other.sum;
  }

  bool operator <=(CoinStack other) {
    return this.sum <= other.sum;
  }

  @override
  bool operator ==(Object other) {
    if (other is CoinStack) {
      return this.sum == other.sum;
    }
    return false;
  }

  @override
  String toString() {
    return '$coinList (sum: $sum)';
  }

  @override
  int get hashCode => sum.hashCode;

  int get sum => this.coinList.fold(0, (sum, n) => sum + n);
}
