# 485. Max Consecutive Ones

- Problem: [https://leetcode.com](https://leetcode.com/problems/max-consecutive-ones)

```kotlin
class Solution {
    fun findMaxConsecutiveOnes(nums: IntArray): Int {
        var maxCount = 0
        var count = 0
        for(i in nums) {
            if(i == 1) {
                count++
                maxCount = maxOf(maxCount, count)
            } else {
                count = 0
            }
        }
        return maxCount
    }
}
```