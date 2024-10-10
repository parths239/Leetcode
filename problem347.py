
# THIS IS MY SOLUTION WHICH DIDN"T WORK LOL



# class Solution:
#     def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        
#         #Using hashmaps and using number from list as key 
#         # and number of times it is repeated as values.
#         # we would return the list with the k number of elements 
#         # with the ones that are repeated most frequently

#         hash_nums = {}

#         for x in nums:
#             if x in hash_nums:
#                 hash_nums[x] = hash_nums[x] + 1
#             else:
#                 hash_nums[x] = 1
        
#         k_list = []

#         #largest value in hashmap

#         lg_val = 0
#         new_k = k

#         for value in hash_nums.values():
#             if value > lg_val:  
#                 lg_val = value
        
#         for key,val in hash_nums.items():
#             if val == lg_val and new_k != 0:
#                 k_list.append(key)
#                 lg_val = lg_val - 1
#                 new_k = new_k - 1


#         # for x in hash_nums:
#         #         k_list.append(x)
        

#         # #for loop to made a new list to return 
#         # for x in hash_nums:
#         #     if hash_nums[x] >= k:
#         #         k_list.append(x)
        
#         return k_list


# this is from chart gpt

from typing import List
from collections import Counter
import heapq

class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        
        # Step 1: Count frequencies using a Counter (which is a subclass of dict)
        freq = Counter(nums)  # freq will store each number and its count
        
        # Step 2: Use heapq to get the k keys with the highest frequencies
        k_list = heapq.nlargest(k, freq.keys(), key=freq.get)
        
        return k_list
