## 217. CONTAINS DUPLICATE
class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:

        # using sets because its easy to find from it
        # so i run a loop and put everything in set if it's not in there already
        hashSet_nums = set()
        for x in nums:
            if x in hashSet_nums:
                return True
            else:
                hashSet_nums.add(x)
        return False