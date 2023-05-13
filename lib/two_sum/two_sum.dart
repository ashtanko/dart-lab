abstract class TwoSum {
  List<int> perform(List<int> nums, int target);
}

class TwoSumBruteForce extends TwoSum {
  @override
  List<int> perform(List<int> nums, int target) {
    // it indicates the whole length of the list
    var n = nums.length;

    // for loop for tracking the first value
    for (var i = 0; i < n - 1; i++) {
      // for loop for keep tracking the second value inside the list
      for (var j = i + 1; j < n; j++) {
        // condition that dictates the first of any value inside the list and
        // second inside the list should be equal to target
        if (nums[i] + nums[j] == target) {
          // then we return the list of first value and second
          return [i, j];
        }
      }
    }

    return [];
  }
}

class TwoSumMap extends TwoSum {
  @override
  List<int> perform(List<int> nums, int target) {
    // Map to keep an eye on the close range, simply correlation
    final correspondence = <int, int>{};

    // loop through the entire list values
    for (var i = 0; i < nums.length; i++) {
      // saving value inside a variable
      final value = nums[i];

      // we are getting key in a very tricky way like target value which
      // we will enter and than we will subtract the single value
      //that we got from looping from the list.
      //
      final key = target - value;
      if (correspondence.containsKey(key)) {
        // than we will return if int of the map and the second int
        // which shows the position in a list which two value will result the
        // target value
        return [correspondence[key]!, i];
      }
      // here we defining that our key will i the digit inside of our list
      // if we don't do  this than it will return the value of the list which is
      // inside the list
      correspondence[value] = i;

      // Remember = correspondence[key] is Our key , correspondence[value] is
      // our value
    }

    return [];
  }
}
