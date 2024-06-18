
# 4. Median of Two Sorted Arrays

# Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

# The overall run time complexity should be O(log (m+n)).


class Solution:
    def findMedianSortedArrays(self, nums1: list[int], nums2: list[int]) -> float:
        
        finalArray = nums1 + nums2
        finalArray.sort()

        n = len(finalArray) 
        
        # Check if the length of the final array is odd
        if n % 2 != 0:
            # Return the middle element
            return finalArray[n // 2]
        else:
            # Return the average of the two middle elements
            mid1 = finalArray[(n // 2) - 1]
            mid2 = finalArray[n // 2]
            return (mid1 + mid2) / 2