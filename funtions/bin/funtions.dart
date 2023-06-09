void main() {
  sum();
  sum1(3, 5);
  print(sumReturn(10, 20));
  sumReq(a: 2, b: 6);
  // sumFunction(20, 25, sum1);
  sumFunction(20, 25, (int a) {
    print('A=$a');
  }, printB);
  sumAfterFuture();
  print('after Future');
}

void printA(int a) {
  print('A=$a');
}

void printB(int b) {
  print('B=$b');
}

void sum() {
  print(2 + 3);
}

void sum1(int a, int b) {
  print('${a + b}');
}

int sumReturn(int a, int b) {
  return a + b;
}

Future<int> sumFuture(int a, int b) async {
  await Future.delayed(Duration(seconds: 3));
  print('sum Future ${a + b}');
  return a + b;
}

Future<void> sumAfterFuture() async {
  await sumFuture(33, 44);
  print('in just sum');
}

void sumReq({required int a, required int b, int c = 0}) {
  print(a + b + c);
}

void sumFunction(
    int a, int b, void Function(int) printA, void Function(int) printB) {
  printA(a);
  printB(b);
}
