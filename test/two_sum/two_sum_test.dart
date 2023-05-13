import 'package:dart_lab/two_sum/two_sum.dart';
import 'package:test/test.dart';

class _TestCase {
  _TestCase(
    this.nums,
    this.target,
    this.expected,
  );

  final List<int> nums;
  final int target;
  final List<int> expected;
}

class _TestStrategy {
  _TestStrategy(
    this.strategy,
    this.strategyName,
  );

  final TwoSum strategy;
  final String strategyName;
}

void main() {
  final testCases = [
    _TestCase([2, 7, 11, 15], 9, [0, 1]),
    _TestCase([3, 2, 4], 6, [1, 2]),
    _TestCase([3, 3], 6, [0, 1]),
  ];

  final strategies = <_TestStrategy>[
    _TestStrategy(
      TwoSumBruteForce(),
      'two sum brute force',
    ),
    _TestStrategy(
      TwoSumMap(),
      'two sum map',
    )
  ];

  for (final strategy in strategies) {
    for (final tc in testCases) {
      _performTest(
        strategy.strategy,
        '${strategy.strategyName} nums: ${tc.nums} target: ${tc.target}',
        tc.nums,
        tc.target,
        tc.expected,
      );
    }
  }
}

void _performTest(
  TwoSum strategy,
  String strategyName,
  List<int> nums,
  int target,
  List<int> expected,
) {
  test(strategyName, () {
    final actual = strategy.perform(nums, target);
    expect(actual, expected);
  });
}
