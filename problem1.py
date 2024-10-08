'''
// 1. Two Sum

// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// You can return the answer in any order.

/*********************************************

#include <iostream>
#include <vector>
using namespace std class Solution
{
public:
  vector<int> twoSum(vector<int> &nums, int target)
  {

    for (int i = 0; i < nums.size(); i++)
    {
      for (int j = i + 1; j < nums.size(); j++)
      {
        if (nums[i] + nums[j] == target)
        {
          return {i, j};
        }
      }
    }
    return {};
  }
};

*/

'''

# this has hashmap

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        
        #created hashmap with list_value as key and list_index as value
        hash_twoSum = {}

        # in the loop if we find that a number at i also has an othervalue to make target
        for i in range(len(nums)):
            other_value = target - nums[i]
            if other_value in hash_twoSum:
                return [hash_twoSum[other_value], i]
            else:
                #if the no. has no complement we shore its index as value in dict
                 hash_twoSum[nums[i]] = i
        
        return []
    
       