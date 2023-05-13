import 'package:dart_lab/binary_search/binary_search.dart';
import 'package:test/test.dart';

void main() {
  group('binary search iterative', () {
    test('when array is empty', () {
      final nums = <int>[];
      final target = 0;
      final actual = binarySearch(nums, target);
      expect(actual, -1);
    });

    test('when array is not empty', () {
      final nums = <int>[-1, 0, 3, 5, 9, 12];
      final target = 9;
      final actual = binarySearch(nums, target);
      expect(actual, 4);
    });
  });

  group('binary search recursive', () {
    test('when array is empty', () {
      final nums = <int>[];
      final target = 0;
      final actual = binarySearchRecursive(nums, target, 0, nums.length - 1);
      expect(actual, -1);
    });

    test('when array is not empty', () {
      final nums = <int>[-1, 0, 3, 5, 9, 12];
      final target = 9;
      final actual = binarySearchRecursive(nums, target, 0, nums.length - 1);
      expect(actual, 4);
    });
  });
}
