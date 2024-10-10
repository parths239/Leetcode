class Solution:
    def containsNearbyDuplicate(self, nums: List[int], k: int) -> bool:
        #created an empty dictionary
        hash_nums = {}

        #checked if there are duplicates by making a set and comparing the length
        if len(set(nums)) < len(nums):
            #created hash table or set 
            for i in range(len(nums)):
                hash_nums[i] = nums[i]
            
            # ran a nested for loop to check if we can find such pair
            for i in range(len(hash_nums)):
                for j in range(i+1,len(hash_nums)):
                    if (hash_nums[i] == hash_nums[j]) and abs(i - j) <= k:
                        return True
        
        return False
                

        

            