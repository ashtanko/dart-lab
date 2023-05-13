int binarySearch(List<int> nums, int target) {
  var low = 0;
  var high = nums.length - 1;
  while (low <= high) {
    var mid = (low + (high - low) / 2).ceil();
    if (nums[mid] == target) {
      return mid;
    } else if (nums[mid] < target) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }

  return -1;
}

int binarySearchRecursive(List<int> nums, int target, int low, int high) {
  if (high >= low) {
    var mid = (low + (high - low) / 2).ceil();
    if (nums[mid] == target) {
      return mid;
    } else if (nums[mid] > target) {
      return binarySearchRecursive(nums, target, low, mid - 1);
    } else {
      return binarySearchRecursive(nums, target, mid - 1, high);
    }
  }

  return -1;
}
