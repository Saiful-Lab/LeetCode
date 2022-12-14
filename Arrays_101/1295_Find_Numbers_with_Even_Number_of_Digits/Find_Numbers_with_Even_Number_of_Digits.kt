class Solution {
    fun findNumbers(nums: IntArray): Int {
        var evenNumberDigit = 0
        for(num in nums) {
            var digitCount = 0
            var digit = num
            while(digit > 0) {
                digit /= 10
                digitCount++
            }
            if(digitCount % 2 == 0)
                evenNumberDigit++
        }
        return evenNumberDigit
    }
}